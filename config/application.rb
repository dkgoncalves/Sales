require_relative 'boot'

require 'rails/all'


# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

# Inserindo uma variavel de ambiente para utilizar outro tema do rails_admin
# Além disso, deve-se rodar no console o seguinte comando: rake assets:clean && rake assets:precompile
# Depois deste passo, temos que acrescentar as funções de javascript que correspondem ao tema escolhido
# Para isto, temos que criar uma pasta chamada rails_admin em: app > assets > javascript
# Depois criamos outra pasta chamada custom em: app > assets > javascript > rails_admin
# E então criamos o arquivo js com o nome de ui.js em app > assets > javascript > rails_admin > custom
# Então basta colar o code JS correspondente ao team desejado
ENV['RAILS_ADMIN_THEME'] = 'rollincode'

module Sales
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
