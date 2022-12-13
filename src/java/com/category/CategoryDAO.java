/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.category;

import com.couseware.CousewareDTO;
import com.utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author admin
 */
public class CategoryDAO {

    private static final String FIND_ID = "SELECT * FROM category Where id = ?";
    private static final String LIST = "SELECT * FROM category";
    private static final String DELETE = "DELETE FROM category WHERE id = ?";
    private static final String UPDATE = "UPDATE category SET code = ?, name = ? WHERE id = ?";
    private static final String INSERT = "INSERT INTO category(code, name) VALUES(?,?)";
    private static final String NEW_RECORD = "SELECT TOP 1 * FROM category ORDER BY id DESC";

    public CategoryDTO findById(Long id) throws SQLException {
        CategoryDTO category = null;
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            con = DBUtils.makeConnection();
            if (con != null) {
                ps = con.prepareStatement(FIND_ID);
                ps.setLong(1, id);
                rs = ps.executeQuery();
                if (rs.next()) {
                    String code = rs.getString("code");
                    String name = rs.getString("name");
                    category = new CategoryDTO(id, code, name);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ps != null) {
                ps.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return category;
    }

    public List<CategoryDTO> findAll() throws SQLException {
        List<CategoryDTO> listCategory = new ArrayList<>();
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            con = DBUtils.makeConnection();
            if (con != null) {
                ps = con.prepareStatement(LIST);
                rs = ps.executeQuery();
                while (rs.next()) {
                    Long id = rs.getLong("id");
                    String code = rs.getString("code");
                    String name = rs.getString("name");
                    listCategory.add(new CategoryDTO(id, code, name));
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ps != null) {
                ps.close();
            }
            if (con != null) {
                con.close();
            }

        }

        return listCategory;
    }
    
    
    public boolean insert(CategoryDTO categoryDTO) throws SQLException {
        boolean check = false;
        Connection con = null;
        PreparedStatement ps = null;
        try {
            con = DBUtils.makeConnection();
            if (con != null) {
                ps = con.prepareStatement(INSERT);
                ps.setString(1, categoryDTO.getCode());
                ps.setString(2, categoryDTO.getName());
                check = ps.executeUpdate() > 0 ? true : false;
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (ps != null) {
                ps.close();
            }
            if (con != null) {
                con.close();
            }
        }

        return check;
    }
    
     public boolean delete(Long id) throws SQLException {
        boolean check = false;
        Connection con = null;
        PreparedStatement ps = null;
        try {
            con = DBUtils.makeConnection();
            if (con != null) {
                ps = con.prepareStatement(DELETE);
                ps.setLong(1, id);
                check = ps.executeUpdate() > 0 ? true : false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (ps != null) {
                ps.close();
            }
            if (con != null) {
                con.close();
            }
        }

        return check;
    }
   
    public boolean update(CategoryDTO categoryDTO) throws SQLException {
        boolean check = false;
        Connection con = null;
        PreparedStatement ps = null;
        try {
            con = DBUtils.makeConnection();
            if (con != null) {
                ps = con.prepareStatement(UPDATE);
                ps.setString(1, categoryDTO.getCode());
                ps.setString(2, categoryDTO.getName());
                ps.setLong(3, categoryDTO.getId());
                check = ps.executeUpdate() > 0 ? true : false;
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (ps != null) {
                ps.close();
            }
            if (con != null) {
                con.close();
            }
        }

        return check;
    }
    
    public CategoryDTO findNewRecord() throws SQLException {
        CategoryDTO category = null;
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            con = DBUtils.makeConnection();
            if (con != null) {
                ps = con.prepareStatement(NEW_RECORD);
   
                rs = ps.executeQuery();
                if (rs.next()) {
                    Long id = rs.getLong("id");
                    String code = rs.getString("code");
                    String name = rs.getString("name");
                    category = new CategoryDTO(id, code, name);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ps != null) {
                ps.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return category;
    }

}
