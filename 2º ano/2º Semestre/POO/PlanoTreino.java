import java.util.ArrayList;
import java.util.List;

public class PlanoTreino {
    private String nomePlano;
    private String diaDaSemana;
    private List<Atividade> plano;

    public PlanoTreino(){
        this.nomePlano = "";
        this.diaDaSemana = "";
        this.plano = new ArrayList<>();
    }

    public PlanoTreino(String nomePlano, String diaDaSemana, List<Atividade> plano){
        this.nomePlano = nomePlano;
        this.diaDaSemana = diaDaSemana;
        this.plano = plano;
    }

    public String getNomePlano() {
        return nomePlano;
    }

    public void setNomePlano(String nomePlano) {
        this.nomePlano = nomePlano;
    }

    public void setDiaDaSemana(String diaDaSemana){
        this.diaDaSemana = diaDaSemana;
    }

    public String getDiaDaSemana(){
        return this.diaDaSemana;
    }

    public List<Atividade> getPlano() {
        return plano;
    }

    public void setPlano(List<Atividade> plano) {
        this.plano = plano;
    }

    public PlanoTreino clone(){
        return new PlanoTreino(this.nomePlano, this.diaDaSemana, this.plano);
    }

    public void adicionaAtividade(Atividade atividade){
        this.plano.add(atividade);
    }

    public void removeAtividade(Atividade atividade){
        this.plano.remove(atividade);
    }
}
