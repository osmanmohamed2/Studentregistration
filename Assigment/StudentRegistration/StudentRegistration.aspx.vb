Imports System.Data.SqlClient
Public Class WebForm1

    Inherits System.Web.UI.Page
    Dim cmd As New SqlCommand
    Dim da As New SqlDataAdapter
    Dim dr As SqlDataReader
    Dim ds As New DataSet

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        display()

        cmd.Connection = myconn.getconnection
        cmd.CommandText = "select *from StudentNames"
        dr = cmd.ExecuteReader()
        GridView1.DataSource = dr
        GridView1.DataBind()
    End Sub
    Sub display()
        ds = New DataSet
        da.SelectCommand = New SqlCommand
        da.SelectCommand.Connection = myconn.getconnection
        da.SelectCommand.CommandText = "select *from StudentNames"
        da.Fill(ds, "StudentNames")
        GridView1.DataSource = ds.Tables(0)
        GridView1.DataBind()

    End Sub
    Protected Sub txtAge_TextChanged(sender As Object, e As EventArgs) Handles txtAge.TextChanged

    End Sub

    Protected Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click
        cmd.Connection = myconn.getconnection
        cmd.CommandText = "insert into StudentNames values( @StudentID,@FullName,@Class,@MotherName,@Age,@Address,@Mobile,@Email)"
        cmd.Parameters.AddWithValue("@StudentID", txtId.Text)
        cmd.Parameters.AddWithValue("@FullName", txtName.Text)
        cmd.Parameters.AddWithValue("@Class", DropDownList1.SelectedValue)
        cmd.Parameters.AddWithValue("@MotherName", txtmother.Text)
        cmd.Parameters.AddWithValue("@Age", txtAge.Text)
        cmd.Parameters.AddWithValue("@Address", txtaddress.Text)
        cmd.Parameters.AddWithValue("@Mobile", txtMobile.Text)
        cmd.Parameters.AddWithValue("@Email", txtEmail.Text)

        cmd.ExecuteNonQuery()

        Response.Write("data hasbeen saved")

        display()

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        txtId.Text = GridView1.Rows(GridView1.SelectedIndex).Cells(1).Text.ToString
        txtName.Text = GridView1.Rows(GridView1.SelectedIndex).Cells(2).Text.ToString
        txtmother.Text = GridView1.Rows(GridView1.SelectedIndex).Cells(4).Text.ToString
        txtAge.Text = GridView1.Rows(GridView1.SelectedIndex).Cells(5).Text.ToString
        txtaddress.Text = GridView1.Rows(GridView1.SelectedIndex).Cells(6).Text.ToString
        txtMobile.Text = GridView1.Rows(GridView1.SelectedIndex).Cells(7).Text.ToString
        txtEmail.Text = GridView1.Rows(GridView1.SelectedIndex).Cells(8).Text.ToString
        Dim value As String = GridView1.Rows(GridView1.SelectedIndex).Cells(3).Text.ToString()
        For i = 0 To DropDownList1.Items.Count
            DropDownList1.SelectedIndex = i
            If (DropDownList1.SelectedValue = value) Then
                Return
            End If
        Next

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles btnUpdate.Click
        cmd.Connection = myconn.getconnection
        cmd.CommandText = "update StudentNames set StudentID=@StudentID,FullName=@FullName,Class=@Class,MotherName=@MotherName,Age=@Age,Address=@Address,Mobile=@Mobile,Email=@Email where StudentID=@StudentID"
        cmd.Parameters.AddWithValue("@StudentID", txtId.Text)
        cmd.Parameters.AddWithValue("@FullName", txtName.Text)
        cmd.Parameters.AddWithValue("@Class", DropDownList1.SelectedValue)
        cmd.Parameters.AddWithValue("@MotherName", txtmother.Text)
        cmd.Parameters.AddWithValue("@Age", txtAge.Text)
        cmd.Parameters.AddWithValue("@Address", txtaddress.Text)
        cmd.Parameters.AddWithValue("@Mobile", txtMobile.Text)
        cmd.Parameters.AddWithValue("@Email", txtEmail.Text)

        cmd.ExecuteNonQuery()

        Response.Write("data hasbeen Updated")

        display()
    End Sub

    Protected Sub btnDelete_Click(sender As Object, e As EventArgs) Handles btnDelete.Click
        cmd.Connection = myconn.getconnection
        cmd.CommandText = "delete StudentNames where StudentID=@StudentID"
        cmd.Parameters.AddWithValue("@StudentID", txtId.Text)

        cmd.ExecuteNonQuery()

        Response.Write("data hasbeen deleted")

        display()
    End Sub

    Protected Sub txtName_TextChanged(sender As Object, e As EventArgs) Handles txtName.TextChanged


    End Sub

    Protected Sub txtaddress_TextChanged(sender As Object, e As EventArgs) Handles txtaddress.TextChanged

    End Sub

    Protected Sub txtMobile_TextChanged(sender As Object, e As EventArgs) Handles txtMobile.TextChanged

    End Sub

    Protected Sub txtmother_TextChanged(sender As Object, e As EventArgs) Handles txtmother.TextChanged


    End Sub

    Protected Sub txtId_TextChanged(sender As Object, e As EventArgs) Handles txtId.TextChanged

    End Sub

    
    Protected Sub Button1_Click1(sender As Object, e As EventArgs) Handles Button1.Click
        If txtId.Text <> "" Then
            txtId.Text = ""
        End If
        txtName.Text = ""
        txtaddress.Text = ""
        txtmother.Text = ""
        txtMobile.Text = ""
        txtEmail.Text = ""
        txtAge.Text = ""


    End Sub
End Class
