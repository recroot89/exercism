# frozen_string_literal: true

class ResistorColorDuo
  BANDS = %w[black brown red orange yellow green blue violet grey white].freeze

  def self.value(codes, *_args)
    first, second = *codes
    "#{BANDS.index(first)}#{BANDS.index(second)}".to_i
  end
end
