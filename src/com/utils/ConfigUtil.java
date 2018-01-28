package com.utils;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;

import javax.annotation.PostConstruct;

import org.springframework.stereotype.Component;

@Component
public class ConfigUtil {
	public static Properties prop=new Properties();  
    /** 
     * 读取配置文件 
     * LiChaofei 
     * 2013-1-31 上午9:10:07 
     * @return 
     */  
	@PostConstruct
    private Properties loadProperty() {  
        prop=new Properties();  
       // try {  
        	//InputStream is=this.getClass().getResourceAsStream("/ipRemote.properties");
        	// OutputStream fos=new FileOutputStream(PathUtil.relativePath+"\\ipRemote.properties");  
        InputStream is=null;	
        try {
				 is=this.getClass().getResourceAsStream("/config.properties");
				System.setProperty("config.properties","config.properties" );
				prop.load(is);
        	} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}  finally{
				try {
					if (is!=null) {
						is.close();  	
					}
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
//           
//        } catch (IOException e) {  
//            e.printStackTrace();  
//        }  
       return prop; 
    }  
   /* *//** 
     * 保存修改后的配置文件 
     * LiChaofei 
     * 2013-1-31 上午9:09:51 
     * @throws IOException  
     *//*  
    public void saveProperty(String ip,String port) throws IOException{  
            //OutputStream fos=new FileOutputStream(this.getClass().getResource("/ipRemote.properties").getPath());  
            OutputStream fos=new FileOutputStream(PathUtil.relativePath+"\\ipRemote.properties");  
            prop.setProperty("ip",ip);  
            DateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
            prop.setProperty("port",port);  
            prop.store(fos, df.format(new Date()));  
          
    }  */
    public static String getIp_info(){
    	return prop.getProperty("server_ip")+":"+prop.getProperty("server_port");
    }
    public static String getSignature(){
    	return prop.getProperty("server_signature");
    }
    public static String getBaseUri(){
    	return prop.getProperty("server_pc_dateUri");
    }
   /* public static void main(String[] args) {
    	//URL absoluteUrl=null;
    //	String url=IpInfoUtil.class.getResource("/").getPath();
    //	String dir = System.getProperty("user.dir");// 当前启动路径
    	//URL parseUrl=null;
//    	try { 
//    	 absoluteUrl = new URL(url);   
//         
//			// parseUrl = new URL(absoluteUrl ,"../../" );
//		} catch (MalformedURLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} 
    	//System.out.println(url.toString());
    	//String aa=new File(dir).getParent();
    	
    	for(File file :files){
    		System.out.println(file.getPath());// 当前启动路径);	
    	}
		
	//System.out.println(aa+\webapps\);
    }*/
   /* *//**
	 * 
	 * 加载配置文件   
	 * @param path
	 * @return
	 * @throws IOException
	 */
	/*private static Properties loadProperties(String path){
		Properties p=null;
		InputStream in=null;
		try {
			in = new BufferedInputStream(new FileInputStream(path));
			p = new Properties();
			p.load(in);
			in.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				in.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return p;
	}*/
}
