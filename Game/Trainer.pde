public class Trainer{
  
  String name;
  PVector position;
  ArrayList<Pokemon> team = new ArrayList<Pokemon>();
  
  public Trainer(String name, PVector position, ArrayList<Pokemon> team){
    this.name = name;
    this. position = position;
    this.team = team;
  }
  
  public String getName(){
    return name;
  }
  
  public PVector getPosition(){
    return position;
  }
  
  public void move(PVector position2){
    position = position2;
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
