package com.fh.util;

import javax.servlet.http.HttpServletRequest;

public class CommUtil {
	
	public static String getURL(HttpServletRequest request) {

		String contextPath = request.getContextPath().equals("/") ? ""
				: request.getContextPath();

		String url = "http://" + request.getServerName();
		if (null2Int(Integer.valueOf(request.getServerPort())) != 80)
			url = url + ":"
					+ null2Int(Integer.valueOf(request.getServerPort()))
					+ contextPath;
		else {
			url = url + contextPath;
		}
		return url;

	}
	
	public static int null2Int(Object s) {
		int v = 0;
		if (s != null)
			try {
				v = Integer.parseInt(s.toString());
			} catch (Exception localException) {
			}
		return v;
	}

	public static float null2Float(Object s) {
		float v = 0.0F;
		if (s != null)
			try {
				v = Float.parseFloat(s.toString());
			} catch (Exception localException) {
			}
		return v;
	}

	public static double null2Double(Object s) {
		double v = 0.0D;
		if (s != null)
			try {
				v = Double.parseDouble(null2String(s));
			} catch (Exception localException) {
			}
		return v;
	}

	public static boolean null2Boolean(Object s) {
		boolean v = false;
		if (s != null)
			try {
				v = Boolean.parseBoolean(s.toString());
			} catch (Exception localException) {
			}
		return v;
	}

	public static String null2String(Object s) {
		return s == null ? "" : s.toString().trim();
	}

	public static Long null2Long(Object s) {
		Long v = Long.valueOf(-1L);
		if (s != null)
			try {
				v = Long.valueOf(Long.parseLong(s.toString()));
			} catch (Exception localException) {
			}
		return v;
	}

}
