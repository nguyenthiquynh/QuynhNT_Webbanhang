using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Webbanhang.Models
{
    public class DALHinhAnhSanPham
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
        private string _HinhAnhCha;
        public string HinhAnhCHa
        {
            get { return _HinhAnhCha; }
            set { _HinhAnhCha = value; }
        }
        private string _HinhAnhCon;
        public string HinhAnhCon
        {
            get { return _HinhAnhCon; }
            set { _HinhAnhCon = value; }
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
         public DALHinhAnhSanPham(int ID,string TenSanPham, string HinhAnhCha, string HinhAnhCon, DateTime NgayTao, DateTime Ngaysua)
        {
            _ID = ID;
            _TenSanPham = TenSanPham;
            _HinhAnhCha = HinhAnhCha;
             _HinhAnhCon = HinhAnhCon;
            _NgayTao = NgayTao;
            _NgaySua = NgaySua;
        }
        public DALHinhAnhSanPham()
          {
            _ID = -1;
            _TenSanPham = string.Empty;
            _HinhAnhCha = string.Empty;
            _HinhAnhCon = string.Empty;
            _NgayTao = DateTime.Now;
            _NgaySua = DateTime.Now;
        }
    }
}