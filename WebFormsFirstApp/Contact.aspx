﻿<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebFormsFirstApp.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your contact page.</h3>
    <address>
        One Microsoft Way<br />
        Redmond, WA 98052-6399<br />
        <abbr title="Phone">P:</abbr>
        425.555.0100
    </address>

 


    <address>
        <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
    </address>

    <div runat="server" id="divMessage" class="message">Come on up and see me sometime.</div>
<%--that line created an HTML Server Control. you MUST add an id to make it work...
    when you switch over to the code behind, your id (divMessage or whatever)
    is recognized and you can treat it as an object.--%>
    <div>
        <label>Name</label>
        <asp:TextBox id="textName" CssClass="text-box" runat="server" />
        <asp:RequiredFieldValidator runat="server" ID="rfvName" ControlToValidate="textName" ErrorMessage="*" Display="Dynamic" />
<%--        that was a Validation Control. It makes sure that things/users do what they are supposed to--%>
    </div>
        <div>
        <label>Email</label>
        <asp:TextBox id="textEmail" CssClass="text-box" runat="server" />
        <asp:RegularExpressionValidator runat="server" ID="revEmail" ControlToValidate="textEmail" 
            ErrorMessage="Valid email address is required" ValidationExpression="^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$" />
<%--        you can add more than one validator to the same control.--%>
        <asp:RequiredFieldValidator runat="server" ID="rfvEmail" ControlToValidate="textEmail" ErrorMessage="*" Display="Dynamic"/>
    </div>
        <div>
        <label>Age</label>
        <asp:TextBox id="textAge" CssClass="text-box" runat="server" />
    </div>
    <div>
        <label>Favorite color</label>
        <asp:DropDownList ID="ddlColor" runat="server">
            <asp:ListItem Text="Please choose a color" Value="" />
            <asp:ListItem Text="Brown" Value="Brown" />
            <asp:ListItem Text="Green" Value="Green" />
            <asp:ListItem Text="Pink" Value="Pink" />
            <asp:ListItem Text="Blue" Value="Blue" />
        </asp:DropDownList>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlColor" ErrorMessage="Color required" />
    </div>
    <div>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit Info"
            onClick="btnSubmit_Click"/>
    </div>
    <div class="message">
        <%--instead of writing the message on this page, you can write it in the code behind:--%>
        <asp:Literal ID="litMessage" runat="server" />
    </div>
    <%--those divs are Web Server Controls -- stuff like buttons, textboxes, etc.--%>

</asp:Content>
