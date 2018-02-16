


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
float p30 = 0.5;
float p31 = 0.5;
float p32 = 0.5;
float p33 = 0.5;
float p34 = 0.5;
float p35 = 0.5;
float p36 = 0.5;
float p37 = 0.5;
float p38 = 0.5;
float p39 = 0.5;
float p40 = 0.5;
float p41 = 0.5;
float p42 = 0.5;
float p43 = 0.5;
float p44 = 0.5;
float p45 = 0.5;
float p46 = 0.5;
float p47 = 0.5;
float p48 = 0.5;
float p49 = 0.5;
float p50 = 0.5;
float p51 = 0.5;
float p52 = 0.5;
float p53 = 0.5;
float p54 = 0.5;
float p55 = 0.5;
float p56 = 0.5;
float p57 = 0.5;
float p58 = 0.5;
float p59 = 0.5;
float p60 = 0.5;
float p61 = 0.5;
float p62 = 0.5;
float p63 = 0.5;
float p64 = 0.5;
void setup() {
  /* start oscP5, listening for incoming messages at port 12000 */
  oscP5 = new OscP5(this,14000);
  dest = new NetAddress("10.202.64.125",6448);
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
        p30 = theOscMessage.get(29).floatValue(); //get this parameter
        p31 = theOscMessage.get(30).floatValue(); //get 2nd parameter
        p32 = theOscMessage.get(31).floatValue(); //get 2nd parameter
        p33 = theOscMessage.get(32).floatValue(); //get 2nd parameter
        p34 = theOscMessage.get(33).floatValue(); //get 2nd parameter
        p35 = theOscMessage.get(34).floatValue(); //get 2nd parameter
        p36 = theOscMessage.get(35).floatValue(); //get 2nd parameter
        p37 = theOscMessage.get(36).floatValue(); //get 2nd parameter
        p38 = theOscMessage.get(37).floatValue(); //get 2nd parameter
        p39 = theOscMessage.get(38).floatValue(); //get 2nd parameter
        p40 = theOscMessage.get(39).floatValue(); //get 2nd parameter
        p41 = theOscMessage.get(40).floatValue(); //get 2nd parameter
        p42 = theOscMessage.get(41).floatValue(); //get 2nd parameter
        p43 = theOscMessage.get(42).floatValue(); //get 2nd parameter
        p44 = theOscMessage.get(43).floatValue(); //get 2nd parameter
        p45 = theOscMessage.get(44).floatValue(); //get this parameter
        p46 = theOscMessage.get(45).floatValue(); //get 2nd parameter
        p47 = theOscMessage.get(46).floatValue(); //get 2nd parameter
        p48 = theOscMessage.get(47).floatValue(); //get 2nd parameter
        p49 = theOscMessage.get(48).floatValue(); //get 2nd parameter
        p50 = theOscMessage.get(49).floatValue(); //get 2nd parameter
        p51 = theOscMessage.get(50).floatValue(); //get 2nd parameter
        p52 = theOscMessage.get(51).floatValue(); //get 2nd parameter
        p53 = theOscMessage.get(52).floatValue(); //get 2nd parameter
        p54 = theOscMessage.get(53).floatValue(); //get 2nd parameter
        p55 = theOscMessage.get(54).floatValue(); //get 2nd parameter
        p56 = theOscMessage.get(55).floatValue(); //get 2nd parameter
        p57 = theOscMessage.get(56).floatValue(); //get 2nd parameter
        p58 = theOscMessage.get(57).floatValue(); //get 2nd parameter
        p59 = theOscMessage.get(58).floatValue(); //get this parameter
        p60 = theOscMessage.get(59).floatValue(); //get 2nd parameter
        p61 = theOscMessage.get(60).floatValue(); //get 2nd parameter
        p62 = theOscMessage.get(61).floatValue(); //get 2nd parameter
        p63 = theOscMessage.get(62).floatValue(); //get 2nd parameter
        p64 = theOscMessage.get(63).floatValue(); //get 2nd parameter

        
        
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
  msg.add(p30); 
  msg.add(p31);
  msg.add(p32);
  msg.add(p33);
  msg.add(p34); 
  msg.add(p35);
  msg.add(p36);
  msg.add(p37);
  msg.add(p38); 
  msg.add(p39);
  msg.add(p40);
  msg.add(p41);
  msg.add(p42); 
  msg.add(p43);
  msg.add(p44);
  msg.add(p45);
  msg.add(p46); 
  msg.add(p47);
  msg.add(p48);
  msg.add(p49);
  msg.add(p50); 
  msg.add(p51);
  msg.add(p52);
  msg.add(p53);
  msg.add(p54); 
  msg.add(p55);
  msg.add(p56);
  msg.add(p57);
  msg.add(p58);
  msg.add(p59);
  msg.add(p60);
  msg.add(p61);
  msg.add(p62);
  msg.add(p63);
  msg.add(p64);
  oscP5.send(msg, dest);

}
