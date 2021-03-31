  <%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AddEmploy.aspx.cs" Inherits="Admin_Employees" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 275px;
        }
        .style4
        {
            width: 146px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
       
    
    <table class="style1">
    <tr>
        <td> 
                       <table class="style1">
                           <tr>
                               <td colspan="3">
                                   &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               </td>
                           </tr>
                           <tr>
                               <td class="style3">
                                   &nbsp;</td>
                               <td class="style4">
                                   <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="12pt" 
                                       ForeColor="Blue" Text="Emp ID"></asp:Label>
                               </td>
                               <td>
                                   <asp:TextBox ID="txteid" runat="server"></asp:TextBox>
                               &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                       ControlToValidate="txteid" ErrorMessage="*"></asp:RequiredFieldValidator>
                               </td>
                           </tr>
                           <tr>
                               <td class="style3">
                                   &nbsp;</td>
                               <td class="style4">
                                   <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="12pt" 
                                       ForeColor="Blue" Text="Name"></asp:Label>
                               </td>
                               <td>
                                   <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                       ControlToValidate="txtname" ErrorMessage="*"></asp:RequiredFieldValidator>
                               </td>
                           </tr>
                           <tr>
                               <td class="style3">
                                   &nbsp;</td>
                               <td class="style4">
                                   &nbsp;</td>
                               <td>
                                   <asp:CheckBox ID="CheckBox1" runat="server" Font-Bold="True" Font-Size="12pt" 
                                       ForeColor="Blue" Text="IsManager" 
                                       oncheckedchanged="CheckBox1_CheckedChanged" AutoPostBack="True" />
                               </td>
                           </tr>
                           <tr>
                               <td class="style3">
                                   &nbsp;</td>
                               <td class="style4">
                                   <asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="Blue" 
                                       Text="UserName"></asp:Label>
                               </td>
                               <td>
                                   <asp:TextBox ID="txtuname" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                       ControlToValidate="txtname" ErrorMessage="*"></asp:RequiredFieldValidator>
                               </td>
                           </tr>
                           <tr>
                               <td class="style3">
                                   &nbsp;</td>
                               <td class="style4">
                                   <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="12pt" 
                                       ForeColor="Blue" Text="Password"></asp:Label>
                               </td>
                               <td>
                                   <asp:TextBox ID="txtpwd" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                       ControlToValidate="txtpwd" ErrorMessage="*"></asp:RequiredFieldValidator>
                               </td>
                           </tr>
                           <tr>
                               <td class="style3">
                                   &nbsp;</td>
                               <td class="style4">
                                   <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="12pt" 
                                       ForeColor="Blue" Text="Phone No"></asp:Label>
                               </td>
                               <td>
                                   <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                       ControlToValidate="txtphone" ErrorMessage="*"></asp:RequiredFieldValidator>
                               </td>
                           </tr>
                           <tr>
                               <td class="style3">
                                   &nbsp;</td>
                               <td class="style4">
                                   <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="12pt" 
                                       ForeColor="Blue" Text="Address"></asp:Label>
                               </td>
                               <td>
                                   <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                       ControlToValidate="txtaddress" ErrorMessage="*"></asp:RequiredFieldValidator>
                               </td>
                           </tr>
                           <tr>
                               <td class="style3">
                                   &nbsp;</td>
                               <td class="style4">
                                   <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="12pt" 
                                       ForeColor="Blue" Text="Email"></asp:Label>
                               </td>
                               <td>
                                   <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                       ControlToValidate="txtemail" ErrorMessage="*"></asp:RequiredFieldValidator>
                               </td>
                           </tr>
                           <tr>
                               <td class="style3">
                                   &nbsp;</td>
                               <td class="style4">
                                   <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="12pt" 
                                       ForeColor="Blue" Text="Experience"></asp:Label>
                               </td>
                               <td>
                                   <asp:TextBox ID="txtexp" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                       ControlToValidate="txtexp" ErrorMessage="*"></asp:RequiredFieldValidator>
                               </td>
                           </tr>
                           <tr>
                               <td class="style3">
                                   &nbsp;</td>
                               <td class="style4">
                                   <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="12pt" 
                                       ForeColor="Blue" Text="Qualification"></asp:Label>
                               </td>
                               <td>
                                   <asp:TextBox ID="txtqual" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                       ControlToValidate="txtqual" ErrorMessage="*"></asp:RequiredFieldValidator>
                               </td>
                           </tr>
                           <tr>
                               <td class="style3">
                                   &nbsp;</td>
                               <td class="style4">
                                   <asp:Label ID="lblmanager" runat="server" Font-Bold="True" Font-Size="12pt" 
                                       ForeColor="Blue" Text="Manager"></asp:Label>
                               </td>
                               <td>
                                   <asp:TextBox ID="txtmanager" runat="server"></asp:TextBox>
                               </td>
                           </tr>
                           <tr>
                               <td class="style3">
                                   &nbsp;</td>
                               <td class="style4">
                                   &nbsp;<asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="12pt" 
                                       ForeColor="Blue" Text="RoleID"></asp:Label>
                               </td>
                               <td>
                                   <asp:DropDownList ID="roleid" runat="server">
                                   </asp:DropDownList>
                               </td>
                           </tr>
                           <tr>
                               <td class="style3">
                                   &nbsp;</td>
                               <td class="style4">
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                           </tr>
                           <tr>
                               <td class="style3">
                                   &nbsp;</td>
                               <td class="style4">
                                   <asp:Button ID="Button1" runat="server" Font-Bold="True" ForeColor="Blue" 
                                       Text="ADD" Width="72px" onclick="Button1_Click" />
                               </td>
                               <td>
                                   <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="12pt" 
                                       ForeColor="Blue" Text="Clear" />
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                   <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="Red" 
                                       Text="Label" Visible="False"></asp:Label>
                               </td>
                           </tr>
                           <tr>
                               <td class="style3">
                                   &nbsp;</td>
                               <td class="style4">
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                           </tr>
                           <tr>
                               <td class="style3">
                                   &nbsp;</td>
                               <td class="style4">
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                           </tr>
                       </table>
        </td>
    </tr>
</table>
       
    
</asp:Content>



