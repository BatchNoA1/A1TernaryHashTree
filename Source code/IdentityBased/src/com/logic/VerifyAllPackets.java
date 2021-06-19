package com.logic;

import java.util.ArrayList;
import java.util.TreeMap;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;


public class VerifyAllPackets {
	public String send(String Block) {
		// TODO Auto-generated method stub
		System.out.println("-----------Block---------->" +Block);
		TreeMap<String, ArrayList<String>> tree = getAllPackets(Block);
		System.out.println(tree);
		return Block;

	}
		
	
	public static TreeMap<String, ArrayList<String>> getAllPackets(String str) 
	{
		List<String> list = Arrays.asList(str.split(" "));
		TreeMap rootMap = new TreeMap();
		for (int i = 0; i < list.size(); i++) {
			if (list.size() >= 2 && list.size() - 1 > i) 
			{
				String combineString = list.get(i) + list.get(i + 1);
				ArrayList<String> child1 = new ArrayList<String>();
				child1.add(list.get(i));
				child1.add(list.get(i + 1));
				rootMap.put(combineString, child1);
				i = i + 1;
			} else 
			{
				String lastKey = (String) rootMap.lastKey();
				ArrayList<String> tempList = new ArrayList<String>();
				tempList = (ArrayList<String>) rootMap.get(rootMap.lastKey());
				tempList.add(list.get(i));
				rootMap.remove(lastKey);
				rootMap.put(lastKey + list.get(i), tempList);
			}
		}

		while (true)
		{
			TreeMap tempMap = new TreeMap(rootMap);
			rootMap.clear();
			ArrayList<String> keyset = new ArrayList<String>(tempMap.keySet());
			for (int i = 0; i < tempMap.size(); i++) {
				if (keyset.size() >= 2 && keyset.size() - 1 > i) 
				{
					String combineString = keyset.get(i) + keyset.get(i + 1);
					TreeMap map = new TreeMap();
					map.put(keyset.get(i), tempMap.get(keyset.get(i)));
					map.put(keyset.get(i + 1), tempMap.get(keyset.get(i + 1)));
					rootMap.put(combineString, map);
					i = i + 1;
				} else
				{
					String lastKey = (String) rootMap.lastKey();
					TreeMap map = new TreeMap();
					map = (TreeMap) rootMap.get(lastKey);
					map.put(keyset.get(i), tempMap.get(keyset.get(i)));
					rootMap.remove(lastKey);
					rootMap.put(lastKey + keyset.get(i), map);
				}
			}
			// break the loop when found the last value of the map
			if (rootMap.size() <= 1)
			{
				break;
			}
                       System.out.println("***************" +rootMap);


		}
		return rootMap;
	}
	
}
