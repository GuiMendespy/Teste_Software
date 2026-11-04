/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package steps;

/**
 *
 * @author breno
 */
import br.com.breno.sistema.vendas.bdd.CarrinhoDeCompras;
import br.com.breno.sistema.vendas.bdd.Cliente;
import br.com.breno.sistema.vendas.bdd.Produto;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import static org.junit.Assert.*;

public class CarrinhoDeComprasSteps {

    private Produto produtoDisponivel;
    private CarrinhoDeCompras carrinho;
    private int quantidadeAdicionada;

    @Given("que um produto {string} com preço R${double} e estoque de {int} está disponível")
    public void que_um_produto_com_preço_r$e_estoque_de_está_disponível(String nome, Double preco, Integer estoque) {
        produtoDisponivel = new Produto(nome, preco, estoque);
        System.out.println("Produto disponível: " + nome + ", Preço: " + preco + ", Estoque: " + estoque);
    }

    @Given("eu estou visualizando a página do produto {string}")
    public void eu_estou_visualizando_a_página_do_produto(String nomeProduto) {
        assertEquals(produtoDisponivel.getNome(), nomeProduto);
        carrinho = new CarrinhoDeCompras(new Cliente("Cliente Teste", "teste@email.com"));
        System.out.println("Visualizando a página do produto: " + nomeProduto);
    }

    @When("eu clico no botão {string}")
    public void eu_clico_no_botão(String botao) {
        if (botao.equals("Adicionar ao Carrinho")) {
            carrinho.adicionarItem(produtoDisponivel, 1);
            quantidadeAdicionada = 1;
            produtoDisponivel.reduzirEstoque(1);
            System.out.println("Cliquei em Adicionar ao Carrinho.");
        }
    }
}