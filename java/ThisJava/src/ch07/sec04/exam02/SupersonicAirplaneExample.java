package ch07.sec04.exam02;
//p.298
public class SupersonicAirplaneExample {
public static void main(String[] args) {
	
	SupersonicAirplane sa = new SupersonicAirplane();
	
	sa.takeOff();
	sa.fly();
	sa.flyMode = SupersonicAirplane.SUPERSONIC;
	sa.fly();
	sa.flyMode = SupersonicAirplane.NOMAL;
	sa.fly();
	sa.land();
 }
}
