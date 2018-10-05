RSpec.describe Cup do
  it 'should allow me to create a new inventory item' do
    Cup.create!(name: 'hello')
  end
end
