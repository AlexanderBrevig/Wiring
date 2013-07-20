/**
 * HelloHashMap
 * by BREVIG http://alexanderbrevig.com
 * 
 * Demonstrate the usage of a HashMap
 * This HashMap will pair a char* string to an integer
 *
 * NB: Do not use this library for large datastructures 
 *     as the contents are often copied (each retrieval)
 */

#include <HashMap.h>

HashMap<const char*, int> hashMap;

const char* newKey = "newKey";
const char* otherKey = "otherKey";
const char* lastKey = "lastKey";

void setup()
{
  //add and store keys and values
  hashMap.put(newKey, 12);
  hashMap.put(otherKey, 13);
  hashMap.put(lastKey,14);

  printHashMap();

  //change the value of newKey
  Serial.print("The old value of lastKey: ");
  Serial.println(hashMap.valueFor(lastKey));
  
  hashMap.put(lastKey, hashMap.valueFor(lastKey) + 1);
  
  Serial.print("The new value of lastKey: ");
  Serial.println(hashMap.valueFor(lastKey));

  Serial.print("The key for value 13: ");
  Serial.println(hashMap.keyFor(13));

  Serial.println("Remove otherKey from the hashMap");
  hashMap.remove(otherKey);

  printHashMap();
}

void loop() {}

void printHashMap() 
{
  Serial.println("\nPrint hash map: ");
  for (int i=0; i<hashMap.count(); i++) 
  {
    Serial.print("\t");
    Serial.print(i);
    Serial.print(") key: ");
    Serial.print(hashMap.keyAt(i));
    Serial.print(" with value: ");
    Serial.println(hashMap.valueAt(i));
  }
  Serial.println("");
}