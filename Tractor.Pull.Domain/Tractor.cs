namespace Tractor.Pull.Domain
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("tblTractor")]
    public partial class Tractor
    {
        public Tractor()
        {
            Scores = new HashSet<TractorScore>();
        }

        public int Id { get; set; }

        public int OwnerRef { get; set; }

        [Required]
        [StringLength(50)]
        public string Make { get; set; }

        [Required]
        [StringLength(50)]
        public string Model { get; set; }

        public int BHP { get; set; }

        public int Torque { get; set; }

        public virtual Owner Owner { get; set; }

        public virtual ICollection<TractorScore> Scores { get; set; }
    }
}
