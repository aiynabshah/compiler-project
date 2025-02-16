import java.io.*;
public class Main {
 public static void main(String args[]) {    
    try {
      Examplee ex = new Examplee(new FileReader(args[0]));
      /* Parser instantiation */
      parser p = new parser(ex);
      Object result = p.parse();      
    } catch (Exception e) {
      e.printStackTrace();
    }
  }
}