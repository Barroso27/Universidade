import java.time.LocalDate;
import java.util.Scanner;

public class Paginas {
    public void paginaInicial(Utilizador utilizador) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("\033[2J\033[H");
        System.out.flush();
        System.out.println("Bem-vindo, " + utilizador.getNome());
        LocalDate dataAtual = LocalDate.now();
        System.out.println("Data atual: " + dataAtual);
        System.out.println("1 - Criar novo plano de treino");
        System.out.println("2 - Consultar planos de treino");
        int opcao = scanner.nextInt();
        while (opcao != 1 && opcao != 2 && opcao != 3) {
            System.out.println("Opção inválida, tente novamente:");
            opcao = scanner.nextInt();
        }

        Planosdetreino planos = new Planosdetreino();
        planos.setUtilizador(utilizador.getUserName());

        if(opcao == 1) {
            paginaCriarPlanoTreino(utilizador, planos);
        } else if (opcao == 2) {
            paginaConsultarPlanosTreino(planos);
        }
        /*
        System.out.println("1- Consultar Atividades Isoladas");
        System.out.println("2- Consultar Planos de Treino");
        System.out.println("3- Consultar dados de atividade física");
        System.out.println("4- Consultar/Alterar dados dos planos de treino");
        if (opcao == 1){
            AtividadesIsoladas atividades = new AtividadesIsoladas(this, utilizador);
        }
        else if (opcao == 2){
            Planosdetreino planos = new Planosdetreino(usuario);
        }
        else {
        
        }
        
		*/
	}

    private void paginaCriarPlanoTreino(Utilizador utilizador, Planosdetreino planos){
        Scanner scanner = new Scanner(System.in);
        scanner.useDelimiter("\n");
        System.out.println("Digite o nome do plano de treino:");

        PlanoTreino plano = new PlanoTreino();
        plano.setNomePlano(scanner.next());

        AtividadesIsoladas atividades = new AtividadesIsoladas(this, utilizador, plano);

        System.out.println("Digite o dia da semana que pretende fazer o plano de treino: ");
        plano.setDiaDaSemana(scanner.next());

        planos.adicionaPlanoTreino(plano);
        planos.guardarPlanosTreino();
    }

    private void paginaConsultarPlanosTreino(Planosdetreino plano){
        Scanner scanner = new Scanner(System.in);
        System.out.println("1 - Consultar todos os planos de treino");
        System.out.println("2 - Consultar planos de treino por dia da semana");
        int opcao = scanner.nextInt();
        while (opcao != 1 && opcao != 2) {
            System.out.println("Opção inválida, tente novamente:");
            opcao = scanner.nextInt();
        }

        if(opcao == 1){
            for(PlanoTreino planos : plano.getPlano()){
                System.out.println("Nome do plano: " + planos.getNomePlano());
                System.out.println("Dia da semana: " + planos.getDiaDaSemana());
                System.out.println("Atividades:");
                for(Atividade atividade : planos.getPlano()){
                    if(atividade instanceof Trilha){
                        Trilha trilha = (Trilha) atividade;
                        System.out.println(trilha.getNomeAtividade());
                    } else if(atividade instanceof Resistencia){
                        Resistencia resistencia = (Resistencia) atividade;
                        System.out.println(resistencia.toString());
                    }else if(atividade instanceof Series){
                        Series series = (Series) atividade;
                        System.out.println(series.toString());
                    }else if(atividade instanceof SeriesPesos){
                        SeriesPesos seriesPesos = (SeriesPesos) atividade;
                        System.out.println(seriesPesos.toString());
                    }
                }
            }
        } else if(opcao == 2){

        }
    }
}

        

