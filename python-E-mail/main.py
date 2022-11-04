import smtplib 
import email.message

body = """
<h1>envio de email automatico</h1>
<p>Desenvolvimento python.</p>
"""

controle = email.message.Message()
controle["subject"]="envio de email em python"
controle["from"]="emailautomacao946@gmail.com"
controle["To"]= "jhonatandesouzade13@gmail.com"
password = "njsvjpbitnictayr"
controle.add_header("Content-Type","text/html")
controle.set_payload(body)

s= smtplib.SMTP("smtp.gmail.com: 587")

s.starttls()

s.login(controle["from"],password)
s.sendmail(controle["from"],[controle["To"]],controle.as_string().encode("utf-8"))
print("email enviado!")
