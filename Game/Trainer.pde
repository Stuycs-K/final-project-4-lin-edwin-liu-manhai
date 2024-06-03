class Trainer{
  
  String name;
  ArrayList<Pokemon> team = new ArrayList<Pokemon>();
  
  public Trainer(String name, ArrayList<Pokemon> team){
    this.name = name;
    this.team = team;
  }
  
  String getName(){
    return name;
  }
  
  
  ArrayList getTeam(int partynumber){
    return team;
  }
  
  Pokemon getPokemon(){
    return team.get(0);
  }
  
  
  void addTeam(Pokemon newPokemon){
    team.add(newPokemon);
  }
  
    
}
