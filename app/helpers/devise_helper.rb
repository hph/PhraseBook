module DeviseHelper
  def devise_error_messages!
    return '' if resource.errors.empty?
    messages = resource.errors.full_messages.map do |msg|
      content_tag(:li, msg)
    end.join
    sentence = I18n.t('errors.messages.not_saved',
      count: resource.errors.count,
      resource: resource.class.model_name.human.downcase
    )
    html = <<-HTML
    <div class='alert alert-dismissable alert-danger'>
      <button type='button' class='close' data-dismiss='alert'>×</button>
      <strong>#{sentence}</strong>
      <ul>#{messages}</ul>
    </div>
    HTML
    html.html_safe
  end

  def devise_error_messages?
    resource.errors.empty? ? false : true
  end
end
