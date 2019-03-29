<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.util.*"%>
<%@page import="javax.mail.*"%>
<%@page import="javax.mail.internet.*"%>

<%

int id=Integer.parseInt(request.getParameter("accn"));
String name=request.getParameter("nm").toUpperCase();
String addrs=request.getParameter("adrs").toUpperCase();
String mob=request.getParameter("mob").toUpperCase();
float oblnc=Float.parseFloat(request.getParameter("bal"));
String dop1=request.getParameter("dop");
String el=request.getParameter("eml");
String nature="OPENING DEPOSIT";

/* Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","scott","tiger"); */
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prasanta_bank","root","9778754820");
 
String q="insert into bank values(?,?,?,?,?,?,?)";
PreparedStatement pst=con.prepareStatement(q);
pst.setInt(1, id);
pst.setString(2, name);
pst.setString(3, addrs);
pst.setString(4, mob);
pst.setFloat(5, oblnc);
pst.setString(6, dop1);
pst.setString(7, el);


int i=pst.executeUpdate();

String q1="insert into bank_trans values(?,?,?,?)";
PreparedStatement pst1=con.prepareStatement(q1);
pst1.setInt(1, id);
pst1.setString(2, dop1);
pst1.setFloat(3, oblnc);
pst1.setString(4, nature);

int j=pst1.executeUpdate();


if(i!=0 && j!=0)
{
  
	out.println("<script type='text/javascript'>");
    out.println("alert('Account Created Successfully')");
    out.println("</script>");
   
    //response.sendRedirect("account.jsp");
    
	//out.println("<h1>Account Created  Successfully </h1>");
}
	
else
{
	out.println("<script type='text/javascript'>");
    out.println("alert('Account Not Created Due To Some Problem')");
    out.println("</script>");
	//out.println(" <h1> Account not Created due to Some Problem </h1> ");
}






String result;



final String to = el;

final String subject = "Welcome !!! Your New Account Created Successfully ";

final String messg = "Hi  "+name+" Your Account has been  Created . Your Account Number is "+id;






final String from = "pk9778754@gmail.com";

final String pass = "9778754820";



// Defining the gmail host

String host = "smtp.gmail.com";



// Creating Properties object

Properties props = new Properties();




// Defining properties

props.put("mail.smtp.host", host);

props.put("mail.transport.protocol", "smtp");

props.put("mail.smtp.auth", "true");

props.put("mail.smtp.starttls.enable", "true");

props.put("mail.user", from);

props.put("mail.password", pass);

props.put("mail.port", "587");



// Authorized the Session object.

Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {

    @Override

    protected PasswordAuthentication getPasswordAuthentication() {

        return new PasswordAuthentication(from, pass);

    }

});



try {

    // Create a default MimeMessage object.

    MimeMessage message = new MimeMessage(mailSession);

    // Set From: header field of the header.

    message.setFrom(new InternetAddress(from));

    // Set To: header field of the header.

    message.addRecipient(Message.RecipientType.TO,

            new InternetAddress(to));

    // Set Subject: header field

    message.setSubject(subject);

    // Now set the actual message

    message.setText(messg);

    // Send message

    Transport.send(message);

    result = "Your mail sent successfully....";
    out.println(result);

} catch (MessagingException mex) {

    mex.printStackTrace();

    result = "Error: unable to send mail....";
    out.println(result);

}

	
%>
