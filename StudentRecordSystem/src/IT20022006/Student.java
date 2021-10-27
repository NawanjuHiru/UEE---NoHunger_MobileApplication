//java program to demonstrate the student record system
package IT20022006;

import java.util.Random;

//creating student class
public class Student {
	private String name;
	private String address;
	private char sex;
	private int bornYear;
	private String specialization;
	@SuppressWarnings("unused")
	private String studentid;

	public void addDetails(String name, String address, char sex, int bornYear, String specialization) {
		// TODO Auto-generated method stub
		this.name = name;
		this.address = address;
		this.sex = sex;
		this.bornYear = bornYear;
		this.specialization = specialization;
	}
	
	public String generateID() throws Exception{
		// TODO Auto-generated method stub
		Random random = new Random();
					
		String noAfterIT = String.valueOf(random.nextInt(10000));
		int x = noAfterIT.length();
		while (x < 5) {
			x += 1;
			noAfterIT = noAfterIT.concat("0");
		}
		if (noAfterIT.length() <= 4) {
			throw new Exception("Invalid ID");
		}
		String studentid = "IT" + noAfterIT;
		this.studentid = studentid;
		return studentid;
	}
	
	public void showDetails() {
		// TODO Auto-generated method stub
		System.out.println("Student name "+this.name);
        System.out.println("Student Address "+this.address);
        System.out.println("Gender "+this.sex);
        System.out.println("Student year "+this.bornYear);
        System.out.println("Student Specialization " +this.specialization);
	}
}
