using System.Collections.Generic;
using Cooperchip.ITDeveloper.Farmacia.Domain.Interfaces;

namespace Cooperchip.ITDeveloper.Farmacia.Domain.Entities
{
    public class Farmacia : EntityBase, IAggregateRoot
    {
        //Ef
        public Farmacia() { }

        public virtual Fornecedor Fornecedor { get; set; }
        public virtual Produto Produto { get; set; }
        public virtual RepresentanteLegal RepresentanteLegal { get; set; }
        public virtual Endereco Endereco { get; set; }


        public virtual ICollection<Fornecedor> Fornecedores { get; set; }

    }
}
