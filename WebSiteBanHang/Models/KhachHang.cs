namespace WebSiteBanHang.Models
{

    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;
    using System.Web;

    public partial class KhachHang
{

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public KhachHang()
         {

        this.DonDatHangs = new HashSet<DonDatHang>();

        }
        
        public int MaKH { get; set; }
       
        public string TenKH { get; set; }
        
        public string DiaChi { get; set; }
       
        public string Email { get; set; }
       
        public string SoDienThoai { get; set; }

    public Nullable<int> MaThanhVien { get; set; }



    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]

    public virtual ICollection<DonDatHang> DonDatHangs { get; set; }

    public virtual ThanhVien ThanhVien { get; set; }

}

}
