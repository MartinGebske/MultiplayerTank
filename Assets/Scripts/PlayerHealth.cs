using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using UnityEngine.Networking;

public class PlayerHealth : NetworkBehaviour {

    public float m_maxHealth = 3f;

    public GameObject m_deathPrefab;

    [SyncVar]
    public bool m_isDead = false;
    public RectTransform m_healthBar;

    [SyncVar(hook ="UpdateHealthBar")]
    float m_currentHealth;



	// Use this for initialization
	void Start () {
        ResetTank();
	}

    void UpdateHealthBar(float value)
    {
        if (m_healthBar != null) {
            m_healthBar.sizeDelta = new Vector2(value / m_maxHealth * 150f, m_healthBar.sizeDelta.y);
        }
    }

    public void Damage(float damage)
    {
        if (!isServer) {
            return;
        }

        m_currentHealth -= damage;


        if (m_currentHealth <= 0 && !m_isDead) {
            m_isDead = true;
            RpcDie();
        }
    }
    [ClientRpc]
    public void RpcDie()
    {
        if (m_deathPrefab != null) {
            GameObject deathFX = Instantiate(m_deathPrefab, transform.position + Vector3.up * 0.5f, Quaternion.identity) as GameObject;
            GameObject.Destroy(deathFX, 3f);
        }

        SetActiveState(false);

        gameObject.SendMessage("Disable");
    }

    void SetActiveState(bool state)
    {
        foreach (Collider c  in GetComponentsInChildren<Collider>())
        {
            c.enabled = state;
        }

        foreach (Canvas c in GetComponentsInChildren<Canvas>()) {
            c.enabled = state;
        }

        foreach (Renderer r in GetComponentsInChildren<Renderer>())
        {
            r.enabled = state;
        }
    }

    public void ResetTank()
    {
        m_currentHealth = m_maxHealth;
        SetActiveState(true);
        m_isDead = false;
    }
}
