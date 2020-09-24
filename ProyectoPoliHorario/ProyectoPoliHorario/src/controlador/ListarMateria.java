package controlador;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Materia;

/**
 * Servlet implementation class ListarMateria
 */
@WebServlet("/ListarMateria")
public class ListarMateria extends HttpServlet {
	private static final long serialVersionUID = 1L;
    @PersistenceContext (unitName="poliHorarioPU")
	private EntityManager em;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListarMateria() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Query q = em.createQuery("Select m from materia as m", Materia.class);
		
		List<Materia> materias= q.getResultList();
		
		request.setAttribute("Materias",materias);
		
		request.getRequestDispatcher("ListarMaterias.jsp").forward(request,response);
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
