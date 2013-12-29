<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="js/jquery-1.10.2.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#btnSubmit').click(function(e) {
                var isValid = true;
                $('input[type="text"]').each(function () {
                    if ($.trim($(this).val()) == '') {
                        isValid = false;
                        $(this).css({
                            "border": "1px solid red",
                            "background": "#FFCECE"
                        });
                    }
                    else {
                        $(this).css({
                            "border": "",
                            "background": ""
                        });
                    }
                });
                if (isValid == false)
                    e.preventDefault();
                else
                    alert('Sucess');
            });
        });

    </script>
</head>
<body>
    <form runat="server">
<table>
<tr>
    <td>Login ID:
    </td>
    <td><asp:TextBox type='text' id='txtLogin' runat="server" />
    </td>
</tr>
<tr>
    <td>Password:
    </td>
    <td><asp:TextBox type='text' id='txtPass' runat="server"  />
    </td>
</tr>

<tr>
    <td colspan="2" style='text-align:center;'>
        <asp:Button ID="btnSubmit" Text="Submit" runat="server" />
    </td>
</tr>
    </table>
        </form>
    <p id="pResult"></p>
</body>
</html>
