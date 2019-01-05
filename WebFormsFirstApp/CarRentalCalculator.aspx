<%@ Page Title="Car Rental" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CarRentalCalculator.aspx.cs" Inherits="WebFormsFirstApp.CarRentalCalculator" %>

<script runat="server">

    protected void ddlStates_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
</script>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    
    <h1>Lesson 5. Quotes for rentals.</h1>
    <p class="lead">Base Price: <asp:Literal ID="ltBasePrice" runat="server" /></p>
    <p>Additional charges: States back east cost more. States out west cost less.</p>

    <div class="form-group">
        <label>Your state:</label>
        <asp:DropDownList ID="ddlStates" CssClass="form-control" OnSelectedIndexChanged="ddlStates_SelectedIndexChanged" AutoPostBack="true" runat="server">
            <asp:ListItem Value="">Select your state</asp:ListItem>
            <asp:ListItem Value="DC">District of Columbia</asp:ListItem>
            <asp:ListItem Value="OH">Ohio</asp:ListItem>
            <asp:ListItem Value="NC">North Carolina</asp:ListItem>
            <asp:ListItem Value="CA">California</asp:ListItem>
            <asp:ListItem Value="OR">Oregon</asp:ListItem>
            <asp:ListItem Value="NY">New York</asp:ListItem>
            <asp:ListItem Value="IL">Illinois</asp:ListItem>

        </asp:DropDownList>


    </div>
    <div class="jumbotron">
        <h3>Your custom price: <asp:Literal ID="ltCustomPrice" runat="server" Text="(select your state to get your price)" /></h3>
        <h4>Your price is not updating. Hmm...</h4>
    </div>
</asp:Content>
