/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package prova;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import prova.dao.SaborDAO;
import prova.dao.TamanhoDAO;
import prova.obj.Sabor;
import prova.obj.Tamanho;

/**
 *
 * @author Bruno
 */
public class MainServlet extends HttpServlet {

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
        response.setContentType("charset=UTF-8");
        String operacao = request.getParameter("op");
        String url = "index.jsp";

        switch (operacao) {
            case "addSabor":
                url = addSabor(request);
                break;
            case "addTamanho":
                url = addTamanho(request);
                break;
        }
        request.getServletContext().getRequestDispatcher("/" + url).forward(request, response);

    }

    private static String addSabor(HttpServletRequest request) throws ServletException, IOException {
        Sabor sabor = new Sabor();
        try {
            sabor.setSabor(request.getParameter("nome"));
            SaborDAO.incluir(sabor);
        } catch (Exception e) {
            throw new ServletException(e.getMessage());
        }
        return "adicionadosucesso.jsp";
    }

    private static String addTamanho(HttpServletRequest request) throws ServletException, IOException {
        Tamanho tamanho = new Tamanho();
        try {
            tamanho.setDescricao(request.getParameter("descricao"));
            tamanho.setSigla(request.getParameter("sigla"));
            tamanho.setQtSabores(Integer.parseInt(request.getParameter("qt_sabores")));
            TamanhoDAO.incluir(tamanho);
        } catch (Exception e) {
            throw new ServletException(e.getMessage());
        }
        return "adicionadosucesso.jsp";
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
