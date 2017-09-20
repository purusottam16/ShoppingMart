package com.shoppingmart.util;

import java.sql.Date;

public class DateUtil {

	// Function to convert java.util.Date to java.sql.Timestamp in Java
	public static Date convertJavaDateToSqlDate(java.util.Date date)
	{
		/*return new java.sql.Timestamp(date.getTime());*/
		return new java.sql.Date(date.getTime());
	}

	/*public static void main (String[] args)
	{
		java.util.Date utilDate = new java.util.Date();
		System.out.println("java.util.Date : " + utilDate);

		java.sql.Timestamp sqlTimeStamp = convertJavaDateToSqlDate(utilDate);
		System.out.println("java.sql.Timestamp : " + sqlTimeStamp);
	}*/
}