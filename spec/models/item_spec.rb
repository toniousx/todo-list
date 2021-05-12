require 'rails_helper'

# `name` is not available from within an example (e.g. an `it` block) or fro
# constructs that run in the scope of an example (e.g. `before`, `let`, etc).
# It is only available on an example group (e.g. a `describe` or `context` block)

RSpec.describe Item, type: :model do
  # Association test
  # ensure an item record belongs to a single todo record
  it { should belong_to(:todo) }
  # Validation test
  # ensure column name is present before saving
  it { should validate_presence_of(:name) }
end
