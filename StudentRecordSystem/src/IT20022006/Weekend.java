package IT20022006;

import java.util.ArrayList;

//creating weekend class
public class Weekend extends Student{
	private String jobTitle;
	
	//constructor
	//seven parameters need to be taken to the constructor
	//when a Weekend object is created, a Student object is also created
	public void addDetails(String name, String address, char sex, int bornYear, String specialization, String jobTitle) {
		// TODO Auto-generated method stub
		super.addDetails(name, address, sex, bornYear, specialization);
		this.jobTitle = jobTitle;
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
	    System.out.println("Student Job Title " + this.jobTitle);
//	    System.out.println("Student ID "+this.studentid);
		}
}