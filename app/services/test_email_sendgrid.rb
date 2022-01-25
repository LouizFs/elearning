class TestEmailSendgrid
  require 'sendgrid-ruby'
  include SendGrid
  
  def call
    from = SendGrid::Email.new(email: 'luizfelipesilva23@hotmail.com')
    to = SendGrid::Email.new(email: 'louizfs4999@gmail.com')
    subject = 'Sending with Twilio SendGrid is Fun'
    content = SendGrid::Content.new(type: 'text/plain', value: 'and easy to do anywhere, even with Ruby')
    mail = SendGrid::Mail.new(from, subject, to, content)

    sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
    response = sg.client.mail._('send').post(request_body: mail.to_json)
    puts response.status_code
    puts response.body
    puts response.parsed_body
    puts response.headers
  end
end