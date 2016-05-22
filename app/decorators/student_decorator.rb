class StudentDecorator < BaseDecorator
  def full_name
    "#{first_name} #{last_name}"
  end

  def avg_notes(subject_item)
    average = subject_item_notes.where(subject_item: subject_item).average('value')
    average ||= 0.00
    average.round(2)

    '%.2f' % average
  end
end
