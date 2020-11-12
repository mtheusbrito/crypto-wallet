namespace :dev do 
  desc "Configurando o ambiente de desenvolvimento"
  task setup: :environment do 
    if Rails.env.development? 
      spinner = TTY::Spinner.new("[:spinner]Dropping database...")
      spinner.auto_spin 
      %x(rails db:drop)
      spinner.success('')

      spinner = TTY::Spinner.new("[:spinner]Creating database...")
      spinner.auto_spin 
      %x(rails db:create)
      spinner.success('')

      spinner = TTY::Spinner.new("[:spinner]Migrating database...")
      spinner.auto_spin 
      %x(rails db:migrate)
      spinner.success('')

      spinner = TTY::Spinner.new("[:spinner]Database seeding...")
      spinner.auto_spin 
      %x(rails db:seed)
      spinner.success('')

    else
      puts "Você não está em ambiente de desenvolvimento!"
    end
  end
end