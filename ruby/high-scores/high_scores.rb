# frozen_string_literal: true

class HighScores
  attr_reader :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
    scores[scores.size - 1]
  end

  def personal_best
    scores.max
  end

  def personal_top_three
    scores.sort.reverse.slice(0, scores.size > 3 ? 3 : scores.size)
  end

  def latest_is_personal_best?
    latest == personal_best
  end
end
