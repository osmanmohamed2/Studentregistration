Imports System.Data.SqlClient
Public Class Defual
    Inherits System.Web.UI.Page
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        cmd.Connection = myconn.getconnection
        cmd.CommandText = "select *from Users where UserName=@UserName and password=@password "
        cmd.Parameters.AddWithValue("@UserName", txtusername.Text)
        cmd.Parameters.AddWithValue("@password", txtpassword.Text)
        dr = cmd.ExecuteReader
        If (dr.Read) Then
            Response.Redirect("StudentRegistration.aspx")
        Else
            Response.Write("invalid user or password")

        End If

    End Sub
End Class