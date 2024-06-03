class pokemonBulbasaur extends Pokemon{
  
  public pokemonBulbasaur(){
    super("grass", 45, 65, 65, 45,"Bulbasaur");
  }
  
  public String move1(Pokemon opponent){
    opponent.applyDamage(4*this.getAttack()/opponent.getDefense() + 1);
    return this + " attacked "+ opponent + " and dealt "+ (4*this.getAttack()/opponent.getDefense() + 1) +
    " points of damage with Tackle.";
  }

  public String move2(Pokemon opponent){
    int damage = 4;
    if (opponent.getType() == "water") {
      damage = 8;
    } else 
    if (opponent.getType() == "fire" || opponent.getType() == "grass") {
      damage = 2;
    }
    opponent.applyDamage(damage*this.getAttack()/opponent.getDefense() + 1);
    return this + " attacked "+ opponent + " and dealt "+ damage +
    " points of damage with Vine Whip.";
  }

  public String move3(){
    this.attack *= 2;
    return this + "used Growth. Bulbasaur's attack rose.";
  }

  public String move4(){
    HP += (maxHP/2);
    return this + "used Synthesis. Bulbasaur's was healed.";
  }
  
  public String name(){
    return "Bulbasaur";
  }
  
}