package mypac;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mysql.cj.Query;


@Controller
public class Aadharcontroller {
            @RequestMapping("/GetAadhar")
	        public ModelAndView getdetails(HttpServletRequest req, HttpServletResponse res) {
            	
            MainController main = new MainController();
            Configuration con=new Configuration();
  		  
    		con.configure("hibernate.configuration.xml");
    		SessionFactory sf=con.buildSessionFactory();
    		
    		Session session= sf.openSession();
			ModelAndView mv=new ModelAndView();
			
			User u=new User();
			
			
			String str= req.getParameter("fname");
			
			
			org.hibernate.query.Query<User> query = session.createQuery("from User where phoneno = '"+str+"'");

	        List<User> t =  query.list();
	        System.out.println(t);
	       mv.addObject("details", t);
	             
	       mv.setViewName("gain.jsp"); 
	        
		    return mv;
			
		
	}
	
}
