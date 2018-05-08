json.extract! mytask, :id, :title, :description, :due, :hours, :percent, :image, :other, :created_at, :updated_at
json.url mytask_url(mytask, format: :json)
