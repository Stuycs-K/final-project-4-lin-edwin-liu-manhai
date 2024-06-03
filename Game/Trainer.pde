class Trainer{
  
  String name;
  ArrayList<Pokemon> team = new ArrayList<Pokemon>();
  
  public Trainer(String name, ArrayList<Pokemon> team){
    this.name = name;
    this.team = team;
  }
  
  public String getName(){
    return name;
  }
  
  
  public ArrayList getTeam(int partynumber){
    return team;
  }
  
  public Pokemon getPokemon(){
    return team.get(0);
  }
  
  
  public void addTeam(Pokemon newPokemon){
    team.add(newPokemon);
  }
  
    
}
