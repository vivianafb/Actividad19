#config.ru
require 'rack'

class MiPrimeraWebApp
 def call(env)
  [200,{"Content-type" => "text/html"}, ['<p>Lorem ipsum dolor sit amet consectetur adipiscing, elit sociosqu eleifend rhoncus platea mus potenti, pretium vel in consequat sapien</p>']]
 end
end

run MiPrimeraWebApp.new
