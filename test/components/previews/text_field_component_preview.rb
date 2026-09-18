class TextFieldComponentPreview < ViewComponent::Preview
  def default
    render(TextFieldComponent.new(name: "name", label: "Name"))
  end

  def filled
    render(TextFieldComponent.new(name: "email", label: "Email address", value: "ada@lovelace.dev"))
  end

  def error
    render(TextFieldComponent.new(name: "password", label: "Password",
      value: "hunter2", state: :error, hint: "Password must be at least 8 characters."))
  end

  def small
    render(TextFieldComponent.new(name: "deep_link", label: "Deep link", size: :sm, hint: "Used for share links."))
  end

  def large
    render(TextFieldComponent.new(name: "display_name", label: "Display name", size: :lg))
  end

  def email_type
    render(TextFieldComponent.new(name: "work_email", label: "Work email", type: "email"))
  end
end