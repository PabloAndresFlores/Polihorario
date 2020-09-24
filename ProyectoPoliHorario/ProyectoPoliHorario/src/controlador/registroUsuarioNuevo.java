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

import modelo.usuario;

/**
 * Servlet implementation class registroUsuarioNuevo
 */
@Transactional
@WebServlet("/registroUsuarioNuevo")
public class registroUsuarioNuevo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@PersistenceContext (unitName="poliHorarioPU")
	private EntityManager em;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registroUsuarioNuevo() {
        super();
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nombre=request.getParameter("nombre");
		String apellido=request.getParameter("apellido");
		String usuario=request.getParameter("usuario");
		String contrasenia=request.getParameter("contraseña");
		String repContrasenia=request.getParameter("repContraseña");
		
		
	
		if (!contrasenia.trim().equals(repContrasenia) || nombre.trim().equals("") || apellido.trim().equals("") || usuario.trim().equals("")|| contrasenia.trim().equals("")|| repContrasenia.trim().equals("")) {
			
			
			request.setAttribute("valNombre",nombre);
			request.setAttribute("valApellido",apellido);
			request.setAttribute("valUsuario",usuario);
			request.setAttribute("valContrasenia",contrasenia);
			request.setAttribute("valRepContrasenia",repContrasenia);
			request.setAttribute("valError","llenar los datos correctamente");
			
			request.getRequestDispatcher("RegistrarUsuario.jsp").forward(request,response);
		}else {
			
			usuario user=new usuario();
			user.setNombre(nombre);
			user.setApellido(apellido);
			user.setUsuario(usuario);
			user.setContrasenia(contrasenia);
			em.persist(user);
			
			request.getRequestDispatcher("index.jsp").forward(request,response);
			
		}
		
		
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
