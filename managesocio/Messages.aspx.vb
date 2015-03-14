Imports System.Data.SqlClient

Public Class Messages
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim ddEmpGroup As New DropDownList
        If Not IsPostBack Then

            Dim connStr As String
            Dim selectStatement As String
            Dim sqlAdapter As SqlDataAdapter
            Dim dt As DataTable
            Dim con As SqlConnection

            connStr = "Data Source=mqjkakgxkk.database.windows.net,1433;Initial Catalog=sociodata;Persist Security Info=True;User ID=laks;Password=sqlPassword@123"

            con = New SqlConnection(connStr)
            selectStatement = "Select GroupId,GroupName from [Group]"
            sqlAdapter = New SqlDataAdapter(selectStatement, con)
            dt = New DataTable()
            sqlAdapter.Fill(dt)
            empGroup1.DataSource = dt
            empGroup1.DataBind()
            empGroup1.DataTextField = "GroupName"
            empGroup1.DataValueField = "GroupId"
            empGroup1.DataBind()
            empGroup1.Items.Insert(0, New ListItem("Select Employee Group", "-1"))
        End If

    End Sub


    Protected Sub empGroup1_SelectedIndexChanged(sender As Object, e As EventArgs)

        If empGroup1.SelectedValue <> "-1" Then
            GridView1.Visible = True
            GridView2.Visible = True

            emp_empgroup.SelectCommand = "SELECT Employee.FirstName, Employee.LastName, Store.StoreName, Employee.MobileNo FROM EmpGroups INNER JOIN Employee ON EmpGroups.EmpId = Employee.EmpId INNER JOIN Store ON Employee.StoreId = Store.StoreId WHERE (EmpGroups.GroupId = " & empGroup1.SelectedValue & ")"
            GridView1.DataSourceID = "emp_empGroup"
            GridView1.DataBind()

            GroupEmployee.SelectCommand = "SELECT Offer.subject,SUBSTRING(Offer.message, 1, 20) AS message, Offer.sent FROM Offer INNER JOIN OfferGroups ON Offer.OfferId = OfferGroups.OfferId WHERE (OfferGroups.GroupId = " & empGroup1.SelectedValue & ")  ORDER BY offer.sent desc"
            GridView2.DataSourceID = "GroupEmployee"
            GridView2.DataBind()
        Else
            GridView1.Visible = False
            GridView2.Visible = False

        End If

    End Sub

    
    Protected Sub btnSendOffer_Click(sender As Object, e As EventArgs)
        Dim MyConnection As SqlConnection
        MyConnection = New SqlConnection("Data Source=mqjkakgxkk.database.windows.net,1433;Initial Catalog=sociodata;Persist Security Info=True;User ID=laks;Password=sqlPassword@123")
        Dim myCommand As SqlCommand
        Dim insertCmd As String
        MyConnection.Open()

        insertCmd = "insert into Offer  (sender, subject, message, sent) values ('" & Context.User.Identity.Name & "', '" & OfferSubject.Value & "', '" & OfferContent.Value & "', dbo.GetLocalDate(DEFAULT))"
        myCommand = New SqlCommand(insertCmd, MyConnection)
        myCommand.ExecuteNonQuery()

        insertCmd = "insert into offergroups (offerId, GroupId) values ((select max(offerId) from offer where sender = '" & Context.User.Identity.Name & "'), " & empGroup1.SelectedValue & " )"
        myCommand = New SqlCommand(insertCmd, MyConnection)
        myCommand.ExecuteNonQuery()

        '------------------ Gridview Bind
        GrpEmpBind()

        UpdatePanel1.UpdateMode = UpdatePanelUpdateMode.Conditional
        UpdatePanel1.Update()



    End Sub
    Protected Sub GrpEmpBind()
        GroupEmployee.SelectCommand = "SELECT Offer.subject, SUBSTRING(Offer.message, 1, 20) AS message, Offer.sent FROM Offer INNER JOIN OfferGroups ON Offer.OfferId = OfferGroups.OfferId WHERE (OfferGroups.GroupId = " & empGroup1.SelectedValue & ") ORDER BY offer.sent desc"
        GridView2.DataSourceID = "GroupEmployee"
        GridView2.DataBind()
    End Sub
    Protected Sub GridView2_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)
        GridView2.PageIndex = e.NewPageIndex
        GrpEmpBind()
    End Sub
End Class