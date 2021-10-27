package IT20022006;

import java.util.HashMap;
import java.util.Map;

//creating student enroll
public class Enroll {
	@SuppressWarnings("unused")
	private String studentid;
    @SuppressWarnings("unused")
	private String specialize;
    
    HashMap <String, String> enroll = new HashMap <String, String>();

	public void enrollStudent(String studentid, String specialize) {
		// TODO Auto-generated method stub
		enroll.put(studentid, specialize);
		enroll.put(studentid,specialize);
	}
	
	public void displayEnrolledStudents() {
		// TODO Auto-generated method stub
		for (Map.Entry<String, String> entry:enroll.entrySet()) {
			System.out.println(entry.getKey()+" : "+entry.getValue());
		}
	}
}
