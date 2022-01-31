/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package backend;

import java.sql.*;

/**
 *
 * @author jaina
 */
class InventoryDatabase {
    
    Connection con;

    public InventoryDatabase(Connection con) {
        this.con = con;
    }
    
    public boolean saveCar(Inventory inventory) {
        boolean set = false;
        try {
            //Insert register data to database
            String query = "insert into car(name,miles,type,about,email,price,mrp_price,image_name,imagepath) values(?,?,?,?,?,?,?,?,?)";
            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setString(1, inventory.getName());
            pt.setString(2, inventory.getMiles());
            pt.setString(3, inventory.getType());
            pt.setString(4, inventory.getAbout());
            pt.setString(5, inventory.getEmail());
            pt.setString(6, inventory.getPrice());
            pt.setString(7, inventory.getMrpPrice());
            pt.setString(8, inventory.getImage_name());
            pt.setString(9, inventory.getImagepath());

            pt.executeUpdate();
            set = true;
            System.out.println("Added !!!!");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return set;
    }
    
}
