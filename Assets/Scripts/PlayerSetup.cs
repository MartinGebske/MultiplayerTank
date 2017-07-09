﻿using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using UnityEngine.Networking;

public class PlayerSetup : NetworkBehaviour {

	public Color m_playerColor;
	public string m_basename = "PLAYER";
	public int m_playerNum = 1;
	public Text m_playerNameText;


	public override void OnStartClient()
	{
		base.OnStartClient ();
		if (m_playerNameText != null) {
			m_playerNameText.enabled = false;
	
		}
	}

	public override void OnStartLocalPlayer()
	{
		base.OnStartLocalPlayer ();
		MeshRenderer[] meshes = GetComponentsInChildren<MeshRenderer> ();
		foreach (MeshRenderer rend in meshes) {
			rend.material.color = m_playerColor;
		}

		if (m_playerNameText != null) {
			m_playerNameText.enabled = true;
			m_playerNameText.text = m_basename + m_playerNum.ToString ();
		}


	}

}