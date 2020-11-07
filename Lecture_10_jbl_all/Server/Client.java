import java.net.*;
import java.io.*;

public class Client {
	public static void main(String[] args) {
		try {
			Socket s = new Socket("127.0.0.1", 12345);
			PrintWriter pr = new PrintWriter(s.getOutputStream());
	
			pr.println("5");
			pr.flush();
	
			InputStreamReader in = new InputStreamReader(s.getInputStream());
			BufferedReader bf = new BufferedReader(in);
	
			String str = bf.readLine();
			System.out.println("Server : " + str);
		} catch (Exception e) {
			System.out.println(e);
		}
		

	}
}
