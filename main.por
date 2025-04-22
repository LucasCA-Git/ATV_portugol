programa
{
    inclua "cliente.por"
    inclua "produto.por"
    inclua "ordem_servico.por"

    funcao inicio()
    {
        inteiro opcao, clienteSelecionado, produtoSelecionado, quantidade
        real precoSelecionado

        enquanto (verdadeiro)
        {
            escreva("\nMenu Principal:\n")
            escreva("1. Cadastrar Cliente\n")
            escreva("2. Cadastrar Produto\n")
            escreva("3. Criar Ordem de Serviço\n")
            escreva("4. Exibir Clientes\n")
            escreva("5. Exibir Produtos\n")
            escreva("6. Exibir Ordens de Serviço\n")
            escreva("0. Sair\n")
            escreva("Escolha uma opção: ")
            leia(opcao)

            escolha (opcao)
            {
                caso 1:
                    cadastrarCliente()
                    pare
                caso 2:
                    cadastrarProduto()
                    pare
                caso 3:
                    escreva("\nSelecione o cliente pelo índice (0 a ", qtdClientes - 1, "): ")
                    leia(clienteSelecionado)
                    
                    escreva("Selecione o produto pelo índice (0 a ", qtdProdutos - 1, "): ")
                    leia(produtoSelecionado)
                    
                    escreva("Digite a quantidade: ")
                    leia(quantidade)
                    
                    precoSelecionado = precos[produtoSelecionado]
                    criarOS(clienteSelecionado, produtoSelecionado, quantidade, precoSelecionado)
                    pare
                caso 4:
                    exibirClientes()
                    pare
                caso 5:
                    exibirProdutos()
                    pare
                caso 6:
                    exibirOS()
                    pare
                caso 0:
                    escreva("\nSaindo do programa...\n")
                    interrompa
                padrao:
                    escreva("\nOpção inválida!\n")
            }
        }
    }
}