using Cooperchip.ITDeveloper.Farmacia.Domain.Entities;
using FluentValidation;
using FluentValidation.Results;

namespace Cooperchip.ITDeveloper.Farmacia.Domain.Notificacoes
{
    public abstract class BaseService
    {
        private readonly INotificador _notificador;

        protected BaseService(INotificador notificador)
        {
            _notificador = notificador;
        }

        protected void Notificar(ValidationResult validationResult)
        {
            foreach (var error in validationResult.Errors)
            {
                Notificar(error.ErrorMessage);
            }
        }

        protected void Notificar(string mensagem)
        {
            _notificador.Handle(new Notificacao(mensagem));
        }


        //This code is used to validate an entity using an AbstractValidator.
        protected bool ExecutarValidacao<TVal, T>(TVal validacao, T entidade) where TVal : AbstractValidator<T> where T : EntityBase
        {
            //Validate the entity using the validator
            var validator = validacao.Validate(entidade);
            //If the validation is successful, return true
            if (validator.IsValid) return true;
            //Otherwise, notify the user of the validation errors and return false
            Notificar(validator);
            return false;
        }
    }
}
