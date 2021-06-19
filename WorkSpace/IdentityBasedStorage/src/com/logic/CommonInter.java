package com.logic;

import java.sql.Timestamp;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Vector;

public interface CommonInter {
	
	public static Vector<Timestamp> timVector=new Vector<Timestamp>();
	public static LinkedHashMap<String,String> suspMap=new LinkedHashMap<String, String>();
	void setSession(Map<String, Object> session);

}
