<%@ Page Title="Calendar" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Calendar.aspx.cs" Inherits="WebFormsFirstApp.Calendar" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Create a list of events in a repeater from a calendar control.</h3>
    <div class="form-group">
        <label>Event Name:</label>
        <asp:TextBox ID="textEvent" CssClass="form-control" runat="server" />
    </div>
    <div class ="form-group">
        <label>Event date:</label>
        <asp:Calendar ID="calendarEvents" runat="server" />
<%--        remember, by adding an ID you can access this in the code behind page--%>
    </div>
    <div class="form-group">
        <asp:Button ID="btnEvent" runat="server" CssClass="btn btn-primary btm-large" 
            Text="Add Event" OnClick="btnEvent_Click" />
    </div>
    <h3>Events repeater.</h3>
    <div>
        <asp:Repeater ID="rptEvents" runat="server" >
            <ItemTemplate>
                <h3><%# DataBinder.Eval(Container.DataItem, "EventDate") %>
                    <small><%# DataBinder.Eval(Container.DataItem, "EventName") %></small>
                </h3>
            </ItemTemplate>
        </asp:Repeater>
    </div>
<%--    you need to create the events and dates variables in your code behind.
    this is done by hand. go check it out.--%>
</asp:Content>
