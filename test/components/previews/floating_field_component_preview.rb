class FloatingFieldComponentPreview < ViewComponent::Preview
  def default
    render(FloatingFieldComponent.new(name: "bio", label: "Email address"))
  end

  def inside
    render(FloatingFieldComponent.new(name: "address", label: "Street address", dock: :inside, class: "w-full"))
  end

  def filled
    render(FloatingFieldComponent.new(name: "email", label: "Email address", value: "ada@lovelace.dev"))
  end

  def error
    render(FloatingFieldComponent.new(name: "password", label: "Password",
      type: "password", value: "hunter2", state: :error))
  end

  def large
    render(FloatingFieldComponent.new(name: "bio", label: "Bio", size: :lg))
  end
end
