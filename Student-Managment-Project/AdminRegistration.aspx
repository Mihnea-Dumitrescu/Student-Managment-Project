<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminRegistration.aspx.cs" Inherits="Student_Managment_Project.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   <form id="form1" runat="server">
        <div>
        <Center>
            <h1>Admin Registration</h1>
            <hr />
            <div style="background-color:azure; " class="auto-style1">
            <table border="1">
                <tr>
                    <td>Admin ID</td>
                    <td><asp:TextBox ID="TxtAdminRegisterID" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Admin Username ID</td>
                    <td><asp:TextBox ID="TxtAdminUsernameID" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Admin Name</td>
                    <td><asp:TextBox ID="TxtAdminName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Admin Surname</td>
                    <td><asp:TextBox ID="TxtAdminSurname" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Admin Birthday</td>
                    <td><asp:Calendar ID="CalAdminBirthday" runat="server"></asp:Calendar></td>
                </tr>
                <tr>
                    <td>Admin Email</td>
                    <td><asp:TextBox ID="TxtAdminEmail" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Admin Phone</td>
                    <td><asp:TextBox ID="TxtAdminPhone" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Admin Username</td>
                    <td><asp:TextBox ID="TxtAdminUsername" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Admin Password</td>
                    <td><asp:TextBox ID="TxtAdminPassword" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Button ID="ButRegister" runat="server" OnClick="ButRegister_Click" Text="Register Admin"></asp:Button></td>
                    <td><asp:Label ID="Labmsg" runat="server" Text="" ForeColor="Green"></asp:Label></td>
                </tr>
                <tr>
                    <td><asp:Button ID="ButGoBack" runat="server" OnClick="ButGoBack_Click" Text="Return To Homepage"></asp:Button></td>
                </tr>
            </table>
            </div>
        </Center>
        </div>
    </form>
</body>
</html>
 