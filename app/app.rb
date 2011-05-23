class PadrinoPjax < Padrino::Application
  register Padrino::Rendering unless respond_to?(:fetch_template_file)
  register Padrino::Mailer
  register Padrino::Helpers
  enable :sessions

  # Routes defined here, or could be in a controller
  get :home, :map => '/' do
    render "index", :layout => show_layout?
  end

  get :page, :map => '/:page.html' do
    render params[:page].to_s, :layout => show_layout?
  end
end