package server;

import javax.ejb.Stateless;

@Stateless (name = "PingEJB")
public class PingBean implements Ping {
	@Override
	public String ping(String s) {
		return s + "Pong!";
	}
}
