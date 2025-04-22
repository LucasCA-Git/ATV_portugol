programa
{
    // Arrays para armazenar os produtos
    inteiro codigoProdutos[10]
    cadeia nomesProdutos[10]
    real precos[10]
    inteiro qtdProdutos = 0

    funcao cadastrarProduto()
    {
        se (qtdProdutos < 10)
        {
            escreva("\nDigite o código do produto: ")
            leia(codigoProdutos[qtdProdutos])
            
            escreva("Digite o nome do produto: ")
            leia(nomesProdutos[qtdProdutos])
            
            escreva("Digite o preço do produto: ")
            leia(precos[qtdProdutos])
            
            qtdProdutos++
            escreva("\nProduto cadastrado com sucesso!\n")
        }
        senao
        {
            escreva("\nLimite de produtos atingido!\n")
        }
    }

    funcao exibirProdutos()
    {
        escreva("\nLista de Produtos:\n")
        para (inteiro i = 0; i < qtdProdutos; i++)
        {
            escreva("Código: ", codigoProdutos[i], " - Nome: ", nomesProdutos[i], " - Preço: R$ ", precos[i], "\n")
        }
    }
}