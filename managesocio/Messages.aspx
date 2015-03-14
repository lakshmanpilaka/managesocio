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

    <div style='overflow: auto; width: 100%; height: 380px;'>

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

                    <input id="OfferSubject" runat="server" placeholder="Enter Offer Subject" class="form-control" />
                    <br />

                    <textarea rows="4" id="OfferContent" runat="server" class="form-control" placeholder="Enter Offer Content"></textarea>
                    <br />
                    <asp:Button ID="btnSendOffer" runat="server" Text="Send Offer" CssClass="btn btn-primary" OnClick="btnSendOffer_Click"></asp:Button>
                </div>
            </div>
        </div>
        <div class="col-md-4 ">
            <div class="panel panel-success panel-collapse">
                <div class="panel-heading">
                    Employees of Selected Group
   
                </div>
                <div class="panel-body ">
                    <asp:GridView ID="GridView1" PageSize="4" CssClass="table table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="emp_empgroup" Width="100%" AllowPaging="True">

                        <Columns>
                            <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
                            <asp:BoundField DataField="StoreName" HeaderText="Store Name" SortExpression="StoreName" />
                        </Columns>
                        <HeaderStyle CssClass="info" />
                    </asp:GridView>
                </div>
            </div>
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
                            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" PageSize="4" OnPageIndexChanging="GridView2_PageIndexChanging"
                                AutoGenerateColumns="False"
                                CssClass="table table-bordered table-hover"
                                DataSourceID="GroupEmployee">
                                <Columns>
                                    <asp:BoundField DataField="subject" HeaderText="Subject" SortExpression="subject" />
                                    <asp:BoundField DataField="message" HeaderText="Message" SortExpression="message" />
                                    <asp:BoundField DataField="sent" HeaderText="Sent Date" SortExpression="sent" HtmlEncode="false" DataFormatString="{0:d}" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="GroupEmployee" runat="server" ConnectionString="<%$ ConnectionStrings:sociodata %>"></asp:SqlDataSource>
                        </ContentTemplate>
                    </asp:UpdatePanel>

                </div>
            </div>
        </div>

    </div>
    <div style='overflow: auto;'>
        <font color="red">Making a historic visit to a region once ravaged by strife, Prime Minister Narendra Modi on Saturday called for equitable development and respect for all citizens in Sri Lanka, seen as an oblique reference to Tamils who had suffered during the war between the LTTE and forces.

Winding up his public engagements on his two-day trip to the island with a hugely-symbolic visit to Tamil-dominated Jaffna, the first by an Indian Prime Minister, he said he was glad that it "is one to wipe tears from the eyes of those who suffered".

The Prime Minister, who is also the second international leader to visit the region after Premier David Cameron in 2013, handed over 27,000 new homes to Tamils who became homeless during the civil war.

The houses were built with Indian assistance as part of India's efforts to help in the reconciliation process.

Modi's visit came a day after he had met President Maithripala Sirisena in Colombo and favoured a life of equality, justice, peace and dignity in a unified Sri Lanka.

He had also urged the Sri Lankan government to ensure early and full implementation of the 13th Amendment relating to devolution of powers to Tamils and to go beyond that in finding a political solution.

Laying the foundation today for a Cultural Centre being built here by India, Modi said, "Sri Lanka should also progress. Unity, peace and amity are essential ingredients for equitable development where there is respect for all citizens."

Northern Province chief minister and Tamil leader CV Wigneswaran, who was present at the event, made a strong pitch for replacing the 13th Amendment with a more dynamic system of devolution of powers.</font>
    </div>
</asp:Content>


