<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Student_Managment_Project.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <Center>
            <h1>Student Management System</h1>
            <h2></h2>
            <hr />
            <div style="background-color:azure; " class="auto-style1">
            <table border="1">
                <tr>
                    <td>User ID</td>
                    <td><asp:TextBox ID="TxtAdminId" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><asp:TextBox ID="TxtPwdAdmin" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Button ID="ButLogin" runat="server" Text="Login" OnClick="ButLogin_Click"></asp:Button></td>
                    <td><asp:Label ID="Labmsg" runat="server" Text="" ForeColor="Red"></asp:Label></td>
                </tr>
                <tr>
                    <td><asp:Button ID="ButAdminRegistration" runat="server" OnClick="ButAdminRegistration_Click" Text="Admin Register"></asp:Button></td>
                </tr>
            </table>
            </div>
        </Center>
        </div>
    </form>
</body>
</html>
