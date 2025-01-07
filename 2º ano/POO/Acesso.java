import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
public class Acesso {
    public void paginaRegisto(Utilizador utilizador){
        Scanner scanner = new Scanner(System.in);
        scanner.useDelimiter("\n");
        System.out.println("Digite o nome de usuário que pretende:");
        utilizador.setUserName(scanner.next());

        System.out.println("Digite o seu nome completo:");
        utilizador.setNome(scanner.next());
        System.out.println("Digite a sua morada:");
        utilizador.setMorada(scanner.next());
        System.out.println("Digite o seu email:");
        utilizador.setMail(scanner.next());
        while(!isEmailValid(utilizador.getMail())){
            System.out.println("Email inválido, tente novamente:");
            utilizador.setMail(scanner.next());
        }
        System.out.println("Digite a sua frequência cardíaca média:");
        utilizador.setFrequenciacardiaca(scanner.nextInt());
        while(!frequenciacardiacaValida(utilizador.getFrequenciacardiaca())){
            System.out.println("Frequência cardíaca inválida, tente novamente:");
            utilizador.setFrequenciacardiaca(scanner.nextInt());
        }
        System.out.println("Digite o tipo de utilizador que é (Profissional, Amador, Praticante ocasional):");
        utilizador.setTipodeutilizador(scanner.next());
        while(!tipodeutilizadorValido(utilizador.getTipodeutilizador())){
            System.out.println("Tipo de utilizador inválido, tente novamente:");
            utilizador.setTipodeutilizador(scanner.next());
        }
        System.out.println("Digite a senha que pretende:");
        utilizador.setSenha(scanner.next());
        utilizador.salvarInfoUser();
    }

    public void paginaLogin(Utilizador utilizador){
        Scanner scanner = new Scanner(System.in);

        System.out.println("Digite seu nome de usuário:");
        utilizador.setUserName(scanner.next());
        System.out.println("Digite sua senha:");
        utilizador.setSenha(scanner.next());

        while(!utilizador.obterInfoUser()){
            System.out.println("Usuário ou senha inválidos");
            System.out.println("Digite seu nome de usuário:");
            utilizador.setUserName(scanner.next());
            System.out.println("Digite sua senha:");
            utilizador.setSenha(scanner.next());

        }
        System.out.println("Usuário autenticado com sucesso");

    }
    private boolean isEmailValid(String email) {
        String regex = "^[a-zA-Z0-9_+&*-]+(?:\\.[a-zA-Z0-9_+&*-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,7}$";
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(email);
        return matcher.matches();
    }
    private boolean frequenciacardiacaValida(int frequenciacardiaca){
        return frequenciacardiaca > 0 && frequenciacardiaca < 230;
    }
    private boolean tipodeutilizadorValido(String tipodeutilizador){
        return tipodeutilizador.equals("Profissional") || tipodeutilizador.equals("Amador") || tipodeutilizador.equals("Praticante ocasional");
    }
}
