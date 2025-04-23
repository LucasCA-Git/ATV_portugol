programa
{
    inteiro codigoClientes[10], qtdClientes = 0
    cadeia nomesClientes[10]

    inteiro codigoProdutos[10], qtdProdutos = 0
    cadeia nomesProdutos[10]
    real precos[10]

    inteiro clienteOS[10], produtoOS[10], quantidadeOS[10], qtdOS = 0
    real totalOS[10]

    // Função auxiliar para exibir valores com 2 casas decimais
    funcao mostrarRealFormatado(real valor)
    {
        inteiro parteInteira
        inteiro parteDecimal

        parteInteira = valor // conversão implícita de real para inteiro (trunca)
        parteDecimal = (valor * 100) - (parteInteira * 100)

        se (parteDecimal < 10)
        {
            escreva(parteInteira, ",0", parteDecimal)
        }
        senao
        {
            escreva(parteInteira, ",", parteDecimal)
        }
    }

    funcao cadastrar(inteiro tipo)
    {
        se (tipo == 1 e qtdClientes < 10)
        {
            // Cadastrar cliente
            escreva("\nNome do cliente: ")
            leia(nomesClientes[qtdClientes])

            // Código do cliente é atribuído automaticamente pelo contador
            codigoClientes[qtdClientes] = qtdClientes + 1

            qtdClientes++ // Incrementa o contador de clientes
            escreva("Cliente cadastrado com código: ", codigoClientes[qtdClientes - 1], "\n")
        }
        senao se (tipo == 2 e qtdProdutos < 10)
        {
            // Cadastrar produto
            escreva("\nNome do produto: ")
            leia(nomesProdutos[qtdProdutos])

            // Código do produto é atribuído automaticamente pelo contador
            codigoProdutos[qtdProdutos] = qtdProdutos + 1

            escreva("Preço do produto: ")
            leia(precos[qtdProdutos])

            qtdProdutos++ // Incrementa o contador de produtos
            escreva("Produto cadastrado com código: ", codigoProdutos[qtdProdutos - 1], "\n")
        }
        senao
        {
            escreva("\nLimite atingido!\n")
        }
    }

    funcao exibir(inteiro tipo)
    {
        se (tipo == 1)
        {
            escreva("\nClientes:\n")
            para (inteiro i = 0; i < qtdClientes; i++)
            {
                escreva("Código: ", codigoClientes[i], " - Nome: ", nomesClientes[i], "\n")
            }
        }
        senao se (tipo == 2)
        {
            escreva("\nProdutos:\n")
            para (inteiro i = 0; i < qtdProdutos; i++)
            {
                escreva("Código: ", codigoProdutos[i], " - Nome: ", nomesProdutos[i], " - Preço: R$ ")
                mostrarRealFormatado(precos[i])
                escreva("\n")
            }
        }
        senao
        {
            escreva("\nOrdens de Serviço:\n")
            se (qtdOS == 0)
            {
                escreva("Nenhuma ordem cadastrada!\n")
            }
            senao
            {
                para (inteiro i = 0; i < qtdOS; i++)
                {
                    escreva("Código OS: ", i + 1, " - Cliente: ", nomesClientes[clienteOS[i]], " - Produto: ", nomesProdutos[produtoOS[i]], " - Qtd: ", quantidadeOS[i], " - Total: R$ ")
                    mostrarRealFormatado(totalOS[i])
                    escreva("\n")
                }
            }
        }
    }

    funcao criarOS()
{
    se (qtdOS < 10)
    {
        inteiro cliente, produto, qtd

        // Ajuste para mostrar o intervalo correto
        escreva("\nÍndice do cliente (1 a ", qtdClientes, "): ")
        leia(cliente)

        escreva("Índice do produto (1 a ", qtdProdutos, "): ")
        leia(produto)

        escreva("Quantidade: ")
        leia(qtd)

        // Ajuste para usar o índice corretamente (subtrair 1)
        se (cliente >= 1 e cliente <= qtdClientes e produto >= 1 e produto <= qtdProdutos)
        {
            clienteOS[qtdOS] = cliente - 1 // Ajuste para armazenar a posição real (começa em 0)
            produtoOS[qtdOS] = produto - 1 // Ajuste para armazenar a posição real (começa em 0)
            quantidadeOS[qtdOS] = qtd
            totalOS[qtdOS] = quantidadeOS[qtdOS] * precos[produtoOS[qtdOS]]
            qtdOS++ // Incrementa o contador de ordens de serviço

            escreva("Ordem criada com sucesso! Código da OS: ", qtdOS, "\n")
        }
        senao
        {
            escreva("Cliente ou produto inválido!\n")
        }
    }
    senao
    {
        escreva("\nLimite de ordens atingido!\n")
    }
}


    funcao inicio()
    {
        inteiro op
        logico sair = falso

        enquanto (nao sair)
        {
            escreva("\nMenu:\n1. Cadastrar Cliente\n2. Cadastrar Produto\n3. Criar Ordem\n4. Exibir Clientes\n5. Exibir Produtos\n6. Exibir Ordens\n0. Sair\nOpção: ")
            leia(op)

            escolha (op)
            {
                caso 1:
                    cadastrar(1)
                    pare
                caso 2:
                    cadastrar(2)
                    pare
                caso 3:
                    criarOS()
                    pare
                caso 4:
                    exibir(1)
                    pare
                caso 5:
                    exibir(2)
                    pare
                caso 6:
                    exibir(3)
                    pare
                caso 0:
                    escreva("Saindo...\n")
                    sair = verdadeiro
                    pare
                caso contrario:
                    escreva("Opção inválida!\n")
            }
        }
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4364; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */