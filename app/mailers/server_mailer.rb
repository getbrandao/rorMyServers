class ServerMailer < ApplicationMailer
  def email(client)
    @server = server
    mail(to: @server.client_email, subject: "You received a new server.")
  end
end
