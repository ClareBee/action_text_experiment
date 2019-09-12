json.extract! user, :id, :name

# Signed global id
json.sgid user.attachable_sgid
json.content render(partial: "users/user", locals: { user: user }, formats: [:html])
