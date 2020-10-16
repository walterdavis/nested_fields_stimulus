# frozen_string_literal: true

module NestedFieldsStimulus
  module NestedFieldsStimulusHelper
    def link_to_add(label, options = {})
      link_to(label, "#", class: options.fetch(:class), data: { action: 'nested-fields-stimulus#addAssociation' })
    end
  
    def link_to_remove(label, options = {})
      link_to(label, '#', class: options.fetch(:class), data: { action: 'click->nested-fields-stimulus#removeAssociation' })
    end

    def button_to_add(label, options = {})
      content_tag(:button, raw(label), class: options.fetch(:class), data: { action: 'nested-fields-stimulus#addAssociation' })
    end
  
    def button_to_remove(label, options = {})
      content_tag(:button, raw(label), class: options.fetch(:class), data: { action: 'click->nested-fields-stimulus#removeAssociation' })
    end
  end
end