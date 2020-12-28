<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="pageTitle" value="Welcome to myCalendar!" scope="request"/>
<jsp:include page="./includes/header.jsp"/>
<p>Below you can find some highlights about myCalendar. Each sample will have a slightly different summary depending on what has been done.</p>
<h2>Expression based authorization</h2>
<ul>
    <li>The functionality hasn't changed since the last checkpoint, but feel free to give it a try.</li>
    <li>Select a link that requires authentication and observe the new login page.</li>
    <li>Try typing an invalid username/password and viewing the error message</li>
    <li>Try logging in as an admin and viewing all events. Notice we are able to view all the events</li>
    <li>Try logging in as a regular user and viewing all events (notice we get an access denied)</li>
    <li><a id="eventsLink" href="events/">All Events</a> - shows all events for all users, but only allows administrators to access the page.</li>
    <li><a id="myEventsLink" href="events/my">My Events</a> - shows all events that user1@example.com is the owner or attendee. We will discuss in Chapter 3 how to obtain the current user's events.</li>
    <li><a id="createEventLink" href="events/form">Create Event</a> - will allow creating a new Event with user1@example.com as the owner. We will discuss in Chapter 3 how to make the current user the owner.</li>
    <li><a id="logoutLink" href="j_spring_security_logout">Logout</a> - we haven't discussed it yet, but you can logout using j_spring_security_logout. Later in in this chapter we will discuss how to customize logout and provide a logout link.</li>
    <li>
        <a id="h2Link" href="admin/h2/">H2 Database Console</a> - Allows you to interact with the database using a web console. To use it:
        <ul>
            <li>Click the link above.</li>
            <li>Ensure that Generic H2 (Embedded) is selected</li>
            <li>Ensure that org.h2.Driver is the Driver Class</li>
            <li>Enter <strong>jdbc:h2:mem:dataSource</strong> as the JDBC URL</li>
            <li>Ensure that the username is sa</li>
            <li>Ensure the password is left empty</li>
            <li>Click Connect</li>
        </ul>
    </li>
</ul>
<jsp:include page="./includes/footer.jsp"/>