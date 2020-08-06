Imports System.Data.SqlClient
Public Class myconn

    Public Shared Function getconnection() As SqlConnection
        Dim cnstr As String = ConfigurationManager.ConnectionStrings("constr").ConnectionString
        Dim cn As New SqlConnection(cnstr)
        cn.Open()
        Return cn


    End Function

End Class


