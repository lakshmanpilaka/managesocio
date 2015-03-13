<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb"  %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    
 <div class="col-md-6 col-md-offset-0">

<ul class="nav nav-tabs nav-tabs" data-tabs="tabs">
              <li class="dropdown active">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">Attendance <b class="caret"></b></a>
        <ul class="dropdown-menu">
           <li class=""><a href="#dropdown1" data-toggle="tab" aria-expanded="true">Today</a></li>
            <li class=""><a href="#dropdown2" data-toggle="tab" aria-expanded="false">This Week</a></li>
            <li class=""><a href="#dropdown3" data-toggle="tab" aria-expanded="false">This Month</a></li>
            </ul>
</ul>

<div id="my-tab-content" class="tab-content">

 <div class="tab-pane fade active in" id="dropdown1" >

      <asp:GridView ID="GridView1" Width="100%" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="Attendance_Today" AllowSorting="True" ForeColor="Black" GridLines="Horizontal">
                       <Columns>
                           <asp:BoundField DataField="Level1" HeaderText="Region" SortExpression="Level1" />
                           <asp:BoundField DataField="Level2" HeaderText="City" SortExpression="Level2" />
                           <asp:BoundField DataField="Level3" HeaderText="Area" SortExpression="Level3" />
                           <asp:BoundField DataField="Absent" HeaderText="Absent" SortExpression="Absent" />
                           <asp:BoundField DataField="Late" HeaderText="Late" SortExpression="Late" />
                           <asp:BoundField  DataField="Present" HeaderText="Present" SortExpression="Present" />
                       </Columns>
                        
                       <FooterStyle BackColor="#CCCC99" ForeColor="Black"  />
                       <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                       <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                       <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                       <SortedAscendingCellStyle BackColor="#F7F7F7" />
                       <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                       <SortedDescendingCellStyle BackColor="#E5E5E5" />
                       <SortedDescendingHeaderStyle BackColor="#242121" />
                   </asp:GridView>
                   <asp:SqlDataSource ID="Attendance_Today" runat="server" ConnectionString="<%$ ConnectionStrings:sociodataConnectionString %>" SelectCommand="
select repflag, Level1,Level2,Level3,Sum(Present) Present,Sum(Absent) Absent,Sum(Late) Late from vAttendance where repflag = 1 group by repflag,Level1,Level2,Level3
"></asp:SqlDataSource>
  </div>

  <div class="tab-pane fade" id="dropdown2">
              <asp:GridView ID="GridView3" Width="100%" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="Attendance_Week" AllowSorting="True" ForeColor="Black" GridLines="Horizontal">
                       <Columns>
                           <asp:BoundField DataField="Level1" HeaderText="Region" SortExpression="Level1" />
                           <asp:BoundField DataField="Level2" HeaderText="City" SortExpression="Level2" />
                           <asp:BoundField DataField="Level3" HeaderText="Area" SortExpression="Level3" />
                           <asp:BoundField DataField="Absent" HeaderText="Absent" SortExpression="Absent" />
                           <asp:BoundField DataField="Late" HeaderText="Late" SortExpression="Late" />
                           <asp:BoundField  DataField="Present" HeaderText="Present" SortExpression="Present" />
                       
                       </Columns>
                        
                       <FooterStyle BackColor="#CCCC99" ForeColor="Black"  />
                       <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                       <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                       <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                       <SortedAscendingCellStyle BackColor="#F7F7F7" />
                       <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                       <SortedDescendingCellStyle BackColor="#E5E5E5" />
                       <SortedDescendingHeaderStyle BackColor="#242121" />
                   </asp:GridView>
                   <asp:SqlDataSource ID="Attendance_Week" runat="server" ConnectionString="<%$ ConnectionStrings:sociodataConnectionString %>" SelectCommand="
select repflag, Level1,Level2,Level3,Sum(Present) Present,Sum(Absent) Absent,Sum(Late) Late from vAttendance where repflag = 1 group by repflag,Level1,Level2,Level3
"></asp:SqlDataSource>
  </div>

  <div class="tab-pane fade" id="dropdown3">
      <asp:GridView ID="GridView2" Width="100%" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="Attendance_Month" AllowSorting="True" ForeColor="Black" GridLines="Horizontal">
                       <Columns>
                           <asp:BoundField DataField="Level1" HeaderText="Region" SortExpression="Level1" />
                           <asp:BoundField DataField="Level2" HeaderText="City" SortExpression="Level2" />
                           <asp:BoundField DataField="Level3" HeaderText="Area" SortExpression="Level3" />
                           <asp:BoundField DataField="Absent" HeaderText="Absent" SortExpression="Absent" />
                           <asp:BoundField DataField="Late" HeaderText="Late" SortExpression="Late" />
                           <asp:BoundField  DataField="Present" HeaderText="Present" SortExpression="Present" />
                       
                       </Columns>
                        
                       <FooterStyle BackColor="#CCCC99" ForeColor="Black"  />
                       <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                       <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                       <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                       <SortedAscendingCellStyle BackColor="#F7F7F7" />
                       <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                       <SortedDescendingCellStyle BackColor="#E5E5E5" />
                       <SortedDescendingHeaderStyle BackColor="#242121" />
                   </asp:GridView>
                   <asp:SqlDataSource ID="Attendance_Month" runat="server" ConnectionString="<%$ ConnectionStrings:sociodataConnectionString %>" SelectCommand="
select repflag, Level1,Level2,Level3,Sum(Present) Present,Sum(Absent) Absent,Sum(Late) Late from vAttendance where repflag = 1 group by repflag,Level1,Level2,Level3
"></asp:SqlDataSource>
  </div>

 </div>

</div>
 
    <div class="col-md-6 col-md-offset-0">
<ul class="nav nav-tabs nav-tabs" data-tabs="tabs">

          <li class="dropdown active">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">Approvals <b class="caret"></b></a>
        <ul class="dropdown-menu">
           <li class=""><a href="#dropdown4" data-toggle="tab" aria-expanded="true">Leave</a></li>
            <li class=""><a href="#dropdown5" data-toggle="tab" aria-expanded="false">Attendance</a></li>
            </ul>
              </ul>
</div>   
       

</asp:Content>
