public class Trainer{
  String name;
  PVector position;
  color Color;
  ArrayList<Pokemon> team = new ArrayList<Pokemon>();
  
  public Trainer(String name, PVector position, color colour, ArrayList<Pokemon> team){
    this.name = name;
    this. position = position;
    this.Color = colour;
    this.team = team;
  }
  
  public void move(PVector position2){
    position = position2;
  }
  
  public ArrayList getTeam(int partynumber){
    return team;
  }
  
  public void addTeam(Pokemon newPokemon){
    team.add(newPokemon);
  }
  
    
}
