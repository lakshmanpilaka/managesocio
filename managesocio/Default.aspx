<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="managesocio._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    
       <div class="col-md-6 col-md-offset-0">

<ul class="nav nav-tabs nav-tabs" data-tabs="tabs">
              <li class="dropdown active">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">Attendance <b class="caret"></b></a>
        <ul class="dropdown-menu">
           <li class="active"><a href="#dropdown1" data-toggle="tab" aria-expanded="true">Today</a></li>
            <li class=""><a href="#dropdown2" data-toggle="tab" aria-expanded="false">This Week</a></li>
            
            </ul>
</ul>

           <div id="my-tab-content" class="tab-content">
               <div class="tab-pane fade active in" id="dropdown1" >
                   Today
                   <asp:GridView ID="GridView1" Width="100%" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataSourceID="Sociodata_Azure" GridLines="None">
                       <Columns>
                           <asp:BoundField DataField="StoreName" HeaderText="Store Name" SortExpression="StoreName" />
                           <asp:BoundField DataField="Area" HeaderText="Area" SortExpression="Area" />
                           <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                           <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
                       </Columns>
                       <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                       <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                       <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                       <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                       <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                       <SortedAscendingCellStyle BackColor="#F1F1F1" />
                       <SortedAscendingHeaderStyle BackColor="#594B9C" />
                       <SortedDescendingCellStyle BackColor="#CAC9C9" />
                       <SortedDescendingHeaderStyle BackColor="#33276A" />
                   </asp:GridView>
                   <asp:SqlDataSource ID="Sociodata_Azure" runat="server" ConnectionString="<%$ ConnectionStrings:sociodata %>" SelectCommand="SELECT [StoreName], [Area], [City], [Region] FROM [vEmployee]"></asp:SqlDataSource>
               </div>
  <div class="tab-pane fade" id="dropdown2">
  <table class="table table-bordered table-hover table-striped">
                <thead>
                    <tr>
                        <th>Store Name Week</th>
                        <th>Absent</th>
                        <th>Late</th>
                        <th>Present</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Store 1</td>
                        <td>13</td>
                        <td>23</td>
                        <td>45</td>
                    </tr>
                    <tr>
                        <td>Store 2</td>
                        <td>17</td>
                        <td>45</td>
                        <td>32</td>
                    </tr>
                    <tr>
                        <td>Store 3</td>
                        <td>23</td>
                        <td>30</td>
                        <td>19</td>
                    </tr>
                    <tr>
                        <td>Store 4</td>
                        <td>30</td>
                        <td>15</td>
                        <td>16</td>
                    </tr>
                </tbody>
            </table>
  </div>
           </div>

           </div>

       

</asp:Content>
