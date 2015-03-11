<%@ Page Title="Offer Management" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Messages.aspx.vb" Inherits="managesocio.Messages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
       <%--<div class="dropdown ">
        <button class="btn btn btn-default dropdown-toggle" type="button" id="empGroup" runat="server" data-toggle="dropdown">Select Employee Group
        <span class="caret"></span></button>
        <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
          <li role="presentation"><a role="menuitem" tabindex="-1" href="#">HTML</a></li>
          <li role="presentation"><a role="menuitem" tabindex="-1" href="#">CSS</a></li>
          <li role="presentation"><a role="menuitem" tabindex="-1" href="#">JavaScript</a></li>
          <li role="presentation"><a role="menuitem" tabindex="-1" href="#">About Us</a></li>
        </ul>
      </div>--%>

       <asp:SqlDataSource ID="socio_azure" runat="server" ConnectionString="<%$ ConnectionStrings:sociodata %>" SelectCommand="SELECT [CityId], [City] FROM [City]"></asp:SqlDataSource>
      
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        </ContentTemplate>
    </asp:UpdatePanel>

    <div class="col-md-offset-3">
        <asp:DropDownList AutoPostBack="true" ID="empGroup1" runat="server" CssClass="col-lg-10 selectpicker form-control" OnSelectedIndexChanged="empGroup1_SelectedIndexChanged">
            <asp:ListItem Value="-1" Text="Please Select" Selected="True" />
        </asp:DropDownList>
    </div>

</asp:Content>


