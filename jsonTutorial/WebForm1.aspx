<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="jsonTutorial.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="gvDepartment" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="EmployeeDBContext" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                <asp:TemplateField HeaderText="Employees">
                    <ItemTemplate>
                        <asp:GridView ID="gvEmployees" runat="server" AutoGenerateColumns="false" DataSource='<%# Eval("Employees") %>'>
                            <Columns>
                                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                                <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                            </Columns>
                        </asp:GridView>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:EntityDataSource ID="EmployeeDBContext" runat="server" ConnectionString="name=jsonTutorialsEntities" DefaultContainerName="jsonTutorialsEntities" EnableFlattening="False" EntitySetName="Departments" Include="Employees">
        </asp:EntityDataSource>
    </div>
    </form>
</body>
</html>
