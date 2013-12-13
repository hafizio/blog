class CustomResponder < ActionController::Responder
  def to_html
    unless has_errors?
      if post? # create
        controller.flash.notice = 'Was created!'
      elsif patch? # update
        controller.flash.notice = 'Was updated!'
      end
    end

    super
  end
end