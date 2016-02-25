package utils;

public class CommonUtil {
	public static boolean isBlank(String str){
		if(str==null || str.trim().length()==0){
			return true;
		}
		return false;
	}
}
