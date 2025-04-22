programa
{
    // Arrays para armazenar a ordem de serviço
    inteiro clienteOS[10]
    inteiro produtoOS[10]
    inteiro quantidadeOS[10]
    real totalOS[10]
    inteiro qtdOS = 0

    funcao criarOS(inteiro cliente, inteiro produto, inteiro quantidade, real preco)
    {
        se (qtdOS < 10)
        {
            clienteOS[qtdOS] = cliente
            produtoOS[qtdOS] = produto
            quantidadeOS[qtdOS] = quantidade
            totalOS[qtdOS] = quantidade * preco
            qtdOS++
            escreva("\nOrdem de Serviço criada com sucesso!\n")
        }
        senao
        {
            escreva("\nLimite de ordens de serviço atingido!\n")
        }
    }

    funcao exibirOS()
    {
        escreva("\nLista de Ordens de Serviço:\n")
        para (inteiro i = 0; i < qtdOS; i++)
        {
            escreva("Cliente: ", clienteOS[i], " - Produto: ", produtoOS[i], " - Quantidade: ", quantidadeOS[i], " - Total: R$ ", totalOS[i], "\n")
        }
    }
}