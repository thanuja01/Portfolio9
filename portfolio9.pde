import java.util.Scanner;
Scanner in;
String header;
PhoneList phonelist = new PhoneList();

void setup(){
in = InputReader.getScanner("h:\\phone_dataset2.csv");
header =in.nextLine();

while(in.hasNext() == true){
  String nextline = in.nextLine();
  String[] lines = nextline.split(",");
  Phone phone =new Phone(lines[0]);
  phone.setModel(lines[1]);
  phone.setAnnounced(lines[8]);
  phone.setWeight_g(float(lines[11]));
 phone.setInternal_memory(lines[21]);
  phone.setApprox_price_EUR(Integer.parseInt(lines[36]));
 phonelist.addPhone(phone);
}
PhoneList cost = new PhoneList();
cost =phonelist.getCostOver(600);
cost.codesort();
cost.printPhoneList();
//println(phonelist.getSize());
//phonelist.codesort();
//phonelist.printPhoneList();
}
