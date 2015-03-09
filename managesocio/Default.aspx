<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="managesocio._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    
       <div class="col-md-6 col-md-offset-0">

          <div class="panel panel-success">
    <div class="panel-heading ">
        <div class="caption">Attendance</div>
        <div class="tools">
            <ul role="tablist" class="nav nav-tabs">
                <li class="active"><a href="#tab_1" data-toggle="tab">Today</a></li>
                <li><a href="#tab_2" data-toggle="tab">Week</a></li>
                <li><a href="#tab_3" data-toggle="tab">Month</a></li>
            </ul>
        </div>
    </div>
    <div class="tab-content">
        <div id="tab_1" class="tab-pane fade in active">
            <table class="table table-bordered table-hover table-striped">
    <thead >
    <tr>
        <th>Store Name</th>
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
        <div id="tab_2" class="tab-pane fade">
            <table class="table table-bordered table-hover table-striped">
    <thead >
    <tr>
        <th>Store Name</th>
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
        <div id="tab_3" class="tab-pane fade">
            <table class="table table-bordered table-hover table-striped">
    <thead >
    <tr>
        <th>Store Name</th>
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
           </div>

       

</asp:Content>
