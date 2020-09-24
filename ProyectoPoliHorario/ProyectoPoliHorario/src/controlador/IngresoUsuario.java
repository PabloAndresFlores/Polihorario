package controlador;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.transaction.Transactional;

/**
 * Servlet implementation class IngresoUsuario
 */

@WebServlet("/IngresoUsuario")
public class IngresoUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@PersistenceContext (unitName="poliHorarioPU")
	private EntityManager em;       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IngresoUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String usuarioIng=request.getParameter("usuarioIng");
		String contraseniaIng=request.getParameter("ContraseniaIng");
		
		
		if (usuarioIng.trim().equals("") || contraseniaIng.trim().equals("")) {
			
			
			request.setAttribute("valUsuarioIng",usuarioIng);
			request.setAttribute("valContraseniaIng",contraseniaIng);
			request.setAttribute("valError","llenar los datos correctamente");
			
			request.getRequestDispatcher("ingresar.jsp").forward(request,response);
		}else {
			
			request.getRequestDispatcher("Horario.jsp").forward(request,response);
		}
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
