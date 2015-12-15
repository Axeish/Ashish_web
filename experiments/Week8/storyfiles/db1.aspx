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

    protected void getCusTable_Click(object sender, EventArgs e)
    {
        Message.Text = "";
        DataSet ds = new DataSet();
        string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["NorthwindCS"].ConnectionString;
        string query = "select CustomerID, CompanyName, ContactName, Address, City, PostalCode, Country from Customers ";

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
    protected void getEmployee_Click(object sender, EventArgs e)
    {
        Message.Text = "";
        DataSet ds1 = new DataSet();
        string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["NorthwindCS"].ConnectionString;

        string query = "select EmployeeID, LastName, FirstName from Employees ";

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
    protected void getEmpTable_Click(object sender, EventArgs e)
    {
        Message.Text = "";
        DataSet ds1 = new DataSet();
        string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["NorthwindCS"].ConnectionString;

        string query = "select EmployeeID, LastName, FirstName, Title, Address, City, Region, PostalCode, HomePhone from Employees ";

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
    <title>Grid View Binding</title>
    <link rel="stylesheet" href="../../css/gen.css" type='text/css' media="screen" />


</head>
<body>
    <h2 style="text-align: center">Simple Experiemnt on Database  </h2>
    <hr />
    <br />
    <h3>Description</h3>
    <p>
        In this experiemnt I have successfully connected to the NorthWind databse at CCIS server. I have Followed Professor Rasala's site to establish , Acess SQL server and also connectionString Configuration .
        Here I have accessed a part of Data Base Via SQL Commmands
    </p>
    <br />
    <p>Initially this will load all the employees name in a grid form . </p>
    <div class="maincontent">
        <form id="form1" runat="server">


            <asp:Label ID="Message" ForeColor="Red" runat="server" />
            <br />
            <div id="wrapper">
                <div style="padding-bottom: 10px">
                    <asp:Button ID="getCusTable" runat="server" Text="Get from Customer Table" OnClick="getCusTable_Click" />
                    &nbsp;<asp:Button ID="getEmpTable" runat="server" Text="Get from Employee Table" OnClick="getEmpTable_Click" />

                    &nbsp;<asp:Button ID="getEmployee" runat="server" Text="Get Names Of Employee " OnLoad="getEmployee_Click" />
                </div>
                <div>
                    <asp:GridView ID="GridView1" AutoGenerateColumns="true" runat="server" Height="259px" Width="398px" CssClass="table gridtable">
                    </asp:GridView>
                    <br />
                </div>
                
            </div>
        </form>
    </div>
    <hr />
    <h3>Source Code</h3>
    
<a href="../../../fileview/Default.aspx?~/Experiments/Week8/storyfiles/db1.aspx" target="_blank">HTML Source</a>
    <hr />
    <h3>References</h3>
    <a href="http://net4.ccs.neu.edu/home/rasala/">Professor Rasala's Experiment</a><br />
    <a href="http://net4.ccs.neu.edu/home/sudjoshi/story/index.htm?../experiments/Story.txt">Sudhanshu Joshi's Experiment</a>
</body>
</html>
