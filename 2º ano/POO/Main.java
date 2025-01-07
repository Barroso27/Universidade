import java.util.Scanner;

public class Main {
	public static void main(String[] args) {
		Utilizador utilizador = new Utilizador();

		Acesso acesso = new Acesso();

		Scanner scanner = new Scanner(System.in);
		scanner.useDelimiter("\n");
		int opcao;
		do{
			System.out.println("Se você já é cadastrado, digite 1.\nSe não , digite 2.");
			opcao = scanner.nextInt();
		} while (opcao != 1 && opcao != 2);


		if(opcao == 1){
			acesso.paginaLogin(utilizador);
		}else{
			acesso.paginaRegisto(utilizador);
		}

		Paginas pagina = new Paginas();
		pagina.paginaInicial(utilizador);
	}
}
