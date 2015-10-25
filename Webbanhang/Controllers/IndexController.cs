using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.SqlClient;
using Webbanhang.Models;

namespace THEGIOIMAYTINH.Controllers
{
    public class IndexController : Controller
    {
        //
        // GET: /Index/

        public void Menu()
        {
            List<DALTHEGIOIMAYTINH> List = new List<DALTHEGIOIMAYTINH>();

            SqlConnection conn = new SqlConnection(dbConnect.cnstring);

            SqlDataReader rdr = null;
            try
            {
                // 2. Open the connection
                conn.Open();

                // 3. Pass the connection to a command object
                SqlCommand cmd = new SqlCommand("select * from Menu", conn);

                // get query results
                rdr = cmd.ExecuteReader();

                while (rdr.Read())
                {
                    DALTHEGIOIMAYTINH _DALTHEGIOIMAYTINH = new DALTHEGIOIMAYTINH(Int32.Parse(rdr["ID"].ToString()), rdr["TenMenu"].ToString(), rdr["DuongDanMenu"].ToString(), (DateTime)rdr["NgayTao"], (DateTime)rdr["NgaySua"]);
                    List.Add(_DALTHEGIOIMAYTINH);

                }

                rdr.Close();

            }
            catch
            {
            }
            finally
            {
                if (rdr != null)
                {
                    rdr.Close();
                }

                if (conn != null)
                {
                    conn.Close();
                }
            }

            ViewBag.ListTHEGIOIMAYTINH = List;
        }
        public void DanhMucSanPham()
        {
            List<DALDanhMucSanPham> ListDanhMucSanPham = new List<DALDanhMucSanPham>();
            
            SqlConnection conn = new SqlConnection(dbConnect.cnstring);

            SqlDataReader rdr = null;
            try
            {
                // 2. Open the connection
                conn.Open();
                SqlCommand cmd = new SqlCommand("select * from DanhMucSanPham", conn);

                // get query results
                rdr = cmd.ExecuteReader();

                while (rdr.Read())
                {
                    DALDanhMucSanPham _DALDanhMucSanPham = new DALDanhMucSanPham(Int32.Parse(rdr["ID"].ToString()), rdr["ParentID"].ToString(), rdr["TenDanhMucSanPham"].ToString(), rdr["DuongDanDanhMucSanPham"].ToString(), (DateTime)rdr["NgayTao"], (DateTime)rdr["NgaySua"]);
                    ListDanhMucSanPham.Add(_DALDanhMucSanPham);
                }
                rdr.Close();   
            }
            catch
            {
            }
            finally
            {
                if (rdr != null)
                {
                    rdr.Close();
                }

                if (conn != null)
                {
                    conn.Close();
                }
            }

            ViewBag.ListDanhMucSanPham = ListDanhMucSanPham;
            ViewBag.ListDanhMucSanPhamCha = ListDanhMucSanPham.Where(i => i.ParentID == "").ToList();
        }
        public ActionResult Index()
        {           
            List<DALSanPham> List2 = new List<DALSanPham>();
            List<DALDangNhap> List3 = new List<DALDangNhap>();
            SqlConnection conn = new SqlConnection(dbConnect.cnstring);

            SqlDataReader rdr = null;
            try
            {
                // 2. Open the connection
                conn.Open();
                //SqlCommand cmd = new SqlCommand("select * from DanhMucSanPham", conn);

                // get query results
                //rdr = cmd.ExecuteReader();

                //while (rdr.Read())
                //{
                //    DALDanhMucSanPham _DALDanhMucSanPham = new DALDanhMucSanPham(Int32.Parse(rdr["ID"].ToString()), rdr["ParentID"].ToString(), rdr["TenDanhMucSanPham"].ToString(), rdr["DuongDanDanhMucSanPham"].ToString(), (DateTime)rdr["NgayTao"], (DateTime)rdr["NgaySua"]);
                //    List1.Add(_DALDanhMucSanPham);
              SqlCommand cmd = new SqlCommand("select * from SanPham", conn);

                // get query results
                rdr = cmd.ExecuteReader();

                while (rdr.Read())
                {
                    DALSanPham _DALSanPham = new DALSanPham(Int32.Parse(rdr["ID"].ToString()), rdr["TenSanPham"].ToString(), rdr["LinkHinhAnh"].ToString(), rdr["DuongDanSanPham"].ToString(), rdr["Gia"].ToString(), rdr["MoTaNgan"].ToString(), rdr["MoTaDai"].ToString(), (DateTime)rdr["NgayTao"], (DateTime)rdr["NgaySua"]);
                    List2.Add(_DALSanPham);

                }
            rdr.Close();
            }
            catch
            {
                return null;
            }
            finally
            {
                if (rdr != null)
                {
                    rdr.Close();
                }

                if (conn != null)
                {
                    conn.Close();
                }
            }

            Menu();
            DanhMucSanPham();
            ViewBag.ListSanPham = List2;
            return View();
        }

        public int XuLyDangNhap(FormCollection _XuLyDangNhap)
        {
            SqlConnection conn = new SqlConnection(dbConnect.cnstring);
            try
            {
                string TENDANGNHAP = _XuLyDangNhap["TenDangNhap"];
                string MATKHAU = _XuLyDangNhap["MatKhau"];
                // Kiểm tra ID có tồn tại trong SQL
                // 2. Open the connection
                conn.Open();

                SqlCommand cmd = new SqlCommand("select Ten from DangNhap where TenDangNhap='" + TENDANGNHAP + "' and MatKhau = '" + MATKHAU + "'", conn);
                // get query results
                string Ten = cmd.ExecuteScalar().ToString();
                if (Ten == "" ||Ten == null)
                {
                    return 0;
                }
                else
                {
                    Session["Ten"] = Ten;
                    return 1;
                }
            }
            catch
            {
                return -1; // Lỗi ko xác định
            }

            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }
        }
        public ActionResult Thoat()
        {
            Session["Ten"] = "";
            return RedirectToAction("Index");
        }
        public ActionResult ChiTietSanPham()
        {
            Menu();
            return View();
        }
        public ActionResult DangKi()
        {
            return View();
        }
        public ActionResult GioHang()
        {
            return View();
        }
    }
}
