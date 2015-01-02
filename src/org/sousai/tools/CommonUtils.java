package org.sousai.tools;

public class CommonUtils {
	public boolean isNullOrEmpty(Object ob) {
		boolean value = true;
		if (ob.getClass() == String.class) {
			if (ob != null && !((String) ob).trim().equals("")) {
				value = false;
			}
		} else if (ob != null) {
			value = false;
		}
		return value;
	}
}
