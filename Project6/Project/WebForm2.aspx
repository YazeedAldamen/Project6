<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Project.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous"/>
</head>
<body>
    <form id="form1" runat="server">

 <%--          <table class="table table-striped table-bordered">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Handle</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>--%>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Tool] WHERE [tool_id] = @tool_id" InsertCommand="INSERT INTO [Tool] ([donorName], [category], [quality], [dateDonated], [phone], [email], [address], [city_id], [comment], [status], [image]) VALUES (@donorName, @category, @quality, @dateDonated, @phone, @email, @address, @city_id, @comment, @status, @image)" SelectCommand="SELECT *
FROM Tool AS t1
LEFT JOIN city AS t2
ON t1.city_id = t2.city_id
WHERE t1.status = 'True'" UpdateCommand="UPDATE [Tool] SET [donorName] = @donorName, [category] = @category, [quality] = @quality, [dateDonated] = @dateDonated, [phone] = @phone, [email] = @email, [address] = @address, [city_id] = @city_id, [comment] = @comment, [status] = @status, [image] = @image WHERE [tool_id] = @tool_id">
            <DeleteParameters>
                <asp:Parameter Name="tool_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="donorName" Type="String" />
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="quality" Type="Int32" />
                <asp:Parameter DbType="Date" Name="dateDonated" />
                <asp:Parameter Name="phone" Type="Int32" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="city_id" Type="Int32" />
                <asp:Parameter Name="comment" Type="String" />
                <asp:Parameter Name="status" Type="Boolean" />
                <asp:Parameter Name="image" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="donorName" Type="String" />
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="quality" Type="Int32" />
                <asp:Parameter DbType="Date" Name="dateDonated" />
                <asp:Parameter Name="phone" Type="Int32" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="city_id" Type="Int32" />
                <asp:Parameter Name="comment" Type="String" />
                <asp:Parameter Name="status" Type="Boolean" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="tool_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
        <table class="table table-striped table-bordered">
  <thead>
      <tr>
          <th scope="col">#</th>
          <th scope="col">Category</th>
          <th scope="col">Donation Date</th>
          <th scope="col">Donor Phone</th>
          <th scope="col">Address</th>
          <th scope="col">City</th>
      </tr>
  </thead>
  <tbody>
      <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
          <ItemTemplate>

              <tr>
                  <th scope="row">1</th>
                  <td><%#Eval("category") %></td>
                  <td><%#Eval("dateDonated") %></td>
                  <td><%#Eval("phone") %></td>
                  <td><%#Eval("address") %></td>
                  <td><%#Eval("cityName") %></td>
                  <%--      <td>><asp:Image ID="Image1" runat="server" Style="width: 150px" ImageUrl='<%#Eval("image") %>' /></td></td>--%>
              </tr>
          </ItemTemplate>

      </asp:Repeater>
  </tbody>
        </table>
    </form>
</body>
</html>
