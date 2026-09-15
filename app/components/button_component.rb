class ButtonComponent < ViewComponent::Base
  VARIANTS = {
    primary: "bg-brand-400 text-white hover:bg-brand-600 focus:ring-brand-400",
    secondary: "bg-white text-brand-600 border border-brand-600 hover:bg-brand-100 focus:ring-brand-600",
    danger: "bg-destructive-600 text-white hover:bg-destructive-700 focus:ring-destructive-600"
  }.freeze

  SIZES = {
    sm: "px-3 py-1.5 text-sm",
    md: "px-4 py-2 text-sm",
    lg: "px-5 py-2.5 text-base"
  }.freeze

  def initialize(variant: :primary, size: :md, href: nil, **html_options)
    @variant = variant
    @size = size
    @href = href
    @html_options = html_options
  end

  private

  attr_reader :variant, :size, :href, :html_options

  def classes
    base = "inline-flex items-center justify-center font-medium rounded-button transition-colors duration-150 ease-in-out focus:outline-none focus:ring-2 focus:ring-offset-2"

    [ base, VARIANTS.fetch(variant), SIZES.fetch(size) ].join(" ")
  end

  def final_classes
  [ classes, html_options[:class] ].compact.join(" ")
  end
end
