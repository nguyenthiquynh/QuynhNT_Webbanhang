using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Webbanhang.Models
{
    public class DALDangNhap
    {
        private int _ID;
        public int ID
        {
            get { return _ID; }
            set { _ID = value; }
        }
        private string _TenDangNhap;
        public string TenDangNhap
        {
            get { return _TenDangNhap; }
            set { _TenDangNhap = value; }
        }
        private string _MatKhau;
        public string MatKhau
        {
            get { return _MatKhau; }
            set { _MatKhau = value; }
        }
        private string _DuongDanDangNhap;
        public string DuongDanDangNhap
        {
            get { return _DuongDanDangNhap; }
            set { _DuongDanDangNhap = value; }
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
         public DALDangNhap(int ID,string TenDangNhap, string MatKhau, string DuongDanDangNhap, DateTime NgayTao, DateTime Ngaysua)
        {
            _ID = ID;
            _TenDangNhap = TenDangNhap;
            _MatKhau = MatKhau;
            _DuongDanDangNhap = DuongDanDangNhap;             
            _NgayTao = NgayTao;
            _NgaySua = NgaySua;
        }
         public DALDangNhap()
        {
            _ID = -1;
            _TenDangNhap = string.Empty;
            _MatKhau = string.Empty;
            _DuongDanDangNhap = string.Empty;         
            _NgayTao = DateTime.Now;
            _NgaySua = DateTime.Now;
        }
    }
}