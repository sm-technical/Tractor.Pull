using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AutoMapper;

namespace Tractor.Pull.Mvc.Models
{
    public class TractorViewModel
    {
        public int Id { get; set; }

        public int OwnerRef { get; set; }

        public string Make { get; set; }

        public string Model { get; set; }

        public int BHP { get; set; }

        public int Torque { get; set; }

        public string OnwerName { get; set; }

        public string OnwerPrimaryContact { get; set; }

        public static TractorViewModel Translate(Domain.Tractor tractor)
        {
            return Mapper.Map<TractorViewModel>(tractor);
        }

        public static ICollection<TractorViewModel> Translate(IEnumerable<Domain.Tractor> tractors)
        {
            return tractors.Select(Translate).ToList();
        }
    }
}