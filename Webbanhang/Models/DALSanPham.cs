using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Webbanhang.Models
{
    public class DALSanPham
    {
        private int _ID;
        public int ID
        {
            get { return _ID; }
            set { _ID = value; }
        }
        private string _TenSanPham;
        public string TenSanPham
        {
            get { return _TenSanPham; }
            set { _TenSanPham = value; }
        }
        private string _LinkHinhAnh;
        public string LinkHinhAnh
        {
            get { return _LinkHinhAnh; }
            set { _LinkHinhAnh = value; }
        }
        private string _Gia;
        public string Gia
        {
            get { return _Gia; }
            set { _Gia = value; }
        }
        private string _DuongDanSanPham;
        public string DuongDanSanPham
        {
            get { return _DuongDanSanPham; }
            set { _DuongDanSanPham = value; }
        }
        private string _MoTaNgan;
        public string MoTaNgan
        {
            get { return _MoTaNgan; }
            set { _MoTaNgan = value; }
        }
        private string _MoTaDai;
        public string MoTaDai
        {
            get { return _MoTaDai; }
            set { _MoTaDai = value; }
        }
        private DateTime _NgayTao;
        public DateTime NgayTao
        {
            get { return _NgayTao; }
            set { _NgayTao = value; }
        }
        private DateTime _NgaySua;
        public DateTime NgaySua
        {
            get { return _NgaySua; }
            set { _NgaySua = value; }
        }
         public DALSanPham(int ID,string TenSanPham, string LinkHinhAnh, string DuongDanSanPham, string Gia, string MoTaNgan, string MoTaDai, DateTime NgayTao, DateTime Ngaysua)
        {
            _ID = ID;
            _TenSanPham = TenSanPham;
            _LinkHinhAnh = LinkHinhAnh;
            _Gia = Gia;
            _DuongDanSanPham = DuongDanSanPham;             
             _MoTaNgan = MoTaNgan;
             _MoTaDai = MoTaDai;
            _NgayTao = NgayTao;
            _NgaySua = NgaySua;
        }
         public DALSanPham()
        {
            _ID = -1;
            _TenSanPham = string.Empty;
            _LinkHinhAnh = string.Empty;
            _Gia = string.Empty;
            _DuongDanSanPham = string.Empty;         
            _MoTaNgan = string.Empty;
            _MoTaDai = string.Empty;
            _NgayTao = DateTime.Now;
            _NgaySua = DateTime.Now;
        }

         public object DuongDanDangNhap { get; set; }
    }
}