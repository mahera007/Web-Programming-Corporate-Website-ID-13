//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TECHNETWORK.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Service
    {
        public int Service_no { get; set; }
        public string Service_name { get; set; }
        public string Service_provider_name { get; set; }
        public Nullable<System.DateTime> Servicing_last_date { get; set; }
        public Nullable<decimal> Service_cost { get; set; }
        public string Details { get; set; }
    }
}