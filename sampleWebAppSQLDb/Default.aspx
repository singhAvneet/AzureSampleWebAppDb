<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="sampleWebAppSQLDb._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <div class="row">
        <div class="col-md-4">
            <h2>Sample SQL-Web App on Azure </h2>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="student" HeaderText="student" SortExpression="student" />
                    <asp:BoundField DataField="program" HeaderText="program" SortExpression="program" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:emergingDbConnectionString %>" SelectCommand="SELECT * FROM [customer]"></asp:SqlDataSource>
    
              <asp:Button ID="Button1" runat="server" onclientclick="Button1_Click1()" Text="Button" />     
        
            <asp:Button ID="Button2" runat="server" Text="Button2" onclientclick="Button2_Click" />

            <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource1" Visible="false"></asp:GridView>

        </div>
      
    </div>

</asp:Content>
