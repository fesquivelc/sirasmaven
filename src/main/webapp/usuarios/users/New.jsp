<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<f:view>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
            <title>New Users</title>
            <link rel="stylesheet" type="text/css" href="/SirasMaven/faces/jsfcrud.css" />
        </head>
        <body>
            <h:panelGroup id="messagePanel" layout="block">
                <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            </h:panelGroup>
            <h1>New Users</h1>
            <h:form>
                <h:inputHidden id="validateCreateField" validator="#{users.validateCreate}" value="value"/>
                <h:panelGrid columns="2">
                    <h:outputText value="UserId:"/>
                    <h:inputText id="userId" value="#{users.users.userId}" title="UserId" required="true" requiredMessage="The userId field is required." />
                    <h:outputText value="Username:"/>
                    <h:inputText id="username" value="#{users.users.username}" title="Username" required="true" requiredMessage="The username field is required." />
                    <h:outputText value="FirstName:"/>
                    <h:inputText id="firstName" value="#{users.users.firstName}" title="FirstName" />
                    <h:outputText value="MiddleName:"/>
                    <h:inputText id="middleName" value="#{users.users.middleName}" title="MiddleName" />
                    <h:outputText value="LastName:"/>
                    <h:inputText id="lastName" value="#{users.users.lastName}" title="LastName" />
                    <h:outputText value="Password:"/>
                    <h:inputText id="password" value="#{users.users.password}" title="Password" required="true" requiredMessage="The password field is required." />
                    <h:outputText value="GroupsList:"/>
                    <h:selectManyListbox id="groupsList" value="#{users.users.jsfcrud_transform[jsfcrud_class['com.siras.controllers.util.JsfUtil'].jsfcrud_method.collectionToArray][jsfcrud_class['com.siras.controllers.util.JsfUtil'].jsfcrud_method.arrayToList].groupsList}" title="GroupsList" size="6" converter="#{groups.converter}" >
                        <f:selectItems value="#{groups.groupsItemsAvailableSelectMany}"/>
                    </h:selectManyListbox>

                </h:panelGrid>
                <br />
                <h:commandLink action="#{users.create}" value="Create"/>
                <br />
                <br />
                <h:commandLink action="#{users.listSetup}" value="Show All Users Items" immediate="true"/>
                <br />
                <br />
                <h:commandLink value="Index" action="welcome" immediate="true" />

            </h:form>
        </body>
    </html>
</f:view>
