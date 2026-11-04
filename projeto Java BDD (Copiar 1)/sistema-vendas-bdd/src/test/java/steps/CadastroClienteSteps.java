/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package steps;

/**
 *
 * @author breno
 */
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import static org.junit.Assert.*;

public class CadastroClienteSteps {

    private String nome;
    private String email;
    private String mensagem;
    private boolean cadastroSucesso = false;

    @Given("que eu estou na página de cadastro")
    public void que_eu_estou_na_pagina_de_cadastro() {
        // Simula estar na página de cadastro (não implementaremos UI)
        System.out.println("Estou na página de cadastro.");
    }

    @When("eu preencho o campo {string} com {string}")
    public void eu_preencho_o_campo_com(String campo, String valor) {
        if (campo.equals("Nome")) {
            this.nome = valor;
        } else if (campo.equals("Email")) {
            this.email = valor;
        }
        System.out.println("Preenchi o campo " + campo + " com " + valor);
    }

    @When("eu clico no botão {string}")
    public void eu_clico_no_botão(String botao) {
        System.out.println("Cliquei no botão " + botao);
        if (botao.equals("Cadastrar")) {
            if (email != null && email.contains("@") && email.contains(".")) {
                cadastroSucesso = true;
                mensagem = "Cadastro realizado com sucesso!";
            } else {
                mensagem = "Por favor, insira um email válido.";
            }
        }
    }

    @Then("eu devo ser redirecionado para a página principal")
    public void eu_devo_ser_redirecionado_para_a_página_principal() {
        assertTrue(cadastroSucesso);
        System.out.println("Redirecionado para a página principal.");
    }

    @Then("uma mensagem de sucesso {string} deve ser exibida.")
    public void uma_mensagem_de_sucesso_deve_ser_exibida(String mensagemEsperada) {
        assertEquals(mensagemEsperada, this.mensagem);
        System.out.println("Mensagem exibida: " + this.mensagem);
    }

    @Then("uma mensagem de erro {string} deve ser exibida.")
    public void uma_mensagem_de_erro_deve_ser_exibida(String mensagemEsperada) {
        assertEquals(mensagemEsperada, this.mensagem);
        System.out.println("Mensagem de erro exibida: " + this.mensagem);
    }
}