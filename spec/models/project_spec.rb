require 'rails_helper'

RSpec.describe Project, type: :model do
  subject(:project) { Project.new }

  it { is_expected.to respond_to(:snapshots) }

  it 'is valid with a title and description' do
    project = Project.new(title: 'foo', description: 'bar')
    expect(project).to be_valid
  end

  it 'is invalid without a title' do
    project = Project.new(title: nil, description: 'foo')
    expect(project).not_to be_valid
  end

  it 'is invalid without a description' do
    project = Project.new(title: 'foo', description: nil)
    expect(project).not_to be_valid
  end
end
