/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package backend;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author jaina
 */
public class AddListingServlet extends HttpServlet {

    private static final String UPLOAD_DIRECTORY = "..\\..\\..\\web\\uploads\\";

protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //Creating session
        HttpSession session = request.getSession();
        if (ServletFileUpload.isMultipartContent(request)) {
            try {
                //Taking all image requests
                List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
                String imageName = null;
                String Tmiles = null;
                String productName = null;
                String productPrice = null;
                String descrip = null;
                String mrpPrice = null;
                String category = null;
                String Email = null;

                for (FileItem item : multiparts) {
                    if (!item.isFormField()) {
                        //Getting image name
                        imageName = new File(item.getName()).getName();
                        //Storing in the specified directory
                        item.write(new File(UPLOAD_DIRECTORY + File.separator + imageName));

                        //Retriving all information from frontend
                        FileItem name = (FileItem) multiparts.get(0);
                        productName = name.getString();

                        FileItem miles = (FileItem) multiparts.get(1);
                        Tmiles = miles.getString();

                        FileItem about = (FileItem) multiparts.get(2);
                        descrip = about.getString();

                        FileItem type = (FileItem) multiparts.get(3);
                        category = type.getString();
                        
                        FileItem price = (FileItem) multiparts.get(4);
                        productPrice = price.getString();
                        
                        FileItem mprice = (FileItem) multiparts.get(5);
                        mrpPrice = mprice.getString();

                        FileItem email = (FileItem) multiparts.get(6);
                        Email = email.getString();



                    }
                }
                try {
                    String imagePath = UPLOAD_DIRECTORY + imageName;
                    //Querying to insert product in the table
                    int i = ConnectionPro.insertUpdateFromSqlQuery("insert into car(miles,about,imagepath,image_name,name,price,mrp_price,type,email) values('" + Tmiles + "','" + descrip + "','" + imagePath + "','" + imageName + "','" + productName + "','" + productPrice + "','" + mrpPrice + "','" + category +"','" + Email + "')");
                    //If product inserted sucessfully in the database
                    if (i > 0) {
                        String success = "Product added successfully.";
                        //Adding method in session.
                        session.setAttribute("message", success);
                        //Response send to the admin-add-product.jsp
                        response.sendRedirect("addlisting.jsp");
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } catch (Exception ex) {
                //If any occur occured
                request.setAttribute("message", "File Upload Failed due to " + ex);
            }
        } else {
            request.setAttribute("message", "Sorry this Servlet only handles file upload request");
        }
    }
}


