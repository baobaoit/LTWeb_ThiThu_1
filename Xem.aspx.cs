using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class Xem : System.Web.UI.Page
{
    const string conStr = @"Provider = Microsoft.Jet.OLEDB.4.0; Data Source =|DataDirectory|KiemTra.mdb";
    OleDbConnection connection = new OleDbConnection(conStr);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Lay danh sach nhan vien
            OleDbCommand command = new OleDbCommand()
            {
                CommandText = "SELECT * FROM NhanVien",
                Connection = connection
            };
            OleDbDataReader reader;
            ListItem item;

            try
            {
                using (connection)
                {
                    connection.Open();
                    reader = command.ExecuteReader();
                    int i = 1;
                    while (reader.Read())
                    {
                        item = new ListItem()
                        {
                            Text = string.Format("{0}. {1} {2}", i, (string)reader["HoNV"], (string)reader["TenNV"]),
                            Value = (string)reader["MaNV"]
                        };
                        ListBox1.Items.Add(item);
                        i++;
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                connection.Close();
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string MaNV = ListBox1.SelectedValue;
        OleDbCommand command = new OleDbCommand()
        {
            CommandText = "SELECT * FROM NhanVien WHERE MaNV = @MaNV",
            Connection = connection
        };
        command.Parameters.AddWithValue("@MaNV", MaNV);
        OleDbDataAdapter adapter = new OleDbDataAdapter(command);
        DataTable table = new DataTable();

        try
        {
            using (adapter)
            {
                adapter.Fill(table);
                DataList1.DataSource = table;
                DataList1.DataBind();
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        finally
        {
            connection.Close();
        }
    }
}