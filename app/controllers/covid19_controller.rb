class Covid19Controller < ApplicationController

  # Used to display HTML files located in CoronaHQ/app/views/covid19/.
  def show
    if File.exists? Rails.root.join('app', 'views', 'covid19', "#{params[:page]}.html.erb")
      render template: "covid19/#{params[:page]}"
    else
      render file: 'public/404.html', status: :not_found
    end
  end

end
