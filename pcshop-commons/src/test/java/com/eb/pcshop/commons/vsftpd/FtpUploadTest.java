package com.eb.pcshop.commons.vsftpd;

import com.eb.pcshop.commons.util.FtpUtils;
import org.apache.commons.net.ftp.FTPClient;
import org.junit.Test;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

/**
 * Created by xhj on 2018/4/28/028.
 */
//public class FtpUploadTest {
    /*@Test
    public void testFtpUpload() throws IOException {
        //创建FTPClient客户端
        FTPClient ftpClient = new FTPClient();
        //创建FTP连接
        ftpClient.connect("47.98.199.218",21);
        //登录
        ftpClient.login("ftpuser","xhjXHJ*19951112");
        //读取本地文件
        FileInputStream inputStream  = new FileInputStream(new File("f:/趣图/图标/myico.ico"));
        //配置上传参数
        ftpClient.changeWorkingDirectory("/home/ftpuser/www/images");
        ftpClient.setFileType(FTPClient.BINARY_FILE_TYPE);
        //上传文件
        ftpClient.storeFile("hello1.jpg",inputStream);
        //关闭连接
        inputStream.close();
        ftpClient.logout();
    }

    @Test
    public void testFtpUtil() throws FileNotFoundException {
        FileInputStream fileInputStream = new FileInputStream(new File("f:/趣图/图标/panda.gif"));
        FtpUtils.uploadFile("47.98.199.218", 21, "ftpuser", "xhjXHJ*19951112", "/home/ftpuser/www/images", "/2017/09/11", "hello4.gif", fileInputStream);
    }*/
//}
