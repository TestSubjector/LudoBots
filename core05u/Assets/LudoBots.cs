using UnityEngine;
using System.Collections;

public class LudoBots : MonoBehaviour {

	GameObject[] robotParts;

	void CreateBody(int index, float x, float y, float z, float length, float height, float width) {

		Vector3 position = new Vector3 (x, y, z);
		Vector3 size = new Vector3 (length, height, width);

		robotParts [index] = GameObject.CreatePrimitive (PrimitiveType.Cube);
		robotParts [index].transform.position = position;
		robotParts [index].transform.localScale = size;
		Rigidbody targetRigidbody = robotParts[index].GetComponent<Rigidbody> ();

		//additional code to color the part however you wish, or name the part something like "robot body" so that it can be better identified in the inspector, etc.

	}

	// Use this for initialization
	void Start () {
		for (int i = 0; i < 9; i++)
		{
			Instantiate (robotParts [i]);
		}

		CreateBody(0, 0, 1, 0, 1, .2f, 1);
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
