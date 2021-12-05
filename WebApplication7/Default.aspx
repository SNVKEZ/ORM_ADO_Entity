<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication7.Default" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Belous Alexei ORM</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ListView ID="ListView1" runat="server" ItemType="WebApplication7.Peoples"
             SelectMethod="GetPeoples" UpdateMethod="EditPeople" DeleteMethod="DeletePeople" 
             InsertMethod="InsertPeople" DataKeyNames="IdPerson">
            <LayoutTemplate>
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Имя</th>
                        <th>Фамилия</th>
                        <th>Возраст</th>
                        <th>Работа</th>
                        <th>Машина</th>
                    </tr>
                    <tr id="itemPlaceholder" runat="server"></tr>
                </table>
            </LayoutTemplate>

            <ItemTemplate>
                <tr>
                    <td><%# Item.IdPerson %></td>
                    <td><%# Item.Name %></td>
                    <td><%# Item.LastName %></td>
                    <td><%# Item.Age %></td>
                    <td><%# Item.Job %></td>
                    <td><%# Item.Cars.Single().Model %></td>
                    <td>
                        <asp:Button CommandName="Edit" runat="server" Text="Изменить" />
                        <asp:Button CommandName="Delete" runat="server" Text="Удалить" />
                    </td>
                </tr>
            </ItemTemplate>

            <EditItemTemplate>
                <tr>
                    <td><%# Item.IdPerson %></td>
                    <td><input id="name" runat="server" value="<%# BindItem.Name %>" /></td>
                    <td><input id="lastName" runat="server" value="<%# BindItem.LastName %>" /></td>
                    <td><input id="age" runat="server" value="<%# BindItem.Age %>" /></td>
                    <td><input id="job" runat="server" value="<%# BindItem.Job %>" /></td>
                    <td>
                        <asp:Button CommandName="Update" runat="server" Text="Сохранить" />
                        <asp:Button CommandName="Delete" runat="server" Text="Отмена" />
                        
                        
                    </td>
                </tr>
            </EditItemTemplate>

            <InsertItemTemplate>
                <tr>
                    <td></td>
                  <td><input id="name" runat="server" value="<%# BindItem.Name %>" /></td>
                    <td><input id="lastName" runat="server" value="<%# BindItem.LastName %>" /></td>
                    <td><input id="age" runat="server" value="<%# BindItem.Age %>" /></td>
                    <td><input id="job" runat="server" value="<%# BindItem.Job %>" /></td>
                    <td>
                        <asp:Button ID="Button1" CommandName="Insert" runat="server" Text="Вставить" />
                    </td>
                </tr>
            </InsertItemTemplate>
        </asp:ListView>
    </form>

    <style>
        th, td { padding: 8px; }
        th { background: #28a4fa; color: white; font-weight: bold; }
        tr:nth-of-type(even) { background: #eee; }
        tr:nth-of-type(odd) { background: #fffbd6; }
    </style>
</body>
</html>