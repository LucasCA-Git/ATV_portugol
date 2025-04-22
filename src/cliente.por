programa
{
    // Arrays para armazenar os clientes
    inteiro codigoClientes[10]
    cadeia nomesClientes[10]
    inteiro qtdClientes = 0

    funcao cadastrarCliente()
    {
        se (qtdClientes < 10)
        {
            escreva("\nDigite o código do cliente: ")
            leia(codigoClientes[qtdClientes])
            
            escreva("Digite o nome do cliente: ")
            leia(nomesClientes[qtdClientes])
            
            qtdClientes++
            escreva("\nCliente cadastrado com sucesso!\n")
        }
        senao
        {
            escreva("\nLimite de clientes atingido!\n")
        }
    }

    funcao exibirClientes()
    {
        escreva("\nLista de Clientes:\n")
        para (inteiro i = 0; i < qtdClientes; i++)
        {
            escreva("Código: ", codigoClientes[i], " - Nome: ", nomesClientes[i], "\n")
        }
    }
}