<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/Teacher.Master" AutoEventWireup="true" CodeBehind="TeacherCreateAssignment.aspx.cs" Inherits="Student_Managment_Project.Teacher.TeacherCreateAssignment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>This is Student Page ...</h1>
    <div style="background-color:azure; " class="auto-style2">
        <table border="1">
            <tr>
                <td>Assignment ID</td>
                <td>
                    <asp:TextBox ID="TxtAssignmentID" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Assignment Name</td>
                <td>
                    <asp:TextBox ID="TxtAssignmentName" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Assignment Start Date</td>
                <td>
                    <asp:Calendar ID="CalStartDate" runat="server"></asp:Calendar></td>
            </tr>
            <tr>
                <td>Assignment End Date</td>
                <td>
                    <asp:Calendar ID="CalEndDate" runat="server"></asp:Calendar></td>
            </tr>
            <tr>
                <td>Assignment Students</td>
                <td>
                    <asp:Button ID="ButNewStudent" runat="server" Text="Assign Students" OnClick="ButNewStudent_Click" />
            </tr>
            <tr>
                <td>
                    <asp:Button ID="ButAssignment" runat="server" Text="Insert" OnClick="ButAssignment_Click" /></td>
                <td>
                    <asp:Label ID="Labmsg" runat="server" Text="" ForeColor="Green"></asp:Label></td>
            </tr>
        </table>
    </div>
</asp:Content>