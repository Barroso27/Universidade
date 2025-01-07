import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

public class Planosdetreino {
    private String utilizador;
    private List<PlanoTreino> planos;

    public Planosdetreino(){
        this.utilizador = "";
        this.planos = new ArrayList<>();
    }

    public Planosdetreino(String utilizador, List<PlanoTreino> planos){
        this.utilizador = utilizador;
        this.planos = planos;
    }

    public void setUtilizador(String utilizador){
        this.utilizador = utilizador;
        obterPlanosTreinos();
    }

    public String getUtilizador(){
        return this.utilizador;
    }

    public void setPlano(List<PlanoTreino> planos){
        this.planos = planos;
    }

    public List<PlanoTreino> getPlano() {
        return this.planos;
    }

    public Planosdetreino clone(){
        return new Planosdetreino(this.utilizador, this.planos);
    }

    public void adicionaPlanoTreino(PlanoTreino plano){
        this.planos.add(plano);
    }

    private List<Planosdetreino> lerPlanosTreinos(){
        try{
            Gson obj = new GsonBuilder().setPrettyPrinting().create();
            FileInputStream file = new FileInputStream("PlanosDeTreino.json");
            byte[] data = new byte[file.available()];
            file.read(data);
            List<Planosdetreino> lista = obj.fromJson(new String(data), new TypeToken<ArrayList<Planosdetreino>>(){}.getType());
            file.close();
            return lista;
        }catch (Exception e){
            e.printStackTrace();
        }

        return new ArrayList<>();
    }

    private void obterPlanosTreinos(){
        List<Planosdetreino> planos = lerPlanosTreinos();
        for(Planosdetreino plano : planos){
            if(plano.getUtilizador().equals(this.utilizador)){
                this.planos = plano.getPlano();
            }
        }
    }

    public void guardarPlanosTreino(){
        try{
            Gson obj = new GsonBuilder().setPrettyPrinting().create();
            List<Planosdetreino> planosTreino = lerPlanosTreinos();
            if(planosTreino == null){
                planosTreino = new ArrayList<>();
            }
            planosTreino.removeIf(p -> p.getUtilizador().equals(this.utilizador));
            planosTreino.add(this);
            String json = obj.toJson(planosTreino);
            FileOutputStream file = new FileOutputStream("PlanosDeTreino.json");
            file.write(json.getBytes());
            file.close();
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
