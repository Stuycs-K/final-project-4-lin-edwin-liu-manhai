class pokemonSquirtle extends Pokemon{
  boolean rain;
  
  public pokemonSquirtle(){
    super("water", 44, 50, 64, 43);
    rain = false;
  }
  
  public String move1(Pokemon opponent){
    opponent.applyDamage(4*this.getAttack()/opponent.getDefense() + 1);
    return this + " attacked "+ opponent + " and dealt "+ (4*this.getAttack()/opponent.getDefense() + 1) +
    " points of damage with Pound.";
  }

  public String move2(Pokemon opponent){
    int damage = 4;
    if (opponent.getType() == "fire") {
      damage = 8;
    } else if (opponent.getType() == "water" || opponent.getType() == "grass") {
      damage = 2;
    }
    if (rain){
      damage = damage*2;}
    opponent.applyDamage(damage*this.getAttack()/opponent.getDefense() + 1);
    return this + " attacked "+ opponent + " and dealt "+ damage +
    " points of damage with Water Gun.";
  }

  public String move3(){
    this.defense *= 2;
    return this + "used Withdraw. Squirtle's attack rose.";
  }

  public String move4(){
    rain = true;
    return this + "uses Rain Dance. It started to rain.";
  }
   public String name(){
    return "Squirtle";
  }
}
