package com.fh.jetty;

import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.webapp.WebAppContext;

public class DeployToJetty {//jrebel

	public static void main(String[] args) {
		
		Server server = new Server(8090);
		
		WebAppContext webac = new WebAppContext();
		
		webac.setContextPath("/crm");
		
		webac.setDescriptor("./src/main/webapp/WEB-INF/web.xml");
		
		webac.setResourceBase("./src/main/webapp");
		
		webac.setParentLoaderPriority(true);
		
		server.setHandler(webac);
		
		try {
			server.start();
			server.join();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
