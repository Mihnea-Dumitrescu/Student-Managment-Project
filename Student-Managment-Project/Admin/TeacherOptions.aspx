<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/SMS.Master" AutoEventWireup="true" CodeBehind="TeacherOptions.aspx.cs" Inherits="Student_Managment_Project.Admin.TeacherOptions" %>




   



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
        <!--<div>
            This is teacher options.
        </div>-->
<div class="container">
  <div class="row align-items-center">
    <div class="col">
      
      
        
      <a class="btn btn-primary" data-bs-toggle="collapse" href="#multiCollapseExample1" role="button" aria-expanded="false" aria-controls="multiCollapseExample1">Add Teacher</a>
        <button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#multiCollapseExample2" aria-expanded="false" aria-controls="multiCollapseExample2">Edit Teacher</button>
      <!--<button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#multiCollapseExample2" aria-expanded="false" aria-controls="multiCollapseExample2">Edit Teacher</button>-->
      <!--<button type="button" class="btn btn-primary">Delete Teacher</button>-->
    <div class="row">
        <div class="col">
            <div class="collapse multi-collapse" id="multiCollapseExample1">
                    <div class="card card-body">
                        <h1>Please fill in the details about the new teacher</h1>
                            <div style="background-color:azure; " class="auto-style2">
                                        <table border="1">
                                            <tr>
                                                <td>
                                                        Teacher ID
                                                </td>
                <td><asp:TextBox ID="TxtTeacherID" runat="server"></asp:TextBox></td>
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
      </div>
    </div>

            <div class="collapse multi-collapse" id="multiCollapseExample2">
                <div class="card card-body">
                        Some placeholder content for the second collapse component of this multi-collapse example. This panel is hidden by default but revealed when the user activates the relevant trigger.
                </div>
        </div>

      </div>
    
  
    </div>
       

            

    </div>


  </div>
</div>

</asp:Content>





