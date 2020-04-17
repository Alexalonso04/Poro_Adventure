
Poro poro;
PImage img;

void setup(){
    size(800,800);
    img = loadImage("../Assets/Images/Poros/poro_fly.png");
    poro = new Poro (new PVector(0,0), new PVector(0,0), img);
}

void draw(){
    background(255);
    poro.Move();
    poro.Draw();
}