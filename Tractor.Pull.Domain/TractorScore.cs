using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Tractor.Pull.Domain
{
    [Table("tblTractorScore")]
    public partial class TractorScore
    {
        public int Id { get; set; }
        public int TractorRef { get; set; }
        public int Score { get; set; }

        public Tractor Tractor { get; set; }
    }
}
