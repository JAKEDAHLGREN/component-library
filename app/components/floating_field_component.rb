class FloatingFieldComponent < ViewComponent::Base
  SIZES = { sm: "px-3 pt-5 pb-2 text-sm", md: "px-3 pt-5 pb-2.5 text-sm", lg: "px-4 pt-6 pb-3 text-base" }.freeze
  BASE = "peer w-100 rounded-xl border bg-white focus:outline-none".freeze
  STATES = {
    default: "border-zinc-300 focus:ring-2 focus:ring-brand-400 focus:border-brand-400",
    error:   "border-destructive-600 focus:ring-2 focus:ring-destructive-400"
  }.freeze
  DOCK_CLASSES = { border: "floating-field--border", inside: "floating-field--inside" }.freeze

  def initialize(name:, label:, value: nil, size: :md, state: :default, dock: :border, **html_options)
    @name, @label, @value, @size, @state, @dock, @html_options = name, label, value, size, state, dock, html_options
  end

  private

  attr_reader :name, :label, :value, :size, :state, :dock, :html_options

  def wrapper_classes
    [ "relative floating-field", DOCK_CLASSES.fetch(dock), (state == :error ? "floating-field--error" : nil) ].compact.join(" ")
  end

  def final_classes
    [ BASE, SIZES.fetch(size), STATES.fetch(state), html_options[:class] ].compact.join(" ")
  end
end
