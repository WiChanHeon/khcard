package kr.spring.util;

public class StringUtil {
	//HTML�� ������� �����鼭 �ٹٲ� (ex:content)
	public static String useBrNoHtml(String str){
		if(str == null) return null;
		
		return str.replaceAll("<", "&lt;")
				  .replaceAll(">", "&gt;")
				  .replaceAll("\r\n", "<br>")
				  .replaceAll("\r", "<br>")
				  .replaceAll("\n", "<br>");
	}
	
	//HTML�� ������� ���� (ex:title)
	public static String useNoHtml(String str){
		if(str == null) return null;
		
		return str.replaceAll("<", "&lt;")
				  .replaceAll(">", "&gt;");
	}
}
