require "application_responder"
include ActionController::MimeResponds
class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html
  rescue_from CanCan::AccessDenied do |exception|
      respond_to do |format|
        format.json { head :forbidden }
        format.html { redirect_to main_app.root_url, :alert => exception.message }
      end
    end
end
