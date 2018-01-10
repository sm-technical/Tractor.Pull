namespace Tractor.Pull.Domain
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class TractorContext : DbContext
    {
        public TractorContext()
            : base("name=TractorContext")
        { }

        public virtual DbSet<Owner> Owners { get; set; }
        public virtual DbSet<Tractor> Tractors { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Owner>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<Tractor>()
                .Property(e => e.Make)
                .IsUnicode(false);

            modelBuilder.Entity<Tractor>()
                .Property(e => e.Model)
                .IsUnicode(false);

            modelBuilder.Entity<Tractor>()
                .HasMany(e => e.Scores)
                .WithRequired(e => e.Tractor)
                .HasForeignKey(e => e.TractorRef)
                .WillCascadeOnDelete(false);
        }
    }
}
