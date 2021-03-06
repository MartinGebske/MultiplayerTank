﻿using UnityEngine;
using System.Collections;
using UnityEngine.Networking;

[RequireComponent(typeof(PlayerShoot))]
[RequireComponent(typeof(PlayerHealth))]
[RequireComponent(typeof(PlayerMotor))]
[RequireComponent(typeof(PlayerSetup))]
public class PlayerController : NetworkBehaviour {

	PlayerHealth m_pHealth;
	PlayerMotor m_pMotor;
	PlayerSetup m_pSetup;
	PlayerShoot m_pShoot;

    public GameObject m_spawnFX;


    Vector3 m_originalPosition;
    NetworkStartPosition[] m_spawnPoints;

	void Start () 
	{
		m_pHealth = GetComponent<PlayerHealth>();
		m_pMotor = GetComponent<PlayerMotor>();
		m_pSetup = GetComponent<PlayerSetup>();
		m_pShoot = GetComponent<PlayerShoot>();

        GameManager gm = GameManager.Instance;
	}

    public override void OnStartLocalPlayer()
    {
        m_spawnPoints = GameObject.FindObjectsOfType<NetworkStartPosition>();
        m_originalPosition = transform.position;
    }

    Vector3 GetInput()
	{
		float h = Input.GetAxis("Horizontal");
		float v = Input.GetAxis("Vertical");
		return new Vector3 (h, 0, v);
	}

	void FixedUpdate()
	{
		if (!isLocalPlayer || m_pHealth.m_isDead) {
			return;
		}
		Vector3 inputDirection = GetInput();
		m_pMotor.MovePlayer(inputDirection);
	}

	void Update()
	{

		if (!isLocalPlayer || m_pHealth.m_isDead) {
			return;
		}
		if (Input.GetMouseButtonDown (0)) {
			m_pShoot.Shoot ();
		}
		Vector3 inputDirection = GetInput();
		if (inputDirection.sqrMagnitude > 0.25f)
		{
			m_pMotor.RotateChassis(inputDirection);
		}
		Vector3 turretDir = Utility.GetWorldPointFromScreenPoint (Input.mousePosition, m_pMotor.m_turret.position.y) - m_pMotor.m_turret.position;
		m_pMotor.RotateTurret (turretDir);
	}

    void Disable()
    {
        Debug.Log("We have died");
        StartCoroutine("RespawnRoutine");
    }

    IEnumerator RespawnRoutine()
    {
        transform.position = GetRandomSpawnPosition() ;
        m_pMotor.m_rigidbody.velocity = Vector3.zero;
        yield return new WaitForSeconds(3f);
        m_pHealth.ResetTank();

        if (m_spawnFX != null) {
            GameObject spawnFX = Instantiate(m_spawnFX, transform.position + Vector3.up * 0.5f, Quaternion.identity) as GameObject;
            Destroy(spawnFX, 3f);
        }
    }

    Vector3 GetRandomSpawnPosition()
    {
        if (m_spawnPoints != null) {
            NetworkStartPosition startPos = m_spawnPoints[Random.Range(0, m_spawnPoints.Length)];
            return startPos.transform.position;
        }
        return m_originalPosition;
    }
}




