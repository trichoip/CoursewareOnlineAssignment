/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author admin
 */
@WebServlet(name = "MainController", urlPatterns = {"/MainController"})
public class MainController extends HttpServlet {

    private static final String LOGIN_PAGE = "login.jsp";
    private static final String LOGIN = "Login";
    private static final String LOGIN_SERVLET = "LoginServlet";
    private static final String SEARCH = "Search";
    private static final String SEARCH_SERVLET = "SearchCourseServlet";
    private static final String DETAIL = "Detail";
    private static final String DETAIL_SERVLET = "DetailCourseServlet";
    private static final String CREATE = "Create";
    private static final String CREATE_SERVLET = "CreateCourseServlet";
    private static final String DELETE = "Delete";
    private static final String DELETE_SERVLET = "DeleteCourseServlet";
    private static final String LOGOUT = "Logout";
    private static final String LOGOUT_SERVLET = "LogoutServlet";
    private static final String UPDATE = "Update";
    private static final String UPDATE_SERVLET = "UpdateCourseServlet";
    private static final String DELETE_CATEGORY = "DeleteCategory";
    private static final String DELETE_CATEGORY_SERVLET = "DeleteCategoryServlet";
    private static final String UPDATE_CATEGORY = "UpdateCategory";
    private static final String UPDATE_CATEGORY_SERVLET = "UpdateCategoryServlet";
    private static final String CREATE_CATEGORY = "CreateCategory";
    private static final String CREATE_CATEGORY_SERVLET = "CreateCategoryServlet";
    private static final String GETCOURSEBYCATEGORY = "GetCourseByCategory";
    private static final String GETCOURSEBYCATEGORY_SERVLET = "GetCourseByCategoryServlet";

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = LOGIN_PAGE;
        String tet = request.getParameter("title");
        try {
            String action = request.getParameter("action");
            if (LOGIN.equals(action)) {
                url = LOGIN_SERVLET;
            }
            if (LOGOUT.equals(action)) {
                url = LOGOUT_SERVLET;
            }
            if (SEARCH.equals(action)) {
                url = SEARCH_SERVLET;
            }
            if (DETAIL.equals(action)) {
                url = DETAIL_SERVLET;
            }
            if (CREATE.equals(action)) {
                url = CREATE_SERVLET;
            }
            if (DELETE.equals(action)) {
                url = DELETE_SERVLET;
            }
            if (UPDATE.equals(action)) {
                url = UPDATE_SERVLET;
            }
            if (DELETE_CATEGORY.equals(action)) {
                url = DELETE_CATEGORY_SERVLET;
            }
            if (UPDATE_CATEGORY.equals(action)) {
                url = UPDATE_CATEGORY_SERVLET;
            }
            if (CREATE_CATEGORY.equals(action)) {
                url = CREATE_CATEGORY_SERVLET;
            }
            if (GETCOURSEBYCATEGORY.equals(action)) {
                url = GETCOURSEBYCATEGORY_SERVLET;
            }
        } catch (Exception e) {
            log("Error in MainController: " + e.toString());
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
