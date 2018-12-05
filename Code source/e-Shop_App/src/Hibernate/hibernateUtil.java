package Hibernate;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.engine.jndi.JndiException;

public class hibernateUtil 
{
	private static SessionFactory factory = null;
	
	public static SessionFactory getSessionFactory()
	{
		//StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
		StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure().build();
		factory=new MetadataSources(ssr).buildMetadata().buildSessionFactory();
		return factory;
	}
}
