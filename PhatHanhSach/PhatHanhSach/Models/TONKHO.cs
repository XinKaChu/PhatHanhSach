//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PhatHanhSach.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class TONKHO
    {
        public int MaSach { get; set; }
        public System.DateTime ThoiGian { get; set; }
        public Nullable<int> SLTon { get; set; }
    
        public virtual SACH SACH { get; set; }
    }
}