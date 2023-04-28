# SmartAdmin with ASP.NET Core 7.0, C#

---	
- Scripts das bases de dados populadas para com exemplos: [acesse](https://github.com/carlosItDevelop/ConsultoriaMasterDetailAdminFornecedorNetCore7/tree/main/databaseScripts)	
	
- Projeto para demostrar o uso de Contexto Delimitado.
	- Teremos como Use Case o controle de uma Farmácia, que faz parte de um projeto de Gestão Hospitalar.
	
- Teremos um AggregateRoot, que é a classe Farmacia, que controlará seus Modelos Ricos, partes do mesmo Domínio.
	- Farmacia : IAggregateRoot
	- Fornecedor
	- RepresentanteLegal
	- Endereco
	- Produtos
	
- Nossos Services usarão as lógicas dos Modelos e fará a conssistência com Notification Pattern;
- Teremos um GenericRepository, que tratará dos CRUDs básicos e que implementará IAggregateRoot e EntityBase;
- Usaremos FluentValidation para garantir nossoas Regras de Negócios em nossas Domain Services;
- Usaremos Command, CommandHandler, Event, EventHandler e DomainEvent;
- Usaremos Algumas bibliotecas consagradas como o AutoMapper e o MediatR, do mesmo autor: Bogard, J.

---
## Outras features e Pattenrs serão acrecidos aqui com o tempo.

- Usaremos a consagrada Template SmartAdmin para ajudar em nosso Layout MVC;

---
## Cooperchip na Udemy:

- Quer conhecer mais dos nossos projetos, acesse-os na Udemy: [acesse](https://www.udemy.com/user/carlos-alberto-dos-santos-34/)