import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

public class Utilizador {
    private String senha;
    private String UserName;
    private String Nome;
    private String Morada;
    private String Mail;
    private int frequenciacardiaca;
    private String tipodeutilizador;

    public Utilizador(){
        this.senha = "";
        this.UserName = "";
        this.Nome = "";
        this.Morada = "";
        this.Mail = "";
        this.frequenciacardiaca = 0;
        this.tipodeutilizador = "";
    }

    public Utilizador(String senha,String UserName, String Nome, String Morada, String Mail, int frequenciacardiaca, String tipodeutilizador) {
        this.senha = senha;
        this.UserName = UserName;
        this.Nome = Nome;
        this.Morada = Morada;
        this.Mail = Mail;
        this.frequenciacardiaca = frequenciacardiaca;
        this.tipodeutilizador = tipodeutilizador;

    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getUserName() {
        return UserName;
    }

    public void setUserName(String UserName) {
        this.UserName = UserName;
    }

    public String getNome() {
        return Nome;
    }

    public void setNome(String nome) {
        Nome = nome;
    }

    public String getMorada() {
        return Morada;
    }

    public void setMorada(String morada) {
        Morada = morada;
    }

    public String getMail() {
        return Mail;
    }

    public void setMail(String mail) {
        Mail = mail;
    }

    public int getFrequenciacardiaca() {
        return frequenciacardiaca;
    }

    public void setFrequenciacardiaca(int frequenciacardiaca) {
        this.frequenciacardiaca = frequenciacardiaca;
    }

    public String getTipodeutilizador() {
        return tipodeutilizador;
    }

    public void setTipodeutilizador(String tipodeutilizador) {
        this.tipodeutilizador = tipodeutilizador;
    }

    public Utilizador clone(){
        return new Utilizador(this.senha, this.UserName, this.Nome, this.Morada, this.Mail, this.frequenciacardiaca, this.tipodeutilizador);
    }

    private List<Utilizador> lerFicheiroJson(){
        try{
            Gson obj = new GsonBuilder().setPrettyPrinting().create();
            FileInputStream file = new FileInputStream("UserInfo.json");
            byte[] data = new byte[file.available()];
            file.read(data);
            List<Utilizador> lista = obj.fromJson(new String(data), new TypeToken<ArrayList<Utilizador>>(){}.getType());
            file.close();
            return lista;
        }catch (Exception e){
            e.printStackTrace();
        }

        return new ArrayList<>();
    }

    public boolean obterInfoUser(){
        try{
            List<Utilizador> lista = lerFicheiroJson();

            for(Utilizador a : lista){
                if(a.getUserName().equals(this.UserName) && a.getSenha().equals(this.senha)){
                    this.Nome = a.getNome();
                    this.Morada = a.getMorada();
                    this.Mail = a.getMail();
                    this.frequenciacardiaca = a.getFrequenciacardiaca();
                    this.tipodeutilizador = a.getTipodeutilizador();
                    return true;
                }
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return false;
    }

    public boolean salvarInfoUser(){
        try{
            Gson obj = new GsonBuilder().setPrettyPrinting().create();
            List<Utilizador> lista = lerFicheiroJson();
            lista.add(this);
            String json = obj.toJson(lista);
            FileOutputStream file = new FileOutputStream("UserInfo.json");
            file.write(json.getBytes());
            file.close();
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
        return true;
    }

}
