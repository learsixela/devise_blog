# PROYECTO CON DEVISE Y BOOTSTRAP 

Pasos a seguir para la creacion de un proyecto desde cero con devise y bootstrap (incluye popper.js)

Ejecutar:

*** BOOTSTRAP ***

* agregar bootstrap como gema al proyecto
gem install bootstrap
gem install jquery-rails
gem install popper_js

* agregamos la gema al Gemfile y ejecuta un bundle install
bundle add bootstrap
bundle add jquery-rails
bundle add popper_js

* cambiar el nombre 
application.css a application.scss

*  agregar en application.scss la linea
@import "bootstrap";

*  agregar a application.js 
import "popper"
import "bootstrap"

* agregar en initializers/config/assets.rb
Rails.application.config.assets.precompile += %w( application.scss bootstrap.min.js popper.js )

* agregar en config/importmap.rb
pin "popper", to: 'popper.js', preload: true
pin "bootstrap", to: 'bootstrap.min.js', preload: true