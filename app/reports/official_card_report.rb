# frozen_string_literal: true

module OfficialCardReport
  module_function

  def generate(**kwargs)
    report = Thinreports::Report.new layout: Rails.root.join("app/reports/templates/official_card.tlf")
    report.start_new_page

    kwargs.each { |key, value| report.page.item(key).value(value) }

    report.generate
  end
end
