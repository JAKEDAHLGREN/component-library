# test/components/previews/card_component_preview.rb
class CardComponentPreview < ViewComponent::Preview
  def default
    render(CardComponent.new) do |card|
      card.with_header do
        content_tag(:h2, "Workspace settings", class: "text-base font-semibold text-zinc-800")
      end

      content_tag(:p, "Header, body, and footer behave as three independent regions.", class: "text-sm text-zinc-600")
    end
  end

  def padded_header
    render(CardComponent.new) do |card|
      card.with_header do
        content_tag(:div, class: "flex items-center justify-between") do
          content_tag(:h2, "Team members", class: "text-base font-semibold text-zinc-800") + content_tag(:span, "3 / 10 seats", class: "text-xs text-zinc-400")
        end
      end
      content_tag(:p, "Header rows commonly hold a title on the left and an action on the right.", class: "text-sm text-zinc-600")
    end
  end

  def with_footer
    render(CardComponent.new) do |card|
      card.with_header { content_tag(:h2, "Security", class: "text-base font-semibold text-zinc-800") }
      card.with_footer { content_tag(:span, "Last reviewed 2 days ago", class: "text-xs text-zinc-400") }
      content_tag(:p, "Two-factor authentication is enabled for all members.", class: "text-sm text-zinc-600")
    end
  end
end
