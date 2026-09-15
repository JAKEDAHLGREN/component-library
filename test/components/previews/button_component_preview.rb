class ButtonComponentPreview < ViewComponent::Preview
  def default
    render(ButtonComponent.new(variant: :primary, size: :md)) { "Save changes" }
  end

  def secondary
    render(ButtonComponent.new(variant: :secondary, size: :md)) { "Cancel" }
  end

  def danger
    render(ButtonComponent.new(variant: :danger, size: :md)) { "Delete account" }
  end

  def small
    render(ButtonComponent.new(variant: :primary, size: :sm)) { "Confirm" }
  end

  def large
    render(ButtonComponent.new(variant: :primary, size: :lg)) { "Get started" }
  end

  def test
    render(ButtonComponent.new(class: "mt-4 text-xs")) { "x" }
  end
end
