


import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress dest;
PFont f;

float bx;
float by;
float p1 = 0.5;
float p2 = 0.5;
float p3 = 0.5;
float p4 = 0.5;

void setup() {
  size(640, 480, P2D);
  /* start oscP5, listening for incoming messages at port 12000 */
  oscP5 = new OscP5(this,8000);
  dest = new NetAddress("127.0.0.1",6448);
  
  oscP51 = new OscP5(this,8000);
  dest1 = new NetAddress("127.0.0.1",6448);
}

void oscEvent(OscMessage theOscMessage) {
 if (theOscMessage.checkAddrPattern("/wek/outputs")==true) {
     if(theOscMessage.checkTypetag("fff")) { //Now looking for 2 parameters
        p1 = theOscMessage.get(0).floatValue(); //get this parameter
        p2 = theOscMessage.get(1).floatValue(); //get 2nd parameter
        p3 = theOscMessage.get(2).floatValue(); //get 2nd parameter
        p4 = theOscMessage.get(3).floatValue(); //get 2nd parameter
        
        println("Received new params value from Wekinator");  
      } else {
        println("Error: unexpected params type tag received by Processing");
      }
 }
}

void sendOsc() {
  OscMessage msg = new OscMessage("/wek/inputs");
  OscMessage msg1 = new OscMessage("/wek/inputs");
  msg.add((float)bx); 
  msg.add((float)by);
  msg1.add(p1);
  msg1.add(p2);
  oscP5.send(msg, dest);
  oscP51.send(msg1, dest);
}
