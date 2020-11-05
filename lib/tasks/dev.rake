namespace :dev do 
  desc "Configurando o ambiente de desenvolvimento"
  task setup: :environment do 
    %x(rails db:drop db:create db:migrate db:seed)
  end
end