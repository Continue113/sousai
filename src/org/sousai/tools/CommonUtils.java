package org.sousai.tools;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class CommonUtils {
	public static boolean isNullOrEmpty(Object ob) {
		boolean value = true;
		if (ob != null) {
			if (ob.getClass().equals(String.class)) {
				value = ((String) ob).trim().isEmpty();
			} else {
				value = false;
			}
		}
		return value;
	}

	public static Timestamp ToTimestamp(Date startTime) {
		return new Timestamp(startTime.getTime());
	}

	/**
	 * 返回str去前后空格之后的结果
	 * 
	 * @param str
	 * @return
	 */
	public static String TrimParam(String str) {
		String value = str;
		if (!CommonUtils.isNullOrEmpty(str))
			value = str.trim();
		return value;
	}

	/**
	 * 返回str去前后空格之后，并以regex切分为数组的结果
	 * 
	 * @param str
	 * @return
	 */
	public static String[] TrimAndSplitParam(String str, String regex) {
		String[] value = null;
		if (str != null)
			value = str.trim().split(regex);
		return value;
	}

	/**
	 * 去除单引号
	 * 
	 * @param str
	 * @return
	 */
	public static String RemoveSingleComma(String str) {
		if (str != null)
			str = str.replace("'", "");
		return str;
	}

	/**
	 * 若str不能转化为int，返回-1。注意对-1的规避
	 * 
	 * @param str
	 * @return
	 */
	public static int ParseIntParam(String str) throws Exception {
		int value = -1;
		try {
			str = RemoveSingleComma(str);
			if (!CommonUtils.isNullOrEmpty(str))
				value = Integer.parseInt(str.trim());
		} catch (NumberFormatException e) {
			e.printStackTrace();
			String errorPalce = (new Throwable().getStackTrace()[0]).toString(); // 当前发生异常位置
			throw new Exception(errorPalce + "String转换int失败");
		}
		return value;
	}

	public static int ParseIntParamIgnoreExp(String str, int defValue) {
		int value = defValue;
		try {
			str = RemoveSingleComma(str);
			if (!CommonUtils.isNullOrEmpty(str))
				value = Integer.parseInt(str.trim());

		} catch (Exception e) {
			e.printStackTrace();
		}
		return value;
	}

	/**
	 * 若str不能转化为float，返回-1.0f。注意对-1.0f的规避
	 * 
	 * @param str
	 * @return
	 */
	public static float ParseFloatParam(String str) throws Exception {
		float value = -1.0f;
		try {
			str = RemoveSingleComma(str);
			if (!CommonUtils.isNullOrEmpty(str))
				value = Float.parseFloat(str.trim());
		} catch (NumberFormatException e) {
			e.printStackTrace();
			String errorPalce = (new Throwable().getStackTrace()[0]).toString(); // 当前发生异常位置
			throw new Exception(errorPalce + "String转换float失败");
		}
		return value;
	}

	/**
	 * 若str不为空，将其转换成Date
	 * 
	 * @param str
	 * @param format
	 * @return 若str为空，或发生异常，返回null
	 * @throws Exception
	 */
	public static Date ParseDateParam(String str, SimpleDateFormat format)
			throws Exception {
		Date value = null;
		try {
			if (!CommonUtils.isNullOrEmpty(str))
				value = format.parse(str.trim());
		} catch (ParseException e) {
			e.printStackTrace();
			String errorPalce = (new Throwable().getStackTrace()[0]).toString(); // 当前发生异常位置
			throw new Exception(errorPalce + "String转换日期失败");
		}
		return value;
	}

}
