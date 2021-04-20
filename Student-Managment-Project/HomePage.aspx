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
                    <td>
                        <asp:ImageButton ID="StudentLogin" ImageUrl="https://www.mcicon.com/wp-content/uploads/2020/12/Education_Student_1-copy-300x300.jpg" ImageAlign="Middle" runat="server" Height="118px" Width="132px"></asp:ImageButton>
                        <asp:Button ID="ButStudentLogin" runat="server" Text="Login As Student" OnClick="ButStudentLogin_Click"></asp:Button>

                    </td>
                    <td>
                        <asp:ImageButton ID="TeacherAdmin" ImageUrl="https://media.istockphoto.com/vectors/teacher-icon-vector-male-person-profile-avatar-with-a-book-and-in-vector-id920403608" ImageAlign="Middle" runat="server" Height="91px" Width="112px"></asp:ImageButton>
                        <asp:Button ID="ButTeacherLogin" runat="server" Text="Login As Teacher" OnClick="ButTeacherLogin_Click"></asp:Button>
                    </td>
                    <td>
                        <asp:ImageButton ID="AdminLogin" ImageUrl="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDsGiSfxbIcAsGcHLNbBEQ6NooMfjTW5ALDz8ownYp3OMa9wrNuT6bfC7vT4i0V3QaVjs&usqp=CAU" ImageAlign="Middle" runat="server" Height="77px" Width="91px"></asp:ImageButton>
                        <asp:Button ID="ButAdminLogin" runat="server" Text="Login As Admin" OnClick="ButAdminLogin_Click"></asp:Button>
                    </td>
                </tr>
            </table>
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
            <table>
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
