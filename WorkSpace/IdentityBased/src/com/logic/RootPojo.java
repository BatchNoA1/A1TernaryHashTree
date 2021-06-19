package com.logic;

import com.opensymphony.xwork2.ActionSupport;


public class RootPojo extends ActionSupport{
String fName,root;

public String getfName() {
	return fName;
}

public void setfName(String fName) {
	this.fName = fName;
}

public String getRoot() {
	return root;
}

public void setRoot(String root) {
	this.root = root;
}


public RootPojo(String fName, String root) {
	super();
	this.fName = fName;
	this.root = root;
}
}
