package org.sousai.tools;

public class MyValidation 
{
	//密码的最小和最大长度
	private static int MAX_PWD_LENGTH = 16;
	private static int MIN_PWD_LENGTH = 6;
	
	//Email的最大长度
	private static int MAX_EMAIL_LENGTH = 32;
	public static boolean validatePwd(String pwd)
	{
		if(pwd.length()<MIN_PWD_LENGTH || pwd.length()>MAX_PWD_LENGTH)
		{
			return false;
		}
		else
		{
			return true;
		}
	}
	
	public static boolean validateEmail(String email)
	{
		if(email.length() > MAX_EMAIL_LENGTH)
		{
			return false;
		}
		else
		{
			return true;
		}
	}
	
}
