abstract class GameObject{
    PVector pos;
    PVector vel; 
    PImage img;
    PVector size;
  
    void Move(){
      pos.set(0,0);
      pos.set(pos.x + vel.x, pos.y+vel.y);
    };

    void Draw(){
      imageMode(CENTER);
      image(img, pos.x, pos.y, size.x, size.y);
    };

    void setSize(float x, float y){
        size.set(0,0);
        size.set(x, y);
    }
  
    GameObject(PVector position, PVector velocity, PImage image){
      pos = position;
      vel = velocity;
      img = image;
      size = new PVector(0,0);
    }

    GameObject(PVector position, PVector velocity, PImage image, PVector s){
    pos = position;
    vel = velocity;
    img = image;
    size = s;
  }
  
}


//Poro, player-controlled object based on mouse location
class Poro extends GameObject {
  
  Poro (PVector position, PVector velocity, PImage image){
    super(position, velocity, image);
  }

    Poro (PVector position, PVector velocity,PImage image, PVector size){
    super(position, velocity, image, size);
  }
  
  @Override
  void Move(){
    if (mouseX >= 0 && mouseY > 0){
     pos.lerp(mouseX, mouseY, 0.0, 0.1);
    }
  }
  
  void Draw() {
    imageMode(CENTER);
    image(img, pos.x, pos.y, 200, 200);
  }
}

// //Snack is a collectible. It has the same properties as the poro, only the movement differs
// public class Snack extends GameObject {
//   PVector pos;
//   PVector vel; 
//   PImage img;
  
//   Snack (PVector position, PVector velocity, PImage image){
//     pos = position;
//     vel = velocity;
//     img = image;
//   }
  
//   void Move(){
//     pos.set(pos.x + vel.x, pos.y + vel.y);
//   }
  
//   void Draw() {
//     //fill(#4efd35);
//     //ellipse(pos.x, pos.y, 50,50);
//     imageMode(CENTER);
//     image(img, pos.x, pos.y, 50, 50);
//   }

// }
