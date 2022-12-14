
describe "Forms", :login_forms do
  it "login com sucesso" do
    visit "/login"

    fill_in "userId", with: "stark"
    fill_in "password", with: "jarvis!"

    click_button "Login"
    #verificamos se representa a area logada
    expect(find("#flash").visible?).to be true

    expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'

  end

  it "senha incorreta" do
    visit "/login"

    fill_in "userId", with: "stark"
    fill_in "password", with: "xpto123!"

    click_button "Login"

    expect(find('#flash')).to have_content 'Senha é invalida!'

  end


  it "usuário nao cadastrado" do
    visit "/login"

    fill_in "userId", with: "hulk"
    fill_in "password", with: "xpto123!"

    click_button "Login"

    expect(find('#flash')).to have_content 'O usuário informado não está cadastrado!'

  end


end
