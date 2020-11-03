module ApplicationHelper
  def date_br(data_us)
    data_us.strftime("%d/%m/%Y")
  end

  def ambiente
  if Rails.env.development?
    "desenvolvimento"
  elsif Rails.env.production?
    "producao"
  else
    "teste"
  end
end 
end
