using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Tractor.Pull.Domain;

namespace Tractor.Pull.Repository
{
    public class OwnerRepository : RepositoryBase
    {
        public OwnerRepository(TractorContext context) : base(context)
        { }

        public Owner GetOwnerById(int id)
        {
            throw new NotImplementedException();    // Maybe we should do something here
        }
    }
}
