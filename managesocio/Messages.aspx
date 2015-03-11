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
    
        <div class="col-md-4 ">
            <div class="panel  panel-success">
    <div class="panel-heading">
        Send A New Offer
    </div>
    <div class="panel-body">
            <asp:DropDownList AutoPostBack="true" ID="empGroup1" runat="server" CssClass=" selectpicker form-control" OnSelectedIndexChanged="empGroup1_SelectedIndexChanged">
                <asp:ListItem Value="-1" Text="Please Select" Selected="True" />
            </asp:DropDownList>
        <br />

        <Input ID="OfferSubject" runat="server" placeholder="Enter Offer Subject" Class="form-control"/>
        <br />

        <textarea rows="4" id="OfferContent" runat="server" class="form-control" placeholder="Enter Offer Content"></textarea>
        <br />
        <asp:Button ID="btnSendOffer"   runat="server" Text="Send Offer" CssClass="btn btn-primary" OnClick="btnSendOffer_Click" ></asp:Button>
       </div>
</div>
</div>
        <div class="col-md-4 ">
            <div class="panel panel-success panel-collapse">
    <div class="panel-heading">
        Employees of Selected Group
    </div>
    <div class="panel-body ">
<asp:GridView ID="GridView1" CssClass="table table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="emp_empgroup" Width="100%" AllowPaging="True">
    
    <Columns>
        <asp:BoundField DataField="FirstName"  HeaderText="First Name" SortExpression="FirstName" />
        <asp:BoundField DataField="StoreName" HeaderText="Store Name" SortExpression="StoreName" />
    </Columns>
    <HeaderStyle CssClass="info" />
        </asp:GridView>
        </div></div>
            <asp:SqlDataSource ID="emp_empgroup" runat="server" ConnectionString="<%$ ConnectionStrings:sociodata %>" />
                        </div>
    <div class="col-md-4 ">
            <div class="panel  panel-success">
    <div class="panel-heading">
        Offers sent to the group 
    </div>
    <div class="panel-body">
        
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="table table-bordered table-hover" DataSourceID="GroupEmployee">
                    <Columns>
                        <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
                        <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" />
                        <asp:BoundField DataField="sent" HeaderText="sent" SortExpression="sent" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="GroupEmployee" runat="server" ConnectionString="<%$ ConnectionStrings:sociodata %>"></asp:SqlDataSource>
            </ContentTemplate>
        </asp:UpdatePanel>
        
        </div>
                </div></div>

</asp:Content>


