package com.logic;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;

public interface CommonInter {
	
	public static Vector spl=new Vector();
	public static Vector auditTime=new Vector();
	public static ArrayList publicAuditList=new ArrayList();
	public static ArrayList currentAuditList=new ArrayList();
	public static HashMap auditingMap=new HashMap();
	public static HashMap block=new HashMap();
	public static ArrayList blocks=new ArrayList();
	void setSession(Map<String, Object> session);
	ArrayList<String> list = new ArrayList<String>();
	List<String> roothash = new ArrayList<String>();
}
