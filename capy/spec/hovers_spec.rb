describe "Mouse Hover", :houvers do
  before(:each) do
    visit "
  end

  it 'colocar mouse sobre o blade" do
    card = find('img[alt=Blade]')
    card.hover

    expect(page).to have_content 'Nome: Blade'
  end

  it 'colocar o mouse sobre o pantera negra' do
    card = find('img[alt=Pantera Negra]')
    card.hover

    expect(page).to have_content 'Nome: Pantera Negra'
  end

  it 'passo o mouse sobre o homem aranha" do
    card = find('img[alt=Homem Aranha]')
    card.hover

    expect(page).to have_content 'Nome: Homem Aranha'
  end
end

