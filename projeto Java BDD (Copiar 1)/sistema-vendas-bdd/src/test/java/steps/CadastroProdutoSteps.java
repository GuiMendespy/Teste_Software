/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package steps;

/**
 *
 * @author breno
 */
import br.com.breno.sistema.vendas.bdd.Produto;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import static org.junit.Assert.*;
import java.util.HashMap;
import java.util.Map;

public class CadastroProdutoSteps {

    private String nomeProduto;
    private double precoProduto;
    private int estoqueProduto;
    private String mensagem;
    private boolean produtoCadastrado = false;
    private Map<String, Produto> produtosCadastrados = new HashMap<>();

    @Given("que eu estou na página de cadastro de produtos")
    public void que_eu_estou_na_página_de_cadastro_de_produtos() {
        System.out.println("Estou na página de cadastro de produtos.");
    }

    @When("eu preencho o campo {string} com {string}")
    public void eu_preencho_o_campo_com(String campo, String valor) {
        if (campo.equals("Nome")) {
            this.nomeProduto = valor;
        } else if (campo.equals("Preço")) {
            this.precoProduto = Double.parseDouble(valor);
        } else if (campo.equals("Estoque")) {
            this.estoqueProduto = Integer.parseInt(valor);
        }
        System.out.println("Preenchi o campo " + campo + " com " + valor);
    }

    @When("eu clico no botão {string}")
    public void eu_clico_no_botão(String botao) {
        System.out.println("Cliquei no botão " + botao);
        if (botao.equals("Salvar Produto")) {
            Produto novoProduto = new Produto(nomeProduto, precoProduto, estoqueProduto);
            produtosCadastrados.put(nomeProduto, novoProduto);
            produtoCadastrado = true;
            mensagem = "Produto cadastrado com sucesso!";
        }
    }

    @Then("uma mensagem de sucesso {string} deve ser exibida")
    public void uma_mensagem_de_sucesso_deve_ser_exibida(String mensagemEsperada) {
        assertEquals(mensagemEsperada, this.mensagem);
        System.out.println("Mensagem exibida: " + this.mensagem);
    }

    @Then("o produto {string} deve estar disponível no sistema.")
    public void o_produto_deve_estar_disponível_no_sistema(String nomeProdutoEsperado) {
        assertTrue(produtosCadastrados.containsKey(nomeProdutoEsperado));
        System.out.println("O produto " + nomeProdutoEsperado + " está disponível.");
    }
}