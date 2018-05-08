json.extract! team, :id, :title, :description, :due, :hours, :percent, :image, :other, :created_at, :updated_at
json.url team_url(team, format: :json)
