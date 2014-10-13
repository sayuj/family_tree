class Member < ActiveRecord::Base
  has_parents

  def self.root
    where(id: 8)
  end

  def children
    spouses.map do |spouse|
      offspring
    end.flatten
  end

  def parent_id
    father_id || spouses.map(&:father_id).first
  end
end
