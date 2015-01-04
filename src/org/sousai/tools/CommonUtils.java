package org.sousai.tools;

public class CommonUtils {
	public static boolean isNullOrEmpty(Object ob) {
		boolean value = true;
		if (ob != null) {
			value = false;
			if (ob.getClass() == String.class
					&& !((String) ob).trim().equals("")) {
				value = false;
			}
		}
		return value;
	}
}
