import java.util.Scanner;
import java.io.Console;



public class AtividadesIsoladas {
    private Scanner scanner = new Scanner(System.in);
    Console console = System.console();
    public static final String IniciarNegrito = "\u001B[1m";
    public static final String EstiloPadrao = "\u001B[0m";
    public AtividadesIsoladas(Paginas pagina, Utilizador utilizador, PlanoTreino planotreino){
        System.out.print("\033[2J\033[H");
        System.out.flush();
        System.out.println("Tipo de Atividades:");
        System.out.println("1- Atividades de trilha");
        System.out.println("2- Atividades de resistência");
        System.out.println("3- Exercícios de series");
        System.out.println("4- Exercícios de series com pesos");
        System.out.println("Para voltar ao menu inicial, pressione m ");
        char opcao = scanner.next().charAt(0);
        while (!(opcao == '1' || opcao == '2' || opcao == '3' || opcao == '4' || opcao == 'm')){
            System.out.println("Opção inválida, tente novamente:");
            opcao = scanner.next().charAt(0);
        }
        if(opcao == '1'){
            Atividadedetrila(planotreino);
        }
        else if(opcao == '2'){
            Atividadederesistencia(utilizador, planotreino);
        }
        else if(opcao == '3'){
            Exerciciosdeseries(utilizador, planotreino);
        }
        else if(opcao == '4'){
            Exerciciosdeseriescompesos(utilizador, planotreino);

        }
        else if(opcao == 'm'){
            pagina.paginaInicial(utilizador);
        }
    }
    private void Atividadedetrila(PlanoTreino planotreino){
        System.out.print("\033[2J\033[H");
        System.out.flush();
        System.out.println("Atividades de trilha:");
        System.out.println(IniciarNegrito + "1- Corrida na estrada" + EstiloPadrao);
        System.out.println(IniciarNegrito + "2- Trail no monte" + EstiloPadrao);
        System.out.println(IniciarNegrito + "3- Bicicleta de montanha" + EstiloPadrao);
        System.out.println(IniciarNegrito + "4- Bicicleta de estrada" + EstiloPadrao);
        //exerciosexecutados(usuario);

        switch (scanner.nextInt()) {
            case 1:
                planotreino.adicionaAtividade(new Trilha(10, 0, "Corrida na estrada", 1000, 60, "Trilha"));
                break;
            case 2:
                planotreino.adicionaAtividade(new Trilha(50, 300, "Trail no monte", 1600, 45, "Trilha"));
                break;
            case 3:
                planotreino.adicionaAtividade(new Trilha(230, 275, "Bicicleta na montanha", 3000, 180, "Trilha"));
                break;
            case 4:
                planotreino.adicionaAtividade(new Trilha(100, 0, "Bicicleta na estrada", 1900,  80, "Trilha"));
                break;
            default:
                System.out.println("Opção inválida");
                break;
        }
        //retroceder(utilizador);
    }
    public void Atividadederesistencia(Utilizador utilizador, PlanoTreino planotreino){
        System.out.print("\033[2J\033[H");
        System.out.flush();
        System.out.println("Atividades de resistencia:");
        System.out.println(IniciarNegrito + "1- Remo" + EstiloPadrao);
        System.out.println(IniciarNegrito + "2- Corrida na pista de atletismo" + EstiloPadrao) ;
        System.out.println(IniciarNegrito + "3- Patinagem" + EstiloPadrao);
        //exerciosexecutados(usuario);
        //retroceder(utilizador);
        
    }
    public void Exerciciosdeseries(Utilizador utilizador, PlanoTreino planotreino){
        System.out.print("\033[2J\033[H");
        System.out.flush();
        System.out.println("Exercicios de series:");
        System.out.println(IniciarNegrito + "1- Abdominais" + EstiloPadrao);
        System.out.println("    15x | 15x | 15x");
        System.out.println(IniciarNegrito + "2- Flexões" + EstiloPadrao);
        System.out.println("    15x | 15x | 20x");
        System.out.println(IniciarNegrito + "3- Agachamentos" + EstiloPadrao);
        System.out.println("    20x | 20x | 20x");
        System.out.println(IniciarNegrito + "4- Prancha" + EstiloPadrao);
        System.out.println("    1 min. | 1 min. | 1 min.");
        System.out.println(IniciarNegrito + "5- Burpees" + EstiloPadrao);
        System.out.println("    10x | 10x | 10x");
        //exerciosexecutados(usuario);
        //retroceder(utilizador);
        
        
    }
    public void Exerciciosdeseriescompesos(Utilizador utilizador, PlanoTreino planotreino){
        System.out.print("\033[2J\033[H");
        System.out.flush();
        System.out.println("Exercicios de series com pesos:");
        System.out.println(IniciarNegrito + "1- Extensão de pernas" + EstiloPadrao);
        System.out.println("    12x  | 15x | 15x");
        System.out.println(IniciarNegrito + "2- Supino" + EstiloPadrao);
        System.out.println("    15x | 15x | 20x");
        System.out.println(IniciarNegrito + "3- Agachamentos com barra" + EstiloPadrao);
        System.out.println("    20x | 20x | 20x");
        System.out.println(IniciarNegrito + "4- Puxada de costas" + EstiloPadrao);
        System.out.println("    10x | 10x | 10x");
        //exerciosexecutados(usuario);
        //retroceder(utilizador);
    
        
    }
    /*public void retroceder(Utilizador utilizador){
        System.out.println("\nPara voltar ao menu inicial, pressione m ");
        System.out.println("Para voltar ao menu das atividade , pressione a");
        char tecla = console.readLine().charAt(0);
        while (tecla != 'm' && tecla != 'a') {
            System.out.println("Opção inválida");
            tecla = console.readLine().charAt(0);
        }
        if(tecla == 'm'){
            PageInicialUtiliz welcome = new PageInicialUtiliz(usuario);
        }
        else if(tecla == 'a'){
            AtividadesIsoladas atividades = new AtividadesIsoladas(usuario);
        }
    }*/
}