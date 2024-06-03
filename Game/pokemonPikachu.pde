class pokemonPikachu extends Pokemon{
  public pokemonPikachu(){
    super("electric", 45, 75, 60, 120);
  }
  public String move1(Pokemon opponent){
    opponent.applyDamage(4*this.getAttack()/opponent.getDefense() + 1);
    return this + " attacked "+ opponent + " and dealt "+ (4*this.getAttack()/opponent.getDefense() + 1) +
    " points of damage with Quick Attack.";
  }

  public String move2(Pokemon opponent){
    int damage = 4;
    if (opponent.getType() == "water") {
      damage = 8;
    } else 
    if (opponent.getType() == "grass" || opponent.getType() == "electric") {
      damage = 2;
    }
    opponent.applyDamage(damage*this.getAttack()/opponent.getDefense() + 1);
    return this + " attacked "+ opponent + " and dealt "+ damage +
    " points of damage with Thunderbolt.";
  }

  public String move3(Pokemon opponent){
    this.speed *= 2;
    return this + "used Agility. Pikachu's speed rose.";
  }

  public String move4(){
    this.attack *= 2;
    return this + "used Nasty Plot. Pikachu's attack rose.";
  }
  
   public String name(){
    return "Pikachu";
  }
}
