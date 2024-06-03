public class Mewtwo extends Pokemon{
  public Mewtwo(){
    super("psychic", 106, 154, 90, 130);
  }
  public String move1(Pokemon opponent){
    opponent.applyDamage(4*this.getAttack()/other.getDefense() + 1);
    return this + " attacked "+ other + " and dealt "+ damage +
    " points of damage with Confusion.";
  }

  public String move2(Pokemon opponent){
    opponent.applyDamage(8*this.getAttack()/other.getDefense() + 1);
    return this + " attacked "+ other + " and dealt "+ damage +
    " points of damage with Psystrike.";
  }

  public String move3(){
    this.defense += 50;
    return this + "used Amnesia. Mewtwo's defense rose.";
  }

  public String move4(){
    this.attack += 50;
    return this + "used Nasty Plot. Mewtwo's attack rose.";
  }
}
