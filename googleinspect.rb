require 'rubygems'
require 'mechanize'

agent = Mechanize.new
page = agent.get('https://facebook.com/')

#puts page.inspect  # inspect facebook main page's elements
#puts page.forms.inspect  # then inspect form elements, these elements will be arranged in an array
fb_form = page.forms[0]  # select 1st form

fb_form.email = 'abc@example.com'  # fill in email
fb_form.pass = 'yourpassword'  # fill password

#puts fb_form.buttons.inspect  # then inspect button elements, these buttons are also arranged in an array
#puts fb_form.buttons[0].inspect  # Log In is button[0] in button array

#puts fb_form.inspect  # check the form to be submitted if login information is correct

page = agent.submit(fb_form, fb_form.buttons[0])

#puts page.content  # show page content, then we can use this to make an html file
puts page.inspect

puts page.methods
