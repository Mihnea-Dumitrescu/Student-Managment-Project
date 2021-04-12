<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/SMS.Master" AutoEventWireup="true" CodeBehind="CourseCreator.aspx.cs" Inherits="Student_Managment_Project.Admin.CourseCreator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>This is Course Page ...</h1>
    <div style="background-color:azure;  height: 120px; width: 303px;">
    <table border="1">
        <tr>
            <td>Course ID</td>
            <td>
                <asp:TextBox ID="TxtCourseID" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Course Name</td>
            <td>
                <asp:TextBox ID="TxtCoursename" runat="server"></asp:TextBox></td>
        </tr>
         <tr>
            <td>Course Year</td>
            <td>
                <asp:TextBox ID="TxtCourseYear" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Course Length</td>
            <td>
                <asp:TextBox ID="TxtCourseLength" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Course Credits</td>
            <td>
                <asp:TextBox ID="TxtCourseCredits" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="ButCourse" runat="server" Text="Insert New Course" OnClick="ButCourse_Click" /></td>
            <td>
                <asp:Label ID="LabMsg" runat="server" Text="" ForeColor="Green"></asp:Label></td>
        </tr>
    </table>
        </div>
</asp:Content>