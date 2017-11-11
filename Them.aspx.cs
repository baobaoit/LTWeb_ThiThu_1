using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
public partial class Them : System.Web.UI.Page
{
    const string conStr = @"Provider = Microsoft.Jet.OLEDB.4.0; Data Source =|DataDirectory|KiemTra.mdb";
    OleDbConnection connection = new OleDbConnection(conStr);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Lay danh sach don vi
            OleDbCommand command = new OleDbCommand()
            {
                CommandText = "SELECT * FROM DonVi",
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
                    while (reader.Read())
                    {
                        item = new ListItem()
                        {
                            Text = (string)reader["TenDV"],
                            Value = Convert.ToInt32(reader["MaDV"]).ToString()
                        };
                        DropDownList1.Items.Add(item);
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

    protected void Button2_Click(object sender, EventArgs e)
    {
        Label2.Text = TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = string.Empty;
    }
    class SinhMaNV
    {
        public static string SoThuTu(OleDbConnection connection, string MaDV)
        {
            string so = string.Empty;
            OleDbCommand command = new OleDbCommand()
            {
                CommandText = "SELECT COUNT(MaNV) AS SL FROM NhanVien WHERE MaDV = @MaDV",
                Connection = connection
            };
            command.Parameters.AddWithValue("@MaDV", Convert.ToInt32(MaDV));
            OleDbDataReader reader;

            try
            {
                connection.Open();
                reader = command.ExecuteReader();
                if (reader.Read())
                {
                    int soLuong = Convert.ToInt32(reader["SL"]);
                    so = string.Format("{0:000}", soLuong + 1);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                connection.Close();
            }

            return so;
        }
        public static string Sinh(OleDbConnection connection, string MaDV)
        {
            string MaNV = string.Empty;
            switch (MaDV)
            {
                case "1":
                    MaNV = "TC";
                    break;
                case "2":
                    MaNV = "TV";
                    break;
                case "3":
                    MaNV = "KT";
                    break;
                case "4":
                    MaNV = "VT";
                    break;
            }
            MaNV += SoThuTu(connection, MaDV);
            return MaNV;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Label2.Text != string.Empty)
            Label2.Text = string.Empty;
        if (TextBox1.Text.Equals(string.Empty) || TextBox2.Text.Equals(string.Empty))
        {
            Label2.Text = "Cần nhập họ, tên nhân viên!";
            return;
        }
        OleDbCommand command = new OleDbCommand()
        {
            CommandText = "INSERT INTO NhanVien VALUES(@MaNV, @HoNV, @TenNV, @DienThoai, @Email, @MaDV)",
            Connection = connection
        };
        command.Parameters.AddWithValue("@MaNV", SinhMaNV.Sinh(connection, DropDownList1.SelectedValue));
        command.Parameters.AddWithValue("@HoNV", TextBox1.Text);
        command.Parameters.AddWithValue("@TenNV", TextBox2.Text);
        command.Parameters.AddWithValue("@DienThoai", TextBox3.Text);
        command.Parameters.AddWithValue("@Email", TextBox4.Text);
        command.Parameters.AddWithValue("@MaDV", Convert.ToInt32(DropDownList1.SelectedValue));
        try
        {
            connection.Open();
            command.ExecuteNonQuery();
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