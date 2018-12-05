package Hibernate;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import javafx.util.Pair;

import org.hibernate.Session;

import MVC.Modele.*;
import UserPattern.SERVICE.IMPL.ServicesImpl;

public class test_1 {

	public static void main(String[] args) 
	{
		
//		Session session = hibernateUtil.getSessionFactory().openSession();
//		session.beginTransaction();
		String s = "<div id='div1'>13123</div>";
		String a = (String) s.substring(s.indexOf('>')+1, s.lastIndexOf('<'));
		System.out.println("=> "+a);
//		session.close();
		
	}

}
