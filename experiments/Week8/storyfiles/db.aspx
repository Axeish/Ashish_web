<%@ Page Language="C#" %>

<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Net" %>
<%@ Import Namespace="System.Data.Sql" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Net" %>
<%@ Import Namespace="System.Data.Sql" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Xml" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void getTerritories(object sender, EventArgs e)
    {
        Message.Text = "";
        DataSet ds = new DataSet();
        string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["NorthwindCS"].ConnectionString;
        string query = "select TerritoryID, TerritoryDescription, RegionID from Territories";

        try
        {
            SqlConnection connection = new SqlConnection(connectionString);
            SqlDataAdapter newAdapter = new SqlDataAdapter(query, connection);
            connection.Open();
            newAdapter.Fill(ds);
            connection.Close();
        }
        catch (Exception ex)
        {
            Message.Text = ex.Message;
        }
        if (ds.Tables.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
            Message.Text = "Unable to connect to database";
        }
    }

    protected void getEmpTerritory(object sender, EventArgs e)
    {
        Message.Text = "";
        DataSet ds1 = new DataSet();
        string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["NorthwindCS"].ConnectionString;

        string query = "select EmployeeID, TerritoryID from EmployeeTerritories ";

        try
        {
            SqlConnection connection = new SqlConnection(connectionString);
            SqlDataAdapter newAdapter = new SqlDataAdapter(query, connection);
            connection.Open();
            newAdapter.Fill(ds1);
            connection.Close();
        }
        catch (Exception ex)
        {
            Message.Text = ex.Message;
        }
        if (ds1.Tables.Count > 0)
        {
            GridView1.DataSource = ds1;
            GridView1.DataBind();
        }
        else
        {
            Message.Text = "Unable to connect to database";
        }
    }
</script>
<head runat="server">
    <title>Simple DB Experiment</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"/>
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"/>
    <link rel="stylesheet" type="text/css" href="../css/simpledbexp.css" />
    
</head>
<body>
    <header>
        <h1>Simple DB Experiment</h1>
    </header>
    <hr />
    <div style="text-align:left">
        <p>
            In this experiment I have used aspx codes to get data from a predefined database (NorthwindDB).
        </p>
        <p>
            The data was aleady present in the tables. Here I am creating an sql query and fetching that data
            to display it in a table form.
        </p>
    </div>

    <hr />

    <form id="form1" runat="server">
        <asp:Label ID="Message" ForeColor="Red" runat="server" />
        <br />
        <div id="wrapper">
            <div style="padding-bottom:10px">
                <asp:Button ID="getTerritoryTable" runat="server" Text="Get from Territory Table" OnClick="getTerritories" />
            &nbsp;<asp:Button ID="getEmpTable" runat="server" Text="Get from EmployeeTerritory Table" OnClick="getEmpTerritory" />
            </div>
            <div>
                <asp:GridView ID="GridView1" AutoGenerateColumns="true" runat="server" Height="259px" Width="398px" CssClass="table gridtable">
                </asp:GridView>
                <br />
            </div>
        </div>
    </form>
    <hr />
    <div style="text-align:left">
        <a href="../fileview/Default.aspx?~/css/simpledbexp.css" target="_blank">simpledbexp.css</a>
        <a href="../fileview/Default.aspx?~/experiments/SimpleDBExp.aspx" target="_blank">Page Source</a>
    </div>
</body>
</html>