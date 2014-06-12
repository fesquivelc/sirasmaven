<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<f:view>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
            <title>Users Detail</title>
            <link rel="stylesheet" type="text/css" href="/SirasMaven/faces/jsfcrud.css" />
        </head>
        <body>
            <h:panelGroup id="messagePanel" layout="block">
                <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            </h:panelGroup>
            <h1>Users Detail</h1>
            <h:form>
                <h:panelGrid columns="2">
                    <h:outputText value="UserId:"/>
                    <h:outputText value="#{users.users.userId}" title="UserId" />
                    <h:outputText value="Username:"/>
                    <h:outputText value="#{users.users.username}" title="Username" />
                    <h:outputText value="FirstName:"/>
                    <h:outputText value="#{users.users.firstName}" title="FirstName" />
                    <h:outputText value="MiddleName:"/>
                    <h:outputText value="#{users.users.middleName}" title="MiddleName" />
                    <h:outputText value="LastName:"/>
                    <h:outputText value="#{users.users.lastName}" title="LastName" />
                    <h:outputText value="Password:"/>
                    <h:outputText value="#{users.users.password}" title="Password" />

                    <h:outputText value="GroupsList:" />
                    <h:panelGroup>
                        <h:outputText rendered="#{empty users.users.groupsList}" value="(No Items)"/>
                        <h:dataTable value="#{users.users.groupsList}" var="item" 
                                     border="0" cellpadding="2" cellspacing="0" rowClasses="jsfcrud_odd_row,jsfcrud_even_row" rules="all" style="border:solid 1px" 
                                     rendered="#{not empty users.users.groupsList}">
                            <h:column>
                                <f:facet name="header">
                                    <h:outputText value="GroupId"/>
                                </f:facet>
                                <h:outputText value="#{item.groupId}"/>
                            </h:column>
                            <h:column>
                                <f:facet name="header">
                                    <h:outputText value="GroupName"/>
                                </f:facet>
                                <h:outputText value="#{item.groupName}"/>
                            </h:column>
                            <h:column>
                                <f:facet name="header">
                                    <h:outputText value="GroupDesc"/>
                                </f:facet>
                                <h:outputText value="#{item.groupDesc}"/>
                            </h:column>
                            <h:column>
                                <f:facet name="header">
                                    <h:outputText escape="false" value="&nbsp;"/>
                                </f:facet>
                                <h:commandLink value="Show" action="#{groups.detailSetup}">
                                    <f:param name="jsfcrud.currentUsers" value="#{jsfcrud_class['com.siras.controllers.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][users.users][users.converter].jsfcrud_invoke}"/>
                                    <f:param name="jsfcrud.currentGroups" value="#{jsfcrud_class['com.siras.controllers.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][item][groups.converter].jsfcrud_invoke}"/>
                                    <f:param name="jsfcrud.relatedController" value="users" />
                                    <f:param name="jsfcrud.relatedControllerType" value="com.siras.controllers.UsersController" />
                                </h:commandLink>
                                <h:outputText value=" "/>
                                <h:commandLink value="Edit" action="#{groups.editSetup}">
                                    <f:param name="jsfcrud.currentUsers" value="#{jsfcrud_class['com.siras.controllers.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][users.users][users.converter].jsfcrud_invoke}"/>
                                    <f:param name="jsfcrud.currentGroups" value="#{jsfcrud_class['com.siras.controllers.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][item][groups.converter].jsfcrud_invoke}"/>
                                    <f:param name="jsfcrud.relatedController" value="users" />
                                    <f:param name="jsfcrud.relatedControllerType" value="com.siras.controllers.UsersController" />
                                </h:commandLink>
                                <h:outputText value=" "/>
                                <h:commandLink value="Destroy" action="#{groups.destroy}">
                                    <f:param name="jsfcrud.currentUsers" value="#{jsfcrud_class['com.siras.controllers.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][users.users][users.converter].jsfcrud_invoke}"/>
                                    <f:param name="jsfcrud.currentGroups" value="#{jsfcrud_class['com.siras.controllers.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][item][groups.converter].jsfcrud_invoke}"/>
                                    <f:param name="jsfcrud.relatedController" value="users" />
                                    <f:param name="jsfcrud.relatedControllerType" value="com.siras.controllers.UsersController" />
                                </h:commandLink>
                            </h:column>
                        </h:dataTable>
                    </h:panelGroup>

                </h:panelGrid>
                <br />
                <h:commandLink action="#{users.remove}" value="Destroy">
                    <f:param name="jsfcrud.currentUsers" value="#{jsfcrud_class['com.siras.controllers.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][users.users][users.converter].jsfcrud_invoke}" />
                </h:commandLink>
                <br />
                <br />
                <h:commandLink action="#{users.editSetup}" value="Edit">
                    <f:param name="jsfcrud.currentUsers" value="#{jsfcrud_class['com.siras.controllers.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][users.users][users.converter].jsfcrud_invoke}" />
                </h:commandLink>
                <br />
                <h:commandLink action="#{users.createSetup}" value="New Users" />
                <br />
                <h:commandLink action="#{users.listSetup}" value="Show All Users Items"/>
                <br />
                <br />
                <h:commandLink value="Index" action="welcome" immediate="true" />

            </h:form>
        </body>
    </html>
</f:view>
