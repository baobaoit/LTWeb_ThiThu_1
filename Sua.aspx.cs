using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
public partial class Sua : System.Web.UI.Page
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
                        DropDownList1.Items.Add(item);
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
        OleDbCommand command = new OleDbCommand()
        {
            CommandText = "SELECT * FROM NhanVien WHERE MaNV = @MaNV",
            Connection = connection
        };
        OleDbDataReader reader;
        command.Parameters.AddWithValue("@MaNV", DropDownList1.SelectedValue);
        try
        {
            using (connection)
            {
                connection.Open();
                reader = command.ExecuteReader();
                if (reader.Read())
                {
                    TextBox1.Text = (string)reader["HoNV"];
                    TextBox2.Text = (string)reader["TenNV"];
                    TextBox3.Text = (string)reader["DienThoai"];
                    TextBox4.Text = (string)reader["Email"];
                    DropDownList2.SelectedValue = Convert.ToInt32(reader["MaDV"]).ToString();
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

    protected void Button3_Click(object sender, EventArgs e)
    {
        OleDbCommand command = new OleDbCommand()
        {
            CommandText = "UPDATE NhanVien SET HoNV = @HoNV, TenNV = @TenNV, DienThoai = @DienThoai, Email = @Email, MaDV = @MaDV WHERE MaNV = @MaNV",
            Connection = connection
        };
        command.Parameters.AddWithValue("@HoNV", TextBox1.Text);
        command.Parameters.AddWithValue("@TenNV", TextBox2.Text);
        command.Parameters.AddWithValue("@DienThoai", TextBox3.Text);
        command.Parameters.AddWithValue("@Email", TextBox4.Text);
        command.Parameters.AddWithValue("@MaDV", Convert.ToInt32(DropDownList2.SelectedValue));
        command.Parameters.AddWithValue("@MaNV", DropDownList1.SelectedValue);
        try
        {
            using (connection)
            {
                connection.Open();
                command.ExecuteNonQuery();
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