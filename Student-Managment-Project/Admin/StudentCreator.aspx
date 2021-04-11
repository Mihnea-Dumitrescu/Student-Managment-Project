<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/SMS.Master" AutoEventWireup="true" CodeBehind="StudentCreator.aspx.cs" Inherits="Student_Managment_Project.Admin.StudentCreator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>This is Student Page ...</h1>
    <div style="background-color:azure; " class="auto-style2">
        <table border="1">
            <tr>
                <td>Student ID</td>
                <td>
                    <asp:TextBox ID="TxtStudentID" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Student Username ID</td>
                <td>
                    <asp:TextBox ID="TxtStudentUsernameID" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Student Name</td>
                <td>
                    <asp:TextBox ID="TxtStudentName" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Student Surname</td>
                <td>
                    <asp:TextBox ID="TxtStudentSurname" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Student Email</td>
                <td>
                    <asp:TextBox ID="TxtStudentEmail" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Student Phone</td>
                <td>
                    <asp:TextBox ID="TxtStudentPhone" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>StudentBirth</td>
                <td>
                    <asp:Calendar ID="CalStudentBirth" runat="server"></asp:Calendar></td>
            </tr>
            <tr>
                <td>StudentYear</td>
                <td>
                    <asp:TextBox ID="TxtStudentYear" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>StudentUsername</td>
                <td>
                    <asp:TextBox ID="TxtStudentUsername" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>StudentPassword</td>
                <td>
                    <asp:TextBox ID="TxtStudentPassword" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="ButStudent" runat="server" Text="Insert" OnClick="ButStudent_Click" /></td>
                <td>
                    <asp:Label ID="Labmsg" runat="server" Text="" ForeColor="Green"></asp:Label></td>
            </tr>
        </table>
    </div>
</asp:Content>
