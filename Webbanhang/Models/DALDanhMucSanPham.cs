using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Webbanhang.Models
{
    public class DALDanhMucSanPham
    {
        private int _ID;
        public int ID
        {
            get { return _ID; }
            set { _ID = value; }
        }

        private string _ParentID;
        public string ParentID
        {
            get { return _ParentID; }
            set { _ParentID = value; }
        }
        private string _TenDanhMucSanPham;
        public string TenDanhMucSanPham
        {
            get { return _TenDanhMucSanPham; }
            set { _TenDanhMucSanPham = value; }
        }
        private string _DuongDanDanhMucSanPham;
        public string DuongDanDanhMucSanPham
        {
            get { return _DuongDanDanhMucSanPham; }
            set { _DuongDanDanhMucSanPham = value; }
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
         public DALDanhMucSanPham(int ID,string ParentID, string TenDanhMucSanPham, string DuongDanDanhMucSanPham, DateTime NgayTao, DateTime Ngaysua)
        {
            _ID = ID;
            _ParentID= ParentID;
            _TenDanhMucSanPham = TenDanhMucSanPham;
            _DuongDanDanhMucSanPham = DuongDanDanhMucSanPham;
            _NgayTao = NgayTao;
            _NgaySua = NgaySua;
        }
         public DALDanhMucSanPham()
        {
            _ID = -1;
            _ParentID = string.Empty;
            _TenDanhMucSanPham = string.Empty;
            _DuongDanDanhMucSanPham = string.Empty;
            _NgayTao = DateTime.Now;
            _NgaySua = DateTime.Now;
        }

    }
}