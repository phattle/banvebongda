
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------


namespace WebSiteBanHang.Models
{

using System;
    using System.Collections.Generic;
    
public partial class LoaiThanhVien
{

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public LoaiThanhVien()
    {

        this.ThanhViens = new HashSet<ThanhVien>();

        this.LoaiThanhVien_Quyen = new HashSet<LoaiThanhVien_Quyen>();

    }


    public int MaLoaiTV { get; set; }

    public string TenLoai { get; set; }

    public Nullable<int> UuDai { get; set; }



    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]

    public virtual ICollection<ThanhVien> ThanhViens { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]

    public virtual ICollection<LoaiThanhVien_Quyen> LoaiThanhVien_Quyen { get; set; }

}

}
