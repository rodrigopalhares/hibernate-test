package palhares.hibernate.test;

import java.util.List;

import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;

import palhares.hibernate.test.entity.City;
import palhares.hibernate.test.entity.State;

public class Teste {
	public static void main(String[] args) throws Exception {
		BasicConfigurator.configure();
		Logger.getLogger(Teste.class).info("Entering application.");

		Configuration configuration = new Configuration()
			.addPackage("palhares.hibernate.test.entity")
			.addAnnotatedClass(State.class)
			.addAnnotatedClass(City.class)
			.configure();
		// new Configuration()
		// .addPackage("palhares.hibernate.test.entity")
		// // .addClass(State.class)
		// .addAnnotatedClass(State.class)
		// .configure().buildSessionFactory();
		 ServiceRegistry serviceRegistry = new ServiceRegistryBuilder().applySettings(configuration.getProperties()).buildServiceRegistry();
		 SessionFactory sessionFactory = configuration.buildSessionFactory(serviceRegistry);

		Session session = null;
		try {
			session = sessionFactory.openSession();
			List<City> states = (List<City>) session.createCriteria(City.class).list();
			for (City s : states) {
				Logger.getLogger(Teste.class).info(s);
			}
		} finally {

			session.close();
		}

	}
}
