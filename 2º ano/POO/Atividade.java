class Atividade {
    private String nomeAtividade;
    private int calorias;
    private int duracao;
    private String tipoAtividade;
    private boolean realizada;

    public Atividade(String nomeAtividade, int calorias, int duracao, String tipoAtividade){
        this.nomeAtividade = nomeAtividade;
        this.calorias = calorias;
        this.duracao = duracao;
        this.tipoAtividade = tipoAtividade;
        this.realizada = false;
    }

    public String getNomeAtividade() {
        return nomeAtividade;
    }

    public void setNomeAtividade(String nomeAtividade) {
        this.nomeAtividade = nomeAtividade;
    }

    public int getCalorias() {
        return calorias;
    }

    public void setCalorias(int calorias) {
        this.calorias = calorias;
    }

    public int getDuracao() {
        return duracao;
    }

    public void setDuracao(int duracao) {
        this.duracao = duracao;
    }

    public String getTipoAtividade() {
        return tipoAtividade;
    }

    public void setTipoAtividade(String tipoAtividade) {
        this.tipoAtividade = tipoAtividade;
    }

    public boolean isRealizada() {
        return realizada;
    }

    public void setRealizada(boolean realizada) {
        this.realizada = realizada;
    }
}

class Trilha extends Atividade{
    private double distancia;
    private double altura;

    public Trilha(double distancia, double altura, String nomeAtividade, int calorias, int duracao, String tipoAtividade){
        super(nomeAtividade, calorias, duracao, tipoAtividade);
        this.distancia = distancia;
        this.altura = altura;
    }

    public double getDistancia() {
        return distancia;
    }

    public void setDistancia(double distancia) {
        this.distancia = distancia;
    }

    public double getAltura() {
        return altura;
    }

    public void setAltura(double altura) {
        this.altura = altura;
    }

    public String toString(){
        return "Nome da atividade: " + getNomeAtividade()
                + "\nCalorias: " + getCalorias()
                + "\nDuracao: " + getDuracao()
                + "\nTipo de atividade: " + getTipoAtividade()
                + "\nDistancia: " + getDistancia()
                + "\nAltura: " + getAltura();
    }
}

class Resistencia extends Atividade{
    private double distancia;
    private double velocidade;

    public Resistencia(String nomeAtividade, int calorias, int duracao, String tipoAtividade){
        super(nomeAtividade, calorias, duracao, tipoAtividade);
    }

    public double getDistancia() {
        return distancia;
    }

    public void setDistancia(double distancia) {
        this.distancia = distancia;
    }

    public double getVelocidade() {
        return velocidade;
    }

    public void setVelocidade(double velocidade) {
        this.velocidade = velocidade;
    }

    public String toString(){
        return "Nome da atividade: " + getNomeAtividade()
                + "\nCalorias: " + getCalorias()
                + "\nDuracao: " + getDuracao()
                + "\nTipo de atividade: " + getTipoAtividade()
                + "\nDistancia: " + getDistancia()
                + "\nVelocidade: " + getVelocidade();
    }
}

class Series extends Atividade{
    private int repeticoes;
    private int series;
    private int tempoDescanso;
    public Series(String nomeAtividade, int calorias, int duracao, String tipoAtividade){
        super(nomeAtividade, calorias, duracao, tipoAtividade);
    }

    public int getSeries() {
        return series;
    }

    public void setSeries(int series) {
        this.series = series;
    }

    public int getRepeticoes() {
        return repeticoes;
    }

    public void setRepeticoes(int repeticoes) {
        this.repeticoes = repeticoes;
    }

    public int getTempoDescanso() {
        return tempoDescanso;
    }

    public void setTempoDescanso(int tempoDescanso) {
        this.tempoDescanso = tempoDescanso;
    }

    public String toString(){
        return "Nome da atividade: " + getNomeAtividade()
                + "\nCalorias: " + getCalorias()
                + "\nDuracao: " + getDuracao()
                + "\nTipo de atividade: " + getTipoAtividade()
                + "\nRepeticoes: " + getRepeticoes()
                + "\nSeries: " + getSeries()
                + "\nTempo de descanso: " + getTempoDescanso();
    }
}

class SeriesPesos extends Series{
    private double peso;

    public SeriesPesos(String nomeAtividade, int calorias, int duracao, String tipoAtividade){
        super(nomeAtividade, calorias, duracao, tipoAtividade);
    }

    public double getPeso() {
        return peso;
    }

    public void setPeso(double peso) {
        this.peso = peso;
    }

    public String toString(){
        return "Nome da atividade: " + getNomeAtividade()
                + "\nCalorias: " + getCalorias()
                + "\nDuracao: " + getDuracao()
                + "\nTipo de atividade: " + getTipoAtividade()
                + "\nPeso: " + getPeso()
                + "\nRepetições: " + super.getRepeticoes()
                + "\nSéries: " + super.getSeries()
                + "\nTempo de descanso: " + super.getTempoDescanso();
    }
}