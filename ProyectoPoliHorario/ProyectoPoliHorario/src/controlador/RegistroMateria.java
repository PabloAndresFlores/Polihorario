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

import modelo.Materia;

/**
 * Servlet implementation class RegistroMateria
 */
@Transactional
@WebServlet("/RegistroMateria")
public class RegistroMateria extends HttpServlet {
	private static final long serialVersionUID = 1L;
    @PersistenceContext (unitName="poliHorarioPU")
	private EntityManager em;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistroMateria() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String hora=request.getParameter("hora");
		String materia=request.getParameter("materia");
		String dia=request.getParameter("dia");
		
		if (hora.trim().equals("") || materia.trim().equals("")|| dia.trim().equals("")) {
			request.setAttribute("valHora",hora);
			request.setAttribute("valMateria",materia);
			request.setAttribute("valDia",dia);
			request.setAttribute("valError","Llenar todos los campos");
			
			request.getRequestDispatcher("RegistroMateria.jsp").forward(request,response);			
		}else {
			
			Materia m = new Materia();
			m.setHora(hora);
			m.setMateria(materia);			
			m.setDia(dia);
			em.persist(m);
			
			request.getRequestDispatcher("ListarMateria").forward(request,response);
		}
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
