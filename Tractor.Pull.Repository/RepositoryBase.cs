using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Tractor.Pull.Domain;

namespace Tractor.Pull.Repository
{
    public class RepositoryBase
    {
        protected readonly TractorContext Context;

        public RepositoryBase(TractorContext context)
        {
            Context = context;
        }
    }
}
