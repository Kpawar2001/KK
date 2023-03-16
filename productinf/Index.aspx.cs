using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace productinf
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            int ProductId, CatagoryId;
            string ProductNanme, CatagoryName;
          
             ProductNanme = TextBox2.Text;
             CatagoryId = Int32.Parse(TextBox3.Text);
             CatagoryName = TextBox4.Text;

            string url;
            url = "Data Source=DESKTOP-OTLPFNM\\SQLEXPRESS;Initial Catalog=Product;Integrated Security=true;";

            SqlConnection con=new SqlConnection(url);

            string k = "insert into Products(ProductNanme,CategoryId,CategoryName)values('"+ProductNanme+"','"+CatagoryId+"','"+CatagoryName+"')";

            SqlCommand cmd=new SqlCommand(k,con);

            con.Open();

            cmd.ExecuteNonQuery();

           
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";

            Response.Write("<script>alert('Product Add')</script>");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int ProductId ,CatagoryId;
            string ProductNanme, CatagoryName;
            ProductNanme = TextBox2.Text;
            CatagoryName= TextBox4.Text;
            ProductId = Int32.Parse(TextBox1.Text);
            CatagoryId = Int32.Parse(TextBox1.Text);
            string url;
            url = "Data Source=DESKTOP-OTLPFNM\\SQLEXPRESS;Initial Catalog=Product;Integrated Security=true;";
            SqlConnection con = new SqlConnection(url);
            string k;
            k = "update Products set ProductNanme='"+ProductNanme+"',CategoryId='"+CatagoryId+"',CategoryName='"+CatagoryName+"' where ProductId='" + ProductId + "' ";
            SqlCommand cmd = new SqlCommand(k, con);
            con.Open();

             int x =cmd.ExecuteNonQuery() ;
            if(x>0)
            {
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";

                Response.Write("<script>alert('Product Update')</script>");
            }
            else 
            {
                Response.Write("<script>alert('Product Not Update')</script>");
            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int Productid;
            Productid = Int32.Parse(TextBox1.Text);
            string url;
            url = "Data Source=DESKTOP-OTLPFNM\\SQLEXPRESS;Initial Catalog=Product;Integrated Security=true;";
            SqlConnection con = new SqlConnection(url);
            string k;
            k = "delete from Products where Productid ='" + Productid + "'";
            SqlCommand cmd = new SqlCommand(k, con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Product Delete')</script>");
            TextBox1.Text = "";


        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            int Productid;
            Productid = Int32.Parse(TextBox1.Text);
            string url;
            url = "Data Source=DESKTOP-OTLPFNM\\SQLEXPRESS;Initial Catalog=product;Integrated Security=true;";
            SqlConnection con = new SqlConnection(url);
            string k;
            k = "select * from products where Productid='" + Productid + "'";
            SqlCommand cmd = new SqlCommand(k, con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                Response.Write("<script>alert'Product Found'</script>");

                TextBox1.Text = reader["Productid"].ToString();
                TextBox2.Text = reader["ProductNanme"].ToString();
                TextBox3.Text = reader["Categoryid"].ToString();
                TextBox4.Text = reader["CategoryName"].ToString();

            }
            else
            {
                Response.Write("<script>alert'Product Not Found'</script>");
            }

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Product.aspx");
        }
    }
}