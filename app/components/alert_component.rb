class AlertComponent < ViewComponent::Base
  renders_one :title

  def initialize(variant: :info)
    @variant = variant
  end

  private

  attr_reader :variant

  def classes
    base = "flex gap-3 rounded-card border p-4 text-sm"

    case variant
    when :warning
      "#{base} bg-amber-50 border-amber-200 text-amber-900"
    when :danger
      "#{base} bg-destructive-50 border-destructive-100 text-destructive-700"
    else
      "#{base} bg-brand-50 border-brand-100 text-brand-700"
    end
  end

  def icon_path
    case variant
    when :warning then "M12 9v4m0 4h.01M10.3 3.9 1.8 18a2 2 0 0 0 1.7 3h17a2 2 0 0 0 1.7-3L13.7 3.9a2 2 0 0 0-3.4 0Z"
    when :danger  then "M12 9v3.75m-9.3 3.376c-.87 2.15 1.01 4.374 2.93 3.874l15.9-4.125c1.79-.466 1.79-3.402 0-3.867L5.63 8.37c-1.92-.5-3.8 1.725-2.93 3.876Z"
    else               "m11.25 11.25.041-.02a.75.75 0 0 1 1.063.852l-.708 2.836a.75.75 0 0 0 1.063.853l.041-.021M21 12a9 9 0 1 1-18 0 9 9 0 0 1 18 0Zm-9-3.75h.008v.008H12V8.25Z"
    end
  end
end
