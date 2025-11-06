package com.dipti;

import java.util.List;
import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;


@WebServlet("/FileUpload")
public class FileUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
        public FileUpload() {
        super();
       
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try
		{
		ServletFileUpload sf = new ServletFileUpload(new DiskFileItemFactory());
		List<FileItem> multifiles = sf.parseRequest(request);
		
		for(FileItem item : multifiles)
		{
			item.write(new File("C:\\Users\\dipti\\OneDrive\\Desktop\\FileUpload\\" + item.getName()));
		}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		System.out.println("File Uploaded Successfully");
		
	}

}





//package com.dipti;
//
//import java.util.List;
//import java.io.File;
//import java.io.IOException;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import org.apache.commons.fileupload.FileItem;
//import org.apache.commons.fileupload.disk.DiskFileItemFactory;
//import org.apache.commons.fileupload.servlet.ServletFileUpload;
//
//@WebServlet("/FileUpload")
//public class FileUpload extends HttpServlet {
//    private static final long serialVersionUID = 1L;
//
//    // Your Desktop FileUpload folder path
//    private static final String UPLOAD_DIR = "C:\\Users\\dipti\\OneDrive\\Desktop\\FileUpload\\";
//
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//
//        response.setContentType("text/html;charset=UTF-8");
//
//        // Ensure the folder exists
//        File uploadFolder = new File(UPLOAD_DIR);
//        if (!uploadFolder.exists()) {
//            uploadFolder.mkdirs();
//        }
//
//        if (!ServletFileUpload.isMultipartContent(request)) {
//            response.getWriter().println("<p>Error: Form must have enctype=multipart/form-data.</p>");
//            return;
//        }
//
//        try {
//            ServletFileUpload upload = new ServletFileUpload(new DiskFileItemFactory());
//            List<FileItem> formItems = upload.parseRequest(request);
//
//            response.getWriter().println("<html><body bgcolor='lightgreen'>");
//            response.getWriter().println("<h2>Files Uploaded Successfully:</h2><ul>");
//
//            if (formItems != null && formItems.size() > 0) {
//                for (FileItem item : formItems) {
//                    if (!item.isFormField()) {
//                        String fileName = new File(item.getName()).getName();
//                        File storeFile = new File(uploadFolder, fileName);
//
//                        // Prevent overwriting
//                        if (storeFile.exists()) {
//                            String newName = System.currentTimeMillis() + "_" + fileName;
//                            storeFile = new File(uploadFolder, newName);
//                        }
//
//                        // Save file
//                        item.write(storeFile);
//
//                        // Show where the file was saved
//                        response.getWriter().println("<li>" + storeFile.getAbsolutePath() + "</li>");
//                    }
//                }
//            }
//            response.getWriter().println("</ul>");
//            response.getWriter().println("<a href='index.jsp'>Upload more</a>");
//            response.getWriter().println("</body></html>");
//
//        } catch (Exception ex) {
//            response.getWriter().println("<p>Error: " + ex.getMessage() + "</p>");
//        }
//    }
//}
