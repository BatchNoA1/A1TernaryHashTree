package com.logic;

import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.List;

public class MerkleTreeTest extends Download  {

  // transaction List
  List<String> txList;
  // Merkle Root
  String root;
  
  
  public static void main(String [] args) {
	// MerkleTreeTest Tree =  new MerkleTreeTest();
	  
	    List<String> tempTxList = new ArrayList<String>();
	    tempTxList.add("b5a404ad33d1e2b4f6d13fb36fa5fd95");
	    tempTxList.add("d6d39fe23f4a0b4de52cdc3c574b2a3d");
	    tempTxList.add("cab73fa8828ab6485e428fe551f3a485");
	    tempTxList.add("a0f56696d977eb76ecc8ded2e04e30a0");
	    tempTxList.add("0cd98ca61b46fb33a4dadecd1d07cff1");
	    tempTxList.add("ac875644b07060968981ac9683f5bf48");
	    tempTxList.add("364730a9f7f2f4395a0a152afd788188");
	    tempTxList.add("53a016c0aa15a3233b06f4096aab1a46");
	    tempTxList.add("edfc8d2dd85f685d6d9d6492fce81c07");
	    tempTxList.add("ff796706594516c8bfc34b6562b0a629");
	    tempTxList.add("82c3e90e87a736109140011520355255");
	    tempTxList.add("0272a57159c2f7b26d176d036329c73a");
	    tempTxList.add("4c88fe3f6d4d9976e72982f508b777ec");
	    tempTxList.add("aa48084119e0760cf1838663a54c2344");
	    tempTxList.add("ccb579d79b8dea8d24a5a0dadd96e5a5");
	   
	    MerkleTreeTest merkleTrees = new MerkleTreeTest(tempTxList);
	    merkleTrees.merkle_tree();
	    System.out.println("root : " + merkleTrees.getRoot());
	  }
  
  /**
   * constructor
   * @param txList transaction List
   */
  public MerkleTreeTest(List<String> txList) {
    this.txList = txList;
    root = "";
  }
   
  /**
   * execute merkle_tree and set root.
   */
  public void merkle_tree() {
    
    List<String> tempTxList = new ArrayList<String>();
    
    for (int i = 0; i < this.txList.size(); i++) {
      tempTxList.add(this.txList.get(i));
    }
    
    List<String> newTxList = getNewTxList(tempTxList);
    while (newTxList.size() != 1) {
      newTxList = getNewTxList(newTxList);
     // System.out.println(newTxList);
    }
    
    this.root = newTxList.get(0);
  }
  
  /**
   * return Node Hash List.
   * @param tempTxList
   * @return
   */
  private List<String> getNewTxList(List<String> tempTxList) {
    
    List<String> newTxList = new ArrayList<String>();
    int index = 0;
    while (index < tempTxList.size()) {
      // left
      String left = tempTxList.get(index);
     // System.out.println(left);
      index++;

      // right
      String right = "";
      if (index != tempTxList.size()) {
        right = tempTxList.get(index);
       // System.out.println(right);
      }
      
      if(right.equalsIgnoreCase("")){
    	  String sha2HexValue =left;
          newTxList.add(sha2HexValue);
          //System.out.println(sha2HexValue);
          index++;
      }
      else{
    	  String sha2HexValue =getSHA2HexValue(left+right);
          newTxList.add(sha2HexValue);
         // System.out.println(sha2HexValue);
          index++;  
      }

      // sha2 hex value
      
      
    }
    return newTxList;
  }
  
  /**
   * Return hex string
   * @param str
   * @return
   */
  public String getSHA2HexValue(String str) {
        byte[] cipher_byte;
        try{
            MessageDigest md = MessageDigest.getInstance("SHA-1");
            md.update(str.getBytes());
            cipher_byte = md.digest();
            StringBuilder sb = new StringBuilder(2 * cipher_byte.length);
            for(byte b: cipher_byte) {
              sb.append(String.format("%02x", b&0xff) );
            }
            return sb.toString();
        } catch (Exception e) {
                e.printStackTrace();
        }
        
        return "";
  }
  
  /**
   * Get Root
   * @return
   */
  public String getRoot() {
    return this.root;
  }
    
}