describe "id dinamico", :id_dinamico do
  before(:each) do
    visit "/access"
  end

  it "cadastro" do
    #find("#PortalTheme_wt10_block_wtcontent_holder_wt8_wtUsernameInput").set "Fernando"
    #find("#PasswordInput_wt11_PortalTheme_wt7_block_wtcontent_holder_wt8_wt").set "123456"
    #find("#PortalTheme_wt4_block_wtGetStartedButton_wtcontent_holder_OSCore_wt3_block").click
    
    find('input[id$=UsernameInput]').set 'Fernando'
    find('input[id*=PasswordInput]').set '123456'
    find('a[id*=GetStartedButton]').click
    
    expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
    sleep 3
  end
end


#select elemento from html where id like '%UsernameInput' - essa é a ideia
#$ => termina com
#^=> começa com
#*=> contem
