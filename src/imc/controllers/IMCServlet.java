package imc.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import imc.models.IMC;

public class IMCServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String peso = req.getParameter("peso");
		String altura = req.getParameter("altura");
		RequestDispatcher rd = null;
		
		if(peso != null && !peso.equals("") && altura!=null && !altura.equals("")){
			IMC imc = new IMC();
			rd = req.getRequestDispatcher("/index.jsp");
			try{
				imc.setPeso(Float.valueOf(peso));
				imc.setAltura(Float.valueOf(altura));
				imc.geraResultado();
				req.setAttribute("resultado", "O valor do IMC é: "+String.valueOf(imc.getResultado()));
			}catch (Exception e){
				req.setAttribute("resultado","Os campos devem ser informados corretamente!");
			}
			rd.forward(req, resp);
		}
	}
}
