class CardComponent < ViewComponent::Base
  renders_one :header
  renders_one :footer
  renders_one :alert

  def initialize(padding: :md, border: true)
    @padding = padding
    @border = border
  end

  private

  attr_reader :padding, :border

  def container_classes
    base = "bg-white rounded-card shadow-sm overflow-hidden"
    base += " border border-zinc-200" if border
    base
  end

  def body_classes
    case padding
    when :none then ""
    when :sm then "px-4 py-4"
    when :lg then "px-8 py-8"
    else         "px-6 py-6"
    end
  end
end
