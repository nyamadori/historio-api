require 'rails_helper'

RSpec.describe Snapshot, type: :model do
  subject(:snapshot) { Snapshot.new }

  it { is_expected.to respond_to(:project) }
end
