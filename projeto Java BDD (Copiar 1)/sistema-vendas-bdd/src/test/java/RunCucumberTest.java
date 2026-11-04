/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author breno
 */
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = "src/test/java/funcionalidades/",
                //+ "https://drive.google.com/file/d/1ZG0YWQ7HkHaSze3fAK6qAnfLvEbxeOpR/view?usp=drive_linklidades", // Caminho para a pasta de features
        glue = "com.example.vendas.steps", // Caminho para a pasta de steps
        plugin = {"pretty", "html:target/cucumber-reports"} // Opcional: plugins de relatório
)
public class RunCucumberTest {
}