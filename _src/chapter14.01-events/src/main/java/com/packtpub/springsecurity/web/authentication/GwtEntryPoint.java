package com.packtpub.springsecurity.web.authentication;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.security.web.util.UrlUtils;

public class GwtEntryPoint implements AuthenticationEntryPoint {
    private final String loginUrl = "/spring_security_login";

    @Override
    public void commence(HttpServletRequest request, HttpServletResponse response, AuthenticationException authException)
            throws IOException, ServletException {
        String scheme = request.getScheme();
        String serverName = request.getServerName();
        int serverPort = request.getServerPort();
        String url = request.getContextPath() + loginUrl;
        String login =
                UrlUtils.buildFullRequestUrl(scheme, serverName, serverPort, url, null);
        response.setHeader("login", login);
        response.sendError(HttpServletResponse.SC_UNAUTHORIZED);
    }
}