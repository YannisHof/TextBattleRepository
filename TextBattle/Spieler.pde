
class Spieler{
 private int pos_x;
 private int pos_y;
 private int leben;
 
public Spieler (int pos_x, int pos_y){
  set_pos_x(pos_x1);
  set_pos_y(pos_y1);
  set_leben(leben1);
}
 
public int get_pos_x(){
  return pos_x;
}

public void set_pos_x(int pos_x1){
  this.pos_x = pos_x1;
}

public int get_pos_y(){
  return pos_y;
}

public void set_pos_y(int pos_y1){
  this.pos_y = pos_y1;
}

public int set_leben(){
  return leben;
}

public void get_leben(int leben1){
  this.leben = leben1;
}
 
public void bewege(Richtung richtung){
   Kampfsystem.bewege(Richtung richtung)
}
 
public void angriff(Richtung richtung){
   Kampfsystem.angriff(Richtung richtung)
}
  
}
