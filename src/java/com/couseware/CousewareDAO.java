/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.couseware;

import com.category.CategoryDAO;
import com.category.CategoryDTO;
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
public class CousewareDAO {

    private static final String LIST = "SELECT * FROM couseware";
    private static final String SEARCH = "SELECT * FROM couseware WHERE CONCAT(title, short_content, content) like ?";
    private static final String DETAIL = "SELECT * FROM couseware WHERE id = ?";
    private static final String INSERT = "INSERT INTO couseware(content, short_content, title, created_date, modified_date, category_id) VALUES(?,?,?,?,?,?)";
    private static final String FINDBYCATEGORY = "SELECT * FROM couseware JOIN category on couseware.category_id = category.id WHERE category.id = ?";
    private static final String DELETE = "DELETE FROM couseware WHERE id = ?";
    private static final String UPDATE = "UPDATE couseware SET content = ?, short_content = ?, title = ?, modified_date = ?, category_id = ? WHERE id = ?";

    public List<CousewareDTO> findAll() throws SQLException {
        List<CousewareDTO> listCourse = new ArrayList<>();
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
                    String content = rs.getString("content");
                    String short_content = rs.getString("short_content");
                    String title = rs.getString("title");
                    Date created_date = rs.getDate("created_date");
                    Date modified_date = rs.getDate("modified_date");
                    Long category_id = rs.getLong("category_id");
                    CategoryDAO categoryDAO = new CategoryDAO();
                    CategoryDTO category = categoryDAO.findById(category_id);
                    listCourse.add(new CousewareDTO(id, content, short_content, title, created_date, modified_date, category));
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

        return listCourse;
    }

    public List<CousewareDTO> searchCourse(String search) throws SQLException {
        List<CousewareDTO> listCourse = new ArrayList<>();
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            con = DBUtils.makeConnection();
            if (con != null) {
                ps = con.prepareStatement(SEARCH);
                ps.setString(1, "%" + search + "%");
                rs = ps.executeQuery();
                while (rs.next()) {
                    Long id = rs.getLong("id");
                    String content = rs.getString("content");
                    String short_content = rs.getString("short_content");
                    String title = rs.getString("title");
                    Date created_date = rs.getDate("created_date");
                    Date modified_date = rs.getDate("modified_date");
                    Long category_id = rs.getLong("category_id");
                    CategoryDAO categoryDAO = new CategoryDAO();
                    CategoryDTO category = categoryDAO.findById(category_id);
                    listCourse.add(new CousewareDTO(id, content, short_content, title, created_date, modified_date, category));
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

        return listCourse;
    }

    public CousewareDTO findById(Long id) throws SQLException {
        CousewareDTO course = null;
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            con = DBUtils.makeConnection();
            if (con != null) {
                ps = con.prepareStatement(DETAIL);
                ps.setLong(1, id);
                rs = ps.executeQuery();
                if (rs.next()) {
                    String content = rs.getString("content");
                    String short_content = rs.getString("short_content");
                    String title = rs.getString("title");
                    Date created_date = rs.getDate("created_date");
                    Date modified_date = rs.getDate("modified_date");
                    Long category_id = rs.getLong("category_id");
                    CategoryDAO categoryDAO = new CategoryDAO();
                    CategoryDTO category = categoryDAO.findById(category_id);
                    course = new CousewareDTO(id, content, short_content, title, created_date, modified_date, category);
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

        return course;
    }

    public boolean insert(CousewareDTO cousewareDTO) throws SQLException {
        boolean check = false;
        Connection con = null;
        PreparedStatement ps = null;
        try {
            con = DBUtils.makeConnection();
            if (con != null) {
                ps = con.prepareStatement(INSERT);
                ps.setString(1, cousewareDTO.getContent());
                ps.setString(2, cousewareDTO.getShort_content());
                ps.setString(3, cousewareDTO.getTitle());
                ps.setDate(4, new java.sql.Date(cousewareDTO.getCreated_date().getTime()));
                ps.setDate(5, new java.sql.Date(cousewareDTO.getModified_date().getTime()));
                ps.setLong(6, cousewareDTO.getCategory().getId());
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
    
   public List<CousewareDTO> findByCategory_Id(Long categoryId) throws SQLException {
        List<CousewareDTO> listCourse = new ArrayList<>();
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            con = DBUtils.makeConnection();
            if (con != null) {
                ps = con.prepareStatement(FINDBYCATEGORY);
                ps.setLong(1, categoryId);
                rs = ps.executeQuery();
                while (rs.next()) {
                    Long id = rs.getLong("id");
                    String content = rs.getString("content");
                    String short_content = rs.getString("short_content");
                    String title = rs.getString("title");
                    Date created_date = rs.getDate("created_date");
                    Date modified_date = rs.getDate("modified_date");
                    Long category_id = rs.getLong("category_id");
                    CategoryDAO categoryDAO = new CategoryDAO();
                    CategoryDTO category = categoryDAO.findById(category_id);
                    listCourse.add(new CousewareDTO(id, content, short_content, title, created_date, modified_date, category));
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

        return listCourse;
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
   
    public boolean update(CousewareDTO cousewareDTO) throws SQLException {
        boolean check = false;
        Connection con = null;
        PreparedStatement ps = null;
        try {
            con = DBUtils.makeConnection();
            if (con != null) {
                ps = con.prepareStatement(UPDATE);
                ps.setString(1, cousewareDTO.getContent());
                ps.setString(2, cousewareDTO.getShort_content());
                ps.setString(3, cousewareDTO.getTitle());
                ps.setDate(4, new java.sql.Date(cousewareDTO.getModified_date().getTime()));
                ps.setLong(5, cousewareDTO.getCategory().getId());
                ps.setLong(6, cousewareDTO.getId());
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
}
