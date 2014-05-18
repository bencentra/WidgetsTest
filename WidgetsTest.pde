/*

Drawing widgets! (Ben Centra and Brennan Kirsche)

For SVG files, use the SVGWidget class. 

For PNGs or other image files, use the ImageWidget class.

Widgets x and y position are measured from the top left corner.

Rotation will automatically occur around the widget's center

*/

//PShapes
PShape brain;
PShape knob_blue;
PShape knob_green;
PShape knob_orange;
PShape knob_pink;
PShape knobtrack_white;
PShape dot_green;
PShape dot_dark;
PShape jellybean_dark;
PShape jellybean_pink;
PImage knob_yellow_image;

//Draws
Widget draw_brain, 
draw_knob_blue_right,
draw_knob_green_right,
draw_knob_pink_right,
draw_knob_orange_right,
draw_knob_blue_left,
draw_knob_green_left,
draw_knob_pink_left,
draw_knob_orange_left,
draw_jellybean_dark,
draw_jellybean_pink,
draw_dot_green,
draw_dot_dark,
draw_knobtrack_white_1,
draw_knobtrack_white_2,
draw_knobtrack_white_3,
draw_knobtrack_white_4,
draw_knobtrack_white_5,
draw_knobtrack_white_6,
draw_knobtrack_white_7,
draw_knobtrack_white_8,
draw_knobtrack_white_9,
draw_knobyellow_image;

//Variables
int rotation = 0;
boolean brain_on;

void setup() {
  
 brain_on = false;
	// Sketch setup
 size(1024,768);
 frameRate(60);
 background(0);


 // SVGWidget
 brain = loadShape("brain.svg"); 
 draw_brain= new SVGWidget(515,375,100, 100, brain);


 knob_yellow_image = loadImage("knob_yellow.png");
 draw_knobyellow_image = new ImageWidget(410,400,60,60,knob_yellow_image);





 //brain on and off
 //dots
 dot_green = loadShape("dot_green.svg");
 dot_dark = loadShape("dot_dark.svg");
 //jellybeans
 jellybean_pink = loadShape("jellybean_pink.svg");
 jellybean_dark = loadShape("jellybean_dark.svg");
 //draw jellybeans
 draw_jellybean_dark = new SVGWidget(425,325,150,150, jellybean_dark);
 draw_jellybean_pink = new SVGWidget(425,325,150,150, jellybean_pink);
 //draw dots
 draw_dot_dark = new SVGWidget(425,375,150,150, dot_dark);
 draw_dot_green = new SVGWidget(425,375,150,150, dot_green);
        
        
        

 //knobtrack
 knobtrack_white = loadShape("knobtrack_white.svg");
 //draw knobtracks 
 draw_knobtrack_white_1 = new SVGWidget(900,385,100,100,knobtrack_white);

 draw_knobtrack_white_2 = new SVGWidget(800,385,100,100, knobtrack_white);

 draw_knobtrack_white_3 = new SVGWidget(700,385,100,100, knobtrack_white);

 draw_knobtrack_white_4 = new SVGWidget(600,385,100,100, knobtrack_white);

 draw_knobtrack_white_5 = new SVGWidget(0,385,100,100, knobtrack_white);

 draw_knobtrack_white_6 = new SVGWidget(100,385,100,100, knobtrack_white);

 draw_knobtrack_white_7 = new SVGWidget(200,385,100,100, knobtrack_white);

 draw_knobtrack_white_8 = new SVGWidget(300,385,100,100, knobtrack_white);
 
 draw_knobtrack_white_9 = new SVGWidget(385,380,110,110, knobtrack_white);



 //knob blue right
 knob_blue = loadShape("knob_blue.svg");
 draw_knob_blue_right = new SVGWidgetRotate(900,385,100,100,knob_blue);
  
 //knob blue left
 draw_knob_blue_left = new SVGWidgetRotate(0,385,100,100,knob_blue);
  
 //knob green right
 knob_green = loadShape("knob_green.svg");
 draw_knob_green_right = new SVGWidgetRotate(800,385,100,100,knob_green);
  
 //knob blue left
 draw_knob_green_left = new SVGWidgetRotate(100,385,100,100, knob_green);
   
 //knob pink right
 knob_pink = loadShape("knob_pink.svg");
 draw_knob_pink_right = new SVGWidgetRotate(700,385,100,100,knob_pink);
 //knob pink left
 draw_knob_pink_left = new SVGWidgetRotate(200,385,100,100,knob_pink);
  
 //knob orange right
 knob_orange = loadShape("knob_orange.svg");
 draw_knob_orange_right = new SVGWidgetRotate(600,385,100,100,knob_orange);
  
 //knob orange left
 draw_knob_orange_left = new SVGWidgetRotate(300,385,100,100,knob_orange);
        
        
	// ImageWidget
	//testImage = loadImage("brain.png");       
	//imageTest = new ImageWidget(500, 100, 200, 200, testImage);
        
       
}

void draw() {
 smooth();
 background(0);
 draw_brain.draw();
 //graintrack
 draw_knobyellow_image.draw();

 //Brain on/off
 if(brain_on == true)
 {
 draw_jellybean_dark.draw();
 draw_dot_green.draw();
 }
 else if(brain_on == false)
 {
 draw_jellybean_pink.draw();
 draw_dot_dark.draw();
 }


 //knobtrack
 draw_knobtrack_white_1.draw();
 draw_knobtrack_white_2.draw();
 draw_knobtrack_white_3.draw();
 draw_knobtrack_white_4.draw();
 draw_knobtrack_white_5.draw();
 draw_knobtrack_white_6.draw();
 draw_knobtrack_white_7.draw();
 draw_knobtrack_white_8.draw();
 draw_knobtrack_white_9.draw();

 //knobs right
 draw_knob_blue_right.draw();
 draw_knob_green_right.draw();
 draw_knob_pink_right.draw();
 draw_knob_orange_right.draw();

 //knobs left
 draw_knob_blue_left.draw();
 draw_knob_green_left.draw();
 draw_knob_pink_left.draw();
 draw_knob_orange_left.draw();


}

  
void keyPressed() {

 if (key == '1') {
 rotation =-45;
 }
 else if (key == '2') {
 rotation = 0;
 }
 else if (key == '3') {
 rotation = 45;
 }
 else if (key =='i' || key == 'I')
 {
 brain_on = true;
 }
 else if (key =='o' || key =='O')
 {
  brain_on = false;
 }
	// Set the rotation for the widgets
	//draw_brain.rotation(rotation);
       
}
