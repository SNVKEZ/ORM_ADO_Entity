//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebApplication7
{
    using System;
    using System.Collections.Generic;
    
    public partial class Cars
    {
        public int IdCar { get; set; }
        public string Model { get; set; }
        public int Year { get; set; }
        public string Country { get; set; }
        public int PeoplesIdPerson { get; set; }
    
        public virtual Peoples Peoples { get; set; }
    }
}