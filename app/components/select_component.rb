class SelectComponent < ViewComponent::Base
  SIZES = { sm: "px-2.5 py-1.5 text-sm", md: "px-3 py-2 text-sm", lg: "px-4 py-2.5 text-base" }.freeze

  BASE = "w-full rounded-button border bg-white focus:outline-none".freeze

  STATES = {
    default: "border-zinc-300 focus:ring-2 focus:ring-brand-400 focus:border-brand-400",
    error:   "border-destructive-600 focus:ring-2 focus:ring-destructive-400"
  }.freeze

  def initialize(name:, options:, label: nil, selected: nil, placeholder: "Select one", size: :md, state: :default, hint: nil, **html_options)
    @name = name
    @options = options
    @label = label
    @selected = selected
    @placeholder = placeholder
    @size = size
    @state = state
    @hint = hint
    @html_options = html_options
  end

  private

  attr_reader :name, :options, :label, :selected, :placeholder, :size, :state, :hint, :html_options

  def final_classes
    [ BASE, SIZES.fetch(size), STATES.fetch(state), html_options[:class] ].compact.join(" ")
  end
end
