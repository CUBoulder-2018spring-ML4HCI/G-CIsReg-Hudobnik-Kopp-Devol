


import oscP5.*;
import netP5.*;

OscP5 oscP5;
OscP5 oscP51;
NetAddress dest;


float p1 = 0.5;
float p2 = 0.5;
float p3 = 0.5;
float p4 = 0.5;
float p5 = 0.5;
float p6 = 0.5;
float p7 = 0.5;
float p8 = 0.5;
float p9 = 0.5;
float p10 = 0.5;
float p11 = 0.5;
float p12 = 0.5;
float p13 = 0.5;
float p14 = 0.5;
float p15 = 0.5;
float p16 = 0.5;
float p17 = 0.5;
float p18 = 0.5;
float p19 = 0.5;
float p20 = 0.5;
float p21 = 0.5;
float p22 = 0.5;
float p23 = 0.5;
float p24 = 0.5;
float p25 = 0.5;
float p26 = 0.5;
float p27 = 0.5;
float p28 = 0.5;
float p29 = 0.5;

void setup() {
  /* start oscP5, listening for incoming messages at port 12000 */
  oscP5 = new OscP5(this,14000);
  dest = new NetAddress("127.0.0.1",6448);
}
 /* recieves inputs from two programs*/
void oscEvent(OscMessage theOscMessage) {
 if (theOscMessage.checkAddrPattern("/wek/outputs")==true) {
     if(theOscMessage.checkTypetag("fff")) { //Now looking for 2 parameters
        p1 = theOscMessage.get(0).floatValue(); //get this parameter
        p2 = theOscMessage.get(1).floatValue(); //get 2nd parameter
        p3 = theOscMessage.get(2).floatValue(); //get 2nd parameter
        p4 = theOscMessage.get(3).floatValue(); //get 2nd parameter
        p5 = theOscMessage.get(4).floatValue(); //get 2nd parameter
        p6 = theOscMessage.get(5).floatValue(); //get 2nd parameter
        p7 = theOscMessage.get(6).floatValue(); //get 2nd parameter
        p8 = theOscMessage.get(7).floatValue(); //get 2nd parameter
        p9 = theOscMessage.get(8).floatValue(); //get 2nd parameter
        p10 = theOscMessage.get(9).floatValue(); //get 2nd parameter
        p11 = theOscMessage.get(10).floatValue(); //get 2nd parameter
        p12 = theOscMessage.get(11).floatValue(); //get 2nd parameter
        p13 = theOscMessage.get(12).floatValue(); //get 2nd parameter
        p14 = theOscMessage.get(13).floatValue(); //get 2nd parameter
        p15 = theOscMessage.get(14).floatValue(); //get 2nd parameter
        
        p16 = theOscMessage.get(15).floatValue(); //get this parameter
        p17 = theOscMessage.get(16).floatValue(); //get 2nd parameter
        p18 = theOscMessage.get(17).floatValue(); //get 2nd parameter
        p19 = theOscMessage.get(18).floatValue(); //get 2nd parameter
        p20 = theOscMessage.get(19).floatValue(); //get 2nd parameter
        p21 = theOscMessage.get(20).floatValue(); //get 2nd parameter
        p22 = theOscMessage.get(21).floatValue(); //get 2nd parameter
        p23 = theOscMessage.get(22).floatValue(); //get 2nd parameter
        p24 = theOscMessage.get(23).floatValue(); //get 2nd parameter
        p25 = theOscMessage.get(24).floatValue(); //get 2nd parameter
        p26 = theOscMessage.get(25).floatValue(); //get 2nd parameter
        p27 = theOscMessage.get(26).floatValue(); //get 2nd parameter
        p28 = theOscMessage.get(27).floatValue(); //get 2nd parameter
        p29 = theOscMessage.get(28).floatValue(); //get 2nd parameter
        
        
        println("Received new params value from Wekinator");  
      } else {
        println("Error: unexpected params type tag received by Processing");
      }
 }
}
 
void draw() {
   sendOsc();
}
 /* sends data to wekinator*/
void sendOsc() {
  OscMessage msg = new OscMessage("/wek/inputs");
  msg.add(p1); 
  msg.add(p2);
  msg.add(p3);
  msg.add(p4);
  msg.add(p5); 
  msg.add(p6);
  msg.add(p7);
  msg.add(p8);
  msg.add(p9); 
  msg.add(p10);
  msg.add(p11);
  msg.add(p12);
  msg.add(p13); 
  msg.add(p14);
  msg.add(p15);
  msg.add(p16);
  msg.add(p17); 
  msg.add(p18);
  msg.add(p19);
  msg.add(p20);
  msg.add(p21); 
  msg.add(p22);
  msg.add(p23);
  msg.add(p24);
  msg.add(p25); 
  msg.add(p26);
  msg.add(p27);
  msg.add(p28);
  msg.add(p29);
  oscP5.send(msg, dest);

}
