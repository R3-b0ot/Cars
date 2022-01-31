package backend;

import java.sql.*;

public class ContactDatabase {

    Connection con2;

    public ContactDatabase(Connection con2) {
        this.con2 = con2;
    }

    //for register user 
    public boolean saveContact(Contact contact) {
        boolean set = false;
        try {
            //Insert register data to database
            String query = "insert into contact(name,email,phone,message) values(?,?,?,?)";
            PreparedStatement pt = this.con2.prepareStatement(query);
            pt.setString(1, contact.getName());
            pt.setString(2, contact.getEmail());
            pt.setString(3, contact.getPhone());
            pt.setString(4, contact.getMessage());

            pt.executeUpdate();
            set = true;
            System.out.println("Added !!!!");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return set;
    }
}