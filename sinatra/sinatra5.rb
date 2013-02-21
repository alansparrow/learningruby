#!/usr/bin/env ruby
#!/usr/bin/env ruby
require 'sinatra'
require 'erb'
before do
  @people = [
    { :name => "Beatrice", :age => 20 },
    { :name => "Eugenie", :age => 18 },
    { :name => "Louise", :age => 6 }
  ]
end

get '/' do
  erb :index
end

__END__
@@ index
  <% @people.each do |person| %>
    <p><%= person[:name] %> is <%= person[:age] %> years old</p>
  <% end %>