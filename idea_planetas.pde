/*

 hacer un centro poner algo (sol / tierra)
 crear desde ahí otro que gire
 generar vaios en mismo escalon
 dependiendo de quien heradan propiedades
 asi se puede hacer la luna también
 
 agregar un texto que explique, o poner títulos
 posibilidad de poner imagen
 
 */

int posX, posY;
int diamt = 10;
int vel = 0;

void setup() {
  size(800, 600);

  posX = width/2;
  posY = height/2;
  background(0);
}

void draw() {
  
  background(0);
  frameRate(40);
  vel++;

  pushMatrix(); //SOL
  translate( posX, posY);
  fill( 255, 255, 0);
  noStroke();
  ellipse( 0, 0, diamt * 6, diamt * 6);
  
  
  pushMatrix(); //mercurio
  rotate(radians(vel * 3));
  translate( 80, 0);
  fill( 0, 0, 255);
  noStroke();
  ellipse( 0, 0, diamt * 2, diamt *2);
  popMatrix();
  
  pushMatrix(); //marte
  rotate(radians(vel * 3));
  translate( 130, 0);
  fill( 255, 0, 0);
  noStroke();
  ellipse( 0, 0, diamt * 3, diamt *3);
  popMatrix();
  
  pushMatrix();
  rotate(radians(vel * 2));
  translate( 180, 0);
  fill( 255, 0, 255);
  noStroke();
  ellipse( 0, 0, diamt * 4, diamt *4);
  
  rotate(radians(vel * 4));
  translate( 40, 0);
  fill( 255);
  noStroke();
  ellipse( 0, 0, diamt, diamt);
  
  
  popMatrix();
  
  
  popMatrix();
}
