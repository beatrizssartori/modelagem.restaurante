# modelagem.restaurante
💡 Para criar o DER (Diagrama Entidade Relacionamento) deste projeto, utilizei o draw.io, e este foi o resultado: 
https://bityli.com/SkFqp

Script do DER:
● Restaurante/HorarioFuncionamento: O Rancho Casa Mexicana pode não ter nenhum horário de funcionamento, caso esteja fechado, ou vários horários (de
segunda à sexta, atendem das 18:00 às 23:00h, e no domingo é fechado).
● Restaurante/Contato: Este restaurante deve ter pelo menos uma forma de contato, seja via facebook, instagram ou telefone.
● Restaurante/Wordpress: E ele estará cadastrado no Wordpress que criaremos, por isso a relação 1:1.
● Wordpress/CadastroCliente: No site, haverá uma página de Cadastro do Cliente, em que o mesmo cadastrará seu nome, telefone e e-mail. Há a opção de nenhum
cliente se cadastrar, ou uma grande quantidade.
● Wordpress/CadastroDigital: No wordpress, também terá um tópico chamado Cardápio Digital, que direcionará para outra plataforma (Cliquefood) - esta
plataforma já tem os itens registrados com seus preços, além de possibilitar que o cliente faça seu pedido e escolha a forma de pagamento e retirada por lá -, 
porém podem haver mais tipos de cardápios também, por exemplo, separando bebidas de comidas.
● Wordpress/Contato: Esse domínio terá uma aba para Contato com o Rancho Casa Mexicana, em que estarão cadastrados um ou mais contatos do restaurante, e
localização.
● Wordpress/Administrador: Um ou mais administradores terão seus logins de acesso para administrar o site, podendo postar conteúdos, editar ou excluir.
● Administrador/CadastroCliente: Assim como nenhum cliente pode se cadastrar, vários também. E, no cadastro, registrarão seus e-mails. Estes e-mails ficarão
visíveis para o(s) administrador(es).
● Administrador/NoticiaAdministrador: O(s) administrador(es) terão possibilidade de enviar notícias (novidades e promoções) aos clientes, caso desejarem
