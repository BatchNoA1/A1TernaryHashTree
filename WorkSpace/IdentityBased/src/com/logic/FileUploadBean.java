package com.logic;

import java.util.HashMap;

public class FileUploadBean {
String serverLoc,blockNo,blockSign,fileName="",roothash;



public FileUploadBean(HashMap<String, String> roothash2) {
	// TODO Auto-generated constructor stub
}

public FileUploadBean() {
	// TODO Auto-generated constructor stub
}

public String getRoothash() {
	return roothash;
}

public void setRoothash(String roothash) {
	this.roothash = roothash;
}

public String getBlockSign() {
	return blockSign;
}

public void setBlockSign(String blockSign) {
	this.blockSign = blockSign;
}

public String getServerLoc() {
	return serverLoc;
}

public void setServerLoc(String serverLoc) {
	this.serverLoc = serverLoc;
}

public String getBlockNo() {
	return blockNo;
}

public void setBlockNo(String blockNo) {
	this.blockNo = blockNo;
}

public String getFileName() {
	return fileName;
}

public void setFileName(String fileName) {
	this.fileName = fileName;
}
}
