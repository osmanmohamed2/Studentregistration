<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="StudentRegistration.aspx.vb" Inherits="StudentRegistration.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style3 {
            height: 23px;
            width: 153px;
            font-family: Large, Century Gothic;
            font-size: large;
        }
       
        .auto-style4 {
            height: 23px;
        }
        .auto-style6 {
            width: 519px;
        }
        .auto-style10 {
            width: 329px;
        }
        .auto-style11 {
            height: 23px;
            width: 329px;
        }
        .auto-style12 {
            width: 153px;
            font-family: Large, Century Gothic;
            font-size: large;
        }
    </style>
   </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:Panel ID="Panel1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style12">&nbsp; Student-ID</td>
            <td id="td" class="auto-style10">
                <asp:TextBox ID="txtId" runat="server" Height="30px" Width="325px" BorderColor="Lime" BorderStyle="Solid" BackColor="#0066FF" BorderWidth="4px" Font-Names="Times New Roman" Font-Size="Larger" ForeColor="White" MaxLength="3"></asp:TextBox>
                </td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Student ID is empty" Font-Bold="True" ForeColor="Red" ControlToValidate="txtId" Font-Names="Century Gothic" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ControlToValidate="txtId" Display="Dynamic" ErrorMessage="please Use  only numbers between 1 upto 999" Font-Bold="True" Font-Names="Century Gothic" ForeColor="Red" ValidationExpression="^(?=.*[1-9])(?:[1-9]\d*\.?|0?\.)\d*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp; Full-Name</td>
            <td id="Td1" class="auto-style11">
                <asp:TextBox ID="txtName" runat="server" Height="30px" Width="325px" BorderColor="Lime" BorderStyle="Solid" BackColor="#0066FF" BorderWidth="4px" Font-Names="Times New Roman" Font-Size="Larger" ForeColor="White"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Full name is empty" Font-Bold="True" ForeColor="Red" ControlToValidate="txtName" Display="Dynamic" Font-Names="Century Gothic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="Use letters only please" Font-Bold="True" ForeColor="Red" ValidationExpression="[a-zA-Z ]*$" Font-Names="Century Gothic"></asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="please Enter more than 10 less than 50 letters" Font-Bold="True" Font-Names="Century Gothic" ForeColor="Red" ValidationExpression="^[\s\S]{10,50}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp; Class-Name</td>
            <td id="Td3" class="auto-style11">
                <asp:DropDownList ID="DropDownList1" runat="server" EnableTheming="True" BackColor="#0066FF" Font-Size="Large" ForeColor="White">
                    <asp:ListItem>Form one</asp:ListItem>
                    <asp:ListItem>form two</asp:ListItem>
                    <asp:ListItem>form three</asp:ListItem>
                    <asp:ListItem>form four</asp:ListItem>
                </asp:DropDownList>

            </td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp; Mother-Name</td>
            <td id="Td2" class="auto-style10">
                <asp:TextBox ID="txtmother" runat="server" Height="30px" Width="325px" BorderColor="Lime" BorderStyle="Solid" BackColor="#0066FF" BorderWidth="4px" Font-Names="Times New Roman" Font-Size="Larger" ForeColor="White"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Mother name is empty" Font-Bold="True" ForeColor="Red" ControlToValidate="txtmother" Display="Dynamic" Font-Names="Century Gothic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtmother" Display="Dynamic" ErrorMessage="Use letters only please" Font-Bold="True" ForeColor="Red" ValidationExpression="[a-zA-Z ]*$" Font-Names="Century Gothic"></asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtmother" Display="Dynamic" ErrorMessage="please Enter more than 10 less than 50 letters" Font-Bold="True" Font-Names="Century Gothic" ForeColor="Red" ValidationExpression="^[\s\S]{10,50}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp; Age</td>
            <td id="Td4" class="auto-style10">
                <asp:TextBox ID="txtAge" runat="server" Height="30px" Width="325px" TextMode="Number" BorderColor="Lime" BorderStyle="Solid" BackColor="#0066FF" BorderWidth="4px" Font-Names="Times New Roman" Font-Size="Larger" ForeColor="White"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Age name is empty" Font-Bold="True" ForeColor="Red" ControlToValidate="txtAge" Display="Dynamic" Font-Names="Century Gothic"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge" Display="Dynamic" ErrorMessage="age must be between 18 upto 50" Font-Bold="True" ForeColor="Red" MaximumValue="50" MinimumValue="18" Font-Names="Century Gothic"></asp:RangeValidator>
            </td>
        </tr>
       <tr>
            <td class="auto-style3">&nbsp; Address</td>
            <td id="Td5" class="auto-style11">
                <asp:TextBox ID="txtaddress" runat="server" Height="30px" Width="325px" BorderColor="Lime" BorderStyle="Solid" BackColor="#0066FF" BorderWidth="4px" Font-Names="Times New Roman" Font-Size="Larger" ForeColor="White"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Address is empty" Font-Bold="True" ForeColor="Red" ControlToValidate="txtaddress" Font-Names="Century Gothic" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="txtaddress" Display="Dynamic" ErrorMessage="please Use  only numbers between 2 upto 50" Font-Bold="True" Font-Names="Century Gothic" ForeColor="Red" ValidationExpression="^[0-9a-zA-Z ]{2,50}$"></asp:RegularExpressionValidator>
            </td>
        </tr>

        <tr>
            <td class="auto-style3">&nbsp; Mobile</td>
            <td id="Td6" class="auto-style11">
                <asp:TextBox ID="txtMobile" runat="server" Height="30px" Width="325px" placeholder="+252616330022" BorderColor="Lime" BorderStyle="Solid" BackColor="#0066FF" BorderWidth="4px" Font-Names="Times New Roman" Font-Size="Larger" ForeColor="White"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Mobile is empty" Font-Bold="True" ForeColor="Red" ControlToValidate="txtMobile" Font-Names="Century Gothic" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtMobile" Display="Dynamic" ErrorMessage="please Use  only numbers between 12 upto 15" Font-Bold="True" Font-Names="Century Gothic" ForeColor="Red" ValidationExpression="^[\d+]{12,15}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp; E-mail</td>
            <td id="Td7" class="auto-style10">
                <asp:TextBox ID="txtEmail" runat="server" Height="30px" Width="325px" TextMode="Email" BorderColor="Lime" BorderStyle="Solid" BackColor="#0066FF" BorderWidth="4px" Font-Names="Times New Roman" Font-Size="Larger" ForeColor="White"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="E-mail is empty" Font-Bold="True" ForeColor="Red" ControlToValidate="txtEmail" Font-Names="Century Gothic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Button ID="Button1" runat="server" BorderColor="Blue" BorderStyle="Solid" BorderWidth="4px" Font-Bold="False" Font-Names="Cambria" Font-Size="Large" Height="36px" Text="clear" Width="108px" />
            </td>
            <td id="Td8" class="auto-style10">
                <asp:Button ID="btnSave" runat="server" Font-Bold="False" Font-Size="Large" Text="Save" Height="36px" Width="110px" BorderColor="Blue" BorderStyle="Solid" BorderWidth="4px" Font-Names="Cambria" />
                <asp:Button ID="btnUpdate" runat="server" Font-Bold="False" Font-Size="Large" Text="Update" Height="36px" Width="110px" BorderColor="Blue" BorderStyle="Solid" BorderWidth="4px" Font-Names="Cambria" />
                <asp:Button ID="btnDelete" runat="server" Font-Bold="False" Font-Size="Large" Text="Delete" Height="36px" Width="108px" BorderColor="Blue" BorderStyle="Solid" BorderWidth="4px" Font-Names="Cambria" />
                &nbsp;</td>
            <td>&nbsp; 
                </td>
        </tr>
    </table>
         <asp:GridView ID="GridView1" runat="server" CellPadding="4" AutoGenerateSelectButton="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px">
             <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
             <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
             <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
             <RowStyle BackColor="White" ForeColor="#003399" />
             <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
             <SortedAscendingCellStyle BackColor="#EDF6F6" />
             <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
             <SortedDescendingCellStyle BackColor="#D6DFDF" />
             <SortedDescendingHeaderStyle BackColor="#002876" />
         </asp:GridView>
     
   </asp:Panel>
</asp:Content>
