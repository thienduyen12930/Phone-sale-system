/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.UUID;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author USER
 */
public class check extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            request.getRequestDispatcher("check.jsp").forward(request, response);
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
        request.getRequestDispatcher("check.jsp").forward(request, response);
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
        //processRequest(request, response);
        HttpSession session = request.getSession();
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String note = request.getParameter("note");
        String orderID = (String) session.getAttribute("orderID");
        Boolean isOrderCompleted = (Boolean) session.getAttribute("isOrderCompleted");
        String paymentMethod = request.getParameter("paymentMethod");
        String error = "";
        if (name == null || name.isEmpty()) {
            error += "Tên không được để trống. ";
        }
        if (phone == null || phone.isEmpty()) {
            error += "Số điện thoại không được để trống. ";
        }
        if (address == null || address.isEmpty()) {
            error += "Địa chỉ không được để trống. ";
        }
        if (paymentMethod == null || paymentMethod.isEmpty()) { 
            error += "Phương thức thanh toán không được để trống. ";
        }
        if (!error.isEmpty()) {
            request.setAttribute("error", error);
            request.getRequestDispatcher("check.jsp").forward(request, response);
        } else {
            request.setAttribute("name", name);
            request.setAttribute("phone", phone);
            request.setAttribute("address", address);
            request.setAttribute("paymentMethod", paymentMethod);
            request.setAttribute("note", note);
            if (orderID == null || (isOrderCompleted != null && isOrderCompleted)) {
                orderID = UUID.randomUUID().toString();
                session.setAttribute("orderID", orderID);
                session.setAttribute("isOrderCompleted", false); 
            }
            session.setAttribute("isOrderCompleted", true);
            request.getRequestDispatcher("orderSuccess.jsp").forward(request, response);
            
        }
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
