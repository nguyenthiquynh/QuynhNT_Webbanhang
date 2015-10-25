using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Webbanhang.Models
{
    public class DALChiTietSanPham
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
        private string _Gia;
        public string Gia
        {
            get { return _Gia; }
            set { _Gia = value; }
        }
        private string _HinhAnh;
        public string HinhAnh
        {
            get { return _HinhAnh; }
            set { _HinhAnh = value; }
        }
        private string _DanhGia;
        public string DanhGia
        {
            get { return _DanhGia; }
            set { _DanhGia = value; }
        }
        private string _BaoHanh;
        public string BaoHanh
        {
            get { return _BaoHanh; }
            set { _BaoHanh = value; }
        }
        private string _LuotXem;
        public string LuotXem
        {
            get { return _LuotXem; }
            set { _LuotXem = value; }
        }
        private string _KhoHang;
        public string KhoHang
        {
            get { return _KhoHang; }
            set { _KhoHang = value; }
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
         public DALChiTietSanPham(int ID,string TenSanPham, string Gia, string HinhAnh, string LuotXem, string DanhGia, string KhoHang, string BaoHanh, DateTime NgayTao, DateTime Ngaysua)
        {
            _ID = ID;
            _TenSanPham = TenSanPham;
            _Gia = Gia;
            _HinhAnh = HinhAnh;
            _LuotXem = LuotXem;
            _DanhGia = DanhGia;
            _KhoHang = KhoHang;
            _BaoHanh = BaoHanh;
            _NgayTao = NgayTao;
            _NgaySua = NgaySua;
        }
        public DALChiTietSanPham()
          {
            _ID = -1;
            _TenSanPham = string.Empty;
            _Gia = string.Empty;
            _HinhAnh = string.Empty;
            _LuotXem = string.Empty;
            _DanhGia = string.Empty;
            _KhoHang = string.Empty;
            _BaoHanh = string.Empty;
            _NgayTao = DateTime.Now;
            _NgaySua = DateTime.Now;
        }
    }
}