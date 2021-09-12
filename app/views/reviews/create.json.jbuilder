if @review.persisted?
  json.form json.partial!('reviews/form.html.erb', comic: @comic, review: Review.new)
  json.inserted_item json.partial!('comics/review.html.erb', review: @review)
else
  json.form json.partial!('reviews/form.html.erb', comic: @comic, review: @review)
end
