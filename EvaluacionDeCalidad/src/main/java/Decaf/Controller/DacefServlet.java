package Decaf.Controller;

import Decaf.Model.Bean;
import Decaf.Utils.MySQLConnection;
import Decaf.Model.Dao;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sound.sampled.Port;
import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "DacefServlet",
        urlPatterns = {
                "/get-porc",
                "/pas-list",
                "/add-results",
                "/get-all",
        })

public class DacefServlet extends HttpServlet  {
    Logger logger = Logger.getLogger("servletUsers");
    String action;
    String urlRedirect = "/index.jsp";
    Dao dao = new Dao();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html");
        action = req.getServletPath();
        switch (action) {
            case "/add-results":
                Bean datosEnc = dao.locateEnc();
                String name = req.getParameter("name");
                String escuela = req.getParameter("escuela");
                int funcionalidad = Integer.parseInt(req.getParameter("funcionalidad"));
                int Confiabilidad = Integer.parseInt(req.getParameter("confiabilidad"));
                int Usabilidad = Integer.parseInt(req.getParameter("usabilidad"));
                int Rendimiento = Integer.parseInt(req.getParameter("rendimiento"));
                int Mantenimiento = Integer.parseInt(req.getParameter("mantenimiento"));
                int Portabilidad = Integer.parseInt(req.getParameter("portabilidad"));
                int Seguridad = Integer.parseInt(req.getParameter("seguridad"));
                int Compatibilidad = Integer.parseInt(req.getParameter("compatibilidad"));

                float total = ((funcionalidad + Confiabilidad + Usabilidad + Rendimiento + Mantenimiento + Portabilidad + Seguridad + Compatibilidad) * 100 )/40;
                Bean add = new Bean();

                add.setUser(name);
                add.setSchool(escuela);
                add.setFuncionalidad(funcionalidad);
                add.setConfiabilidad(Confiabilidad);
                add.setUsabilidad(Usabilidad);
                add.setRendimiento(Rendimiento);
                add.setMantenimiento(Mantenimiento);
                add.setPortabilidadmpT(Portabilidad);
                add.setSeguridad(Seguridad);
                add.setCompatibilidad(Compatibilidad);
                add.setPorcentaje(total);
                add.setFkEncuesta(datosEnc.getFkEncuesta());
                dao.saveEvaluacion(add);
                urlRedirect = "/get-porc";
                break;
            default:
                urlRedirect = "/";
                break;
        }
        resp.sendRedirect(req.getContextPath() + urlRedirect);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        action = request.getServletPath();
        logger.log(Level.INFO, "Path-> " + action);
        switch (action) {
            case "/get-porc":
                try {
                    Bean datos = dao.locateEClien();
                    request.setAttribute("porcentaje", datos);
                    urlRedirect = "/results.jsp";
                } catch (Exception e) {
                    urlRedirect = "/index.jsp";
                }
                break;
            case "/get-all":
                try {
                    Bean datosEnc = dao.locateEnc();
                    int idEnc = datosEnc.getFkEncuesta();
                    String encur = datosEnc.getEncuesta();
                    Bean estadis = dao.getDatas(idEnc);
                    List<Bean> like = dao.findAll(idEnc);
                    request.setAttribute("nEnc1", encur);
                    request.setAttribute("likes", like);
                    request.setAttribute("estadisticas", estadis);
                    urlRedirect = "/estats.jsp";
                } catch (Exception e) {
                    urlRedirect = "/index.jsp";
                }
                break;
            default:
                urlRedirect = "/index.jsp";
                break;
        }
        request.getRequestDispatcher(urlRedirect).forward(request, response);
    }
}
