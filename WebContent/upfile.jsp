<%@page import="org.sousai.service.impl.UserManagerImpl"%>
<%@page import="org.hibernate.connection.UserSuppliedConnectionProvider"%>
<%@page import="java.io.*,sun.misc.*,java.util.*,org.sousai.tools.*,org.sousai.action.*"%>
<%
//String path=application.getRealPath(request.getRequestURI()); 
String path=application.getRealPath("");
MyPrint.myPrint("path=" + path);
//String dir=new File(path).getParent(); 
String dir=new File(path).getPath();
MyPrint.myPrint("dir=" + dir);
String savePath = "./files/userHeads/";  //保存图片路径 可以修改
MyPrint.myPrint("savePath=" + savePath);
String _savePath = dir + savePath;
// String _savePath = "/home/myic/workspace/";
MyPrint.myPrint("_savePath=" + _savePath);
long savePicName = new Date().getTime();

String file_src = _savePath + savePicName + "_src.jpg";    //保存原图
String filename162 = _savePath + savePicName + "_162.jpg";  //保存162
String filename48 = _savePath + savePicName + "_48.jpg";  //保存48
String filename20 = _savePath + savePicName + "_20.jpg";  //保存20

String pic=request.getParameter("pic");
String pic1=request.getParameter("pic1");
String pic2=request.getParameter("pic2");
String pic3=request.getParameter("pic3");
if(!pic.equals("")&&pic!=null){
	//原图
	File file = new File(file_src);
	FileOutputStream fout = null;
	fout = new FileOutputStream(file);
	fout.write(new BASE64Decoder().decodeBuffer(pic));
	fout.close();
}else{
	MyPrint.myPrint("pic = " +null);
}

File file1 = new File(filename162);
MyPrint.myPrint(""+file1.isFile());
FileOutputStream fout1 = null;
fout1 = new FileOutputStream(file1);
fout1.write(new BASE64Decoder().decodeBuffer(pic1));
fout1.close();

//图2
File file2 = new File(filename48);
FileOutputStream fout2 = null;
fout2 = new FileOutputStream(file2);
fout2.write(new BASE64Decoder().decodeBuffer(pic2));
fout2.close();

//图3
File file3 = new File(filename20);
FileOutputStream fout3 = null;
fout3 = new FileOutputStream(file3);
fout3.write(new BASE64Decoder().decodeBuffer(pic3));
fout3.close();

String picUrl = savePath+savePicName;
MyPrint.myPrint(picUrl);
out.println("{\"status\":1,\"picUrl\":\""+picUrl+"\"}"); //返回图片地址

%>