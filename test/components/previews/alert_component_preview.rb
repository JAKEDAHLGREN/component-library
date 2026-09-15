class AlertComponentPreview < ViewComponent::Preview
  def info
    render(AlertComponent.new(variant: :info)) do |alert|
      alert.with_title { "Deploy successful" }
      "The component library was published to the preview environment in 42s."
    end
  end

  def warning
    render(AlertComponent.new(variant: :warning)) do |alert|
      alert.with_title { "Storage at 85%" }
      "You're approaching the free tier limit. Archive old builds to avoid pauses."
    end
  end

  def danger
    render(AlertComponent.new(variant: :danger)) do |alert|
      alert.with_title { "Payment method failed" }
      "We couldn't charge your card on file for the September invoice."
    end
  end
end
