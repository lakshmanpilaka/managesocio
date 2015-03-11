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
            selectStatement = "Select CityId,City from City"
            sqlAdapter = New SqlDataAdapter(selectStatement, con)
            dt = New DataTable()
            sqlAdapter.Fill(dt)
            empGroup1.DataSource = dt
            empGroup1.DataBind()
            empGroup1.DataTextField = "City"
            empGroup1.DataValueField = "CityId"
            empGroup1.DataBind()
            empGroup1.Items.Insert(0, New ListItem("Please select employee group", "-1"))
        End If


    End Sub



    Protected Sub AddCity()
        Dim MyConnection As SqlConnection
        MyConnection = New SqlConnection("Data Source=mqjkakgxkk.database.windows.net,1433;Initial Catalog=sociodata;Persist Security Info=True;User ID=laks;Password=sqlPassword@123")
        Dim insertCmd As String
        insertCmd = "insert into CIty (City) values (' ');"
        Dim myCommand As SqlCommand
        myCommand = New SqlCommand(insertCmd, MyConnection)
        myCommand.Connection.Open()
        myCommand.ExecuteNonQuery()

        'GridView1.DataBind()
        'UpdatePanel1.UpdateMode = UpdatePanelUpdateMode.Conditional
        'UpdatePanel1.Update()
    End Sub

    
    Protected Sub empGroup1_SelectedIndexChanged(sender As Object, e As EventArgs)
        MsgBox(empGroup1.SelectedItem.Value)
    End Sub
End Class