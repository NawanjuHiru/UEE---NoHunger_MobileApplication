package IT20022006;

import java.util.ArrayList;

//creating weekday class
public class Weekday extends Student{
	private String freeDay;
	
	//constructor
	//seven parameters needs to be taken to the constructor
	//when a Weekday object is created, a Student object is also created
	
	public void addDetails(String name, String address, char sex, int bornYear, String specialization, String freeDay) {
		// TODO Auto-generated method stub
		super.addDetails(name, address, sex, bornYear, specialization);
		this.freeDay = freeDay;
	}

	public void addMark(int m1, int m2, int m3, int m4, int m5) {
		// TODO Auto-generated method stub
		ArrayList<Integer> marks = new ArrayList<Integer>();
	    marks.add(m1);
	    marks.add(m2);
	    marks.add(m3);
	    marks.add(m4);
	    marks.add(m5);
	}

	public void showDetails() {
		// TODO Auto-generated method stub
		super.showDetails();
        System.out.println("Student Freeday "+this.freeDay);
//        System.out.println("Student ID "+this.studentid);
	}
}