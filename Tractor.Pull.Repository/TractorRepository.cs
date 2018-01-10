using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
using Tractor.Pull.Domain;

namespace Tractor.Pull.Repository
{
    public class TractorRepository : RepositoryBase
    {
        public TractorRepository(TractorContext context) : base(context)
        { }

        private IQueryable<Domain.Tractor> QueryTractors()
        {
            return Context.Tractors;
        }

        private IQueryable<Domain.Tractor> QueryTractors(Expression<Func<Domain.Tractor, object>> includeExpressions)
        {
            return QueryTractors().Include(includeExpressions);
        }

        public ICollection<Domain.Tractor> GetTractors()
        {
            return QueryTractors().ToList();
        }

        public ICollection<Domain.Tractor> GetOwnedTractors(int ownerId)
        {
            return QueryTractors().Where(x => x.OwnerRef == ownerId).ToList();
        }
    }
}
