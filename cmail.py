import smtplib,ssl
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from email.message import EmailMessage
def sendmail(to,subject,body):
    server=smtplib.SMTP_SSL('smtp.gmail.com',465)
    server.login('doctorsolympiad2023@gmail.com','kztkrebiegwbwtts')
    msg=EmailMessage()
    msg['From']='doctorsolympiad2023@gmail.com'
    msg['Subject']=subject
    msg['To']=to
    msg.set_content(body)
    server.send_message(msg)
    server.quit()
def mail_with_atc(to,subject,html):
    email_message = MIMEMultipart()
    email_message['From'] = 'doctorsolympiad2023@gmail.com'
    email_message['To'] = to
    email_message['Subject'] = subject

    # Attach the html doc defined earlier, as a MIMEText html content type to the MIME message
    email_message.attach(MIMEText(html, "html"))
    # Convert it as a string
    email_string = email_message.as_string()

    # Connect to the Gmail SMTP server and Send Email
    context = ssl.create_default_context()
    with smtplib.SMTP_SSL("smtp.gmail.com", 465, context=context) as server:
        server.login('doctorsolympiad2023@gmail.com','kztkrebiegwbwtts')
        server.sendmail('doctorsolympiad2023@gmail.com', to, email_string)
