package org.me.webapps.bookstore;

import java.io.UnsupportedEncodingException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendMail {
	
	private final String strFromusername = "khkan";
	private final String strFrompassword = "HKuvgwm6";
	private final String strFromaddress = "khkan@cs.hku.hk";
	private final String strFromdisplayname = "Online Bookstore";
	private String strToemail;
	private String strMessage;
	private String strSubject;
	
	public SendMail() {
		strToemail = "";
		strMessage = "";
		strSubject = "";
	}
	
	public void setTo(String INemail) {
		strToemail = INemail;
	}
	
	public void setMessage(String INmessage) {
		strMessage = INmessage;
	}
	
	public void setSubject(String INsubject) {
		strSubject = INsubject;
	}

	public boolean send() {
		
		if (strToemail.equals("") || strMessage.equals("") || strSubject.equals(""))
		{
			return false;
		} else {
			Properties props = new Properties();
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.starttls.enable", "true");
			props.put("mail.smtp.host", "community.cs.hku.hk");
			props.put("mail.smtp.port", "587");

			Session session = Session.getInstance(props,
					new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(strFromusername, strFrompassword);
				}
			});

			try {

				Message message = new MimeMessage(session);
				message.setFrom(new InternetAddress(strFromaddress, strFromdisplayname));
				message.setRecipients(Message.RecipientType.TO,
						InternetAddress.parse(strToemail));
				message.setSubject(strSubject);
				message.setText(strMessage);

				Transport.send(message);

				return true;

			} catch (MessagingException e) {
				throw new RuntimeException(e);
			} catch (UnsupportedEncodingException e) {
				throw new RuntimeException(e);
			}
		}
	}
}
