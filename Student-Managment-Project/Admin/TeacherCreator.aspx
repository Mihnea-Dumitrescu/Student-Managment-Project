<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/SMS.Master" AutoEventWireup="true" CodeBehind="TeacherCreator.aspx.cs" Inherits="Student_Managment_Project.Admin.TeacherCreator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Please fill in the details about the new teacher</h1>
    <div style="background-color:azure; " class="auto-style2">
        <table border="1">
            <tr>
                <td>
                    Teacher ID
                </td>
                <td>
                    <asp:TextBox ID="TxtTeacherID" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    Teacher Username ID
                </td>
                <td>
                    <asp:TextBox ID="TxtTeacherUsernameID" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
                <td>
                    Teacher Name
                </td>
                <td>
                    <asp:TextBox ID="TxtTeacherName" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    Teacher Surname
                </td>
                <td>
                    <asp:TextBox ID="TxtTeacherSurname" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Teacher Department</td>
                <td>
                    <asp:DropDownList ID="TeacherCourse" runat="server" DataSourceID="SqlDataSource1" DataTextField="CourseName" DataValueField="CourseName">
                    <asp:ListItem Value="0" Text="-- Select Courses --"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentMangementSystemConnectionString %>" SelectCommand="SELECT [CourseName] FROM [Course/Project]"></asp:SqlDataSource>
            </tr>
            <tr>
                <td>Teacher Phone</td>
                <td>
                    <asp:TextBox ID="TxtTeacherPhone" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Teacher Email</td>
                <td>
                    <asp:TextBox ID="TxtTeacherEmail" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Teacher Date of Birth</td>
                <td>
                    <asp:Calendar ID="CalTeacherBirth" runat="server" OnSelectionChanged="CalTeacherBirth_SelectionChanged"></asp:Calendar>
            </tr>
            <tr>
                <td>Teacher Username</td>
                <td>
                    <asp:TextBox ID="TxtTeacherUsername" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Teacher Password</td>
                <td>
                    <asp:TextBox ID="TxtTeacherPassword" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="ButTutor" runat="server" Text="Insert" OnClick="ButTutor_Click" /></td>
                <td class="auto-style1">
                    <asp:Label ID="Labmsg" runat="server" Text="" ForeColor="Green"></asp:Label></td>
            </tr>
    </div>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            height: 32px;
        }
        .auto-style2 {
            width: 318px;
        }
    </style>
</asp:Content>

