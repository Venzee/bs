package net.venz.core.base.listener;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import net.venz.core.util.SessionUtil;


public class SessionListener implements HttpSessionListener {

	public void sessionCreated(HttpSessionEvent event) {
		
	}

	public void sessionDestroyed(HttpSessionEvent event) {
		SessionUtil.setTimeOut(event.getSession().getId());
	}

}
