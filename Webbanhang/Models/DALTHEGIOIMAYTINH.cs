using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Webbanhang.Models
{
    public class DALTHEGIOIMAYTINH
    {
        private int _ID;
        public int ID
        {
            get { return _ID; }
            set { _ID = value; }
        }

        private string _TenMenu;
        public string TenMenu
        {
            get { return _TenMenu; }
            set { _TenMenu = value; }
        }
        private string _DuongDanMenu;
        public string DuongDanMenu
        {
            get { return _DuongDanMenu; }
            set { _DuongDanMenu = value; }
        }
        private DateTime _NgayTao;
        private DateTime NgayTao
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
        public DALTHEGIOIMAYTINH(int ID, string TenMenu, string DuongDanMenu, DateTime NgayTao, DateTime Ngaysua)
        {
            _ID = ID;
            _TenMenu = TenMenu;
            _DuongDanMenu = DuongDanMenu;
            _NgayTao = NgayTao;
            _NgaySua = NgaySua;
        }
        public DALTHEGIOIMAYTINH()
        {
            _ID = -1;
            _TenMenu = string.Empty;
            _DuongDanMenu = string.Empty;
            _NgayTao = DateTime.Now;
            _NgaySua = DateTime.Now;
        }
    }
}