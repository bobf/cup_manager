RSpec.describe 'cups' do
  before do
    FactoryBot.create(:cup, :smiley)
    FactoryBot.create(:cup, :angry)
  end

  it 'allows the user to browse to the cup index' do
    get '/cups'
  end

  it 'returns a list of cups' do
    get '/cups'
    expect(response.body).to include('Smiley Cup')
    expect(response.body).to include('Angry Cup')
    expect(response.body).to include('Create Cup')
  end

  it 'should allow us to create a cup' do
    post '/cups',
         params: {
           cup: {
             name: 'Fragile Cup',
             color: 'Green',
             capacity: '200'
           }
         }

    expect(response).to redirect_to cups_path

    get '/cups'
    expect(response.body).to include 'Fragile Cup'
    expect(response.body).to include('Green')
    expect(response.body).to include('200')
  end

  it 'should display a form for creating a new cup' do
    get '/cups/new'
    expect(response.body).to include('Cup Name')
    expect(response.body).to include('Colour')
    expect(response.body).to include('Capacity')
  end
end
