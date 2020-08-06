<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="Defualt.aspx.vb" Inherits="StudentRegistration.Defual" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <style type="text/css">
        .auto-style1 {
            width: 140%;
        }
        .auto-style2 {
            height: 23px;
            width: 246px;
        }
        .auto-style3 {
            height: 23px;
            width: 53px;
                font-family: Large, Century Gothic;
            font-size: large;
        }
        .auto-style4 {
                font-family: Large, Century Gothic;
            font-size: large;
            width: 53px;
        }
        .auto-style5 {
            width: 246px;
        }
        .auto-style7 {
            width: 244px;
        }
        .auto-style8 {
            font-family: Large, Century Gothic;
            font-size: large;
            width: 53px;
            height: 98px;
        }
        .auto-style9 {
            width: 246px;
            height: 98px;
        }
        .auto-style10 {
            width: 244px;
            height: 98px;
        }
        .auto-style11 {
            width: 429px;
        }
        .auto-style12 {
            width: 429px;
            height: 98px;
        }
    </style>
        <asp:Panel ID="Panel1" runat="server" Height="258px" Width="528px">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Username</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtusername" runat="server" Width="237px" Height="34px" BackColor="#0066FF" BorderColor="Lime" BorderStyle="Solid" BorderWidth="4px" Font-Size="Larger" ForeColor="White"></asp:TextBox>
                        </td>
                    <td class="auto-style11">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername" Display="Dynamic" ErrorMessage="please Enter username" Font-Bold="True" ForeColor="Red" Font-Names="Century Gothic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtusername" Display="Dynamic" ErrorMessage="corect Username must be more than 3 less than 13 letters" Font-Bold="True" Font-Names="Century Gothic" ForeColor="Red" ValidationExpression="^[\s\S]{4,12}$"></asp:RegularExpressionValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtusername" Display="Dynamic" ErrorMessage="Use letters only please" Font-Bold="True" Font-Names="Century Gothic" ForeColor="Red" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Password</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="237px" Height="34px" BackColor="#0066FF" BorderColor="Lime" BorderStyle="Solid" BorderWidth="4px" Font-Size="Larger" ForeColor="White"></asp:TextBox>
                    </td>
                    <td class="auto-style12">
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword" ErrorMessage="please Enter password" Font-Bold="True" ForeColor="Red" Font-Names="Century Gothic" Display="Dynamic"></asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtpassword" Display="Dynamic" ErrorMessage="the correct passwod must be between 5 upto 13 number" Font-Bold="True" Font-Names="Century Gothic" ForeColor="Red" ValidationExpression="^[\d+]{5,20}$"></asp:RegularExpressionValidator>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Button ID="Button1" runat="server" Font-Names="Century Gothic" Height="53px" Text="Login" Width="243px" Font-Size="Larger" BorderColor="#6600FF" BorderStyle="Solid" BorderWidth="4px" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
</asp:Content>
