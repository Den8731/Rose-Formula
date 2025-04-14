//Rose formula: r = a cos(nθ) and r = a sin(nθ)


float k = 2.6;    // Number of petals: if odd, k petals; if even, 2k petals.
float a = 190;  // a scales the size of the overall and outermost portion of the rose
float theta = 1.5; //an angle in radians. As θ increases, the curve is traced out.
//float numOfPoints = 700; //Number of points to draw the curve
float r= 80; //This is the angle in radians. As θ increases, the curve is traced out.
//float z; //adds a 3rd dimension 

//Note: One full circle is 2π radians = 3.14 x 2 = 6.28

float rosePetal;
  void setup() {
  translate(width / 2, height / 2); //Moves the origin (0,0) to the center of the canvas. This is important because the rose is drawn using polar coordinates, which are centered around the origin.
  size(500, 500); //Window size
  background(255);
  noFill();
  stroke(2);

  beginShape();
  for(theta =0; theta < TWO_PI*15; theta+=0.01){ //When theta is set to 0.2, the lines or stroke paths appear much thicker and start forming a fractal-like pattern.
  r = a * cos(theta); //r = a × cos(kθ).. tells you how far to reach out at each point.
  float x = r *cos(k*theta);
  float y = r*sin(theta * k);
vertex(x,y);
//print(r);
    
}
 endShape();

}
