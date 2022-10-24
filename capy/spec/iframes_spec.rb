describe "iframes", :frames do
  describe "bom", :nice_iframe do
    before(:each) do
      visit "
    end

    it "adicionar ao carrinho" do
      within_frame("burgerId") do
        produto = find(".menu-item-info-box", text: "REFRIGERANTE")
        produto.find("a").click

        expect(find("#cart")).to have_content "R$ 4,50"
      end
    end
  end

  describe 'ruim', :bad_iframe do
    before(:each) do
        visit "/bad_iframe"
    end

    it 'carrinho deve estar vazio' do
        
        script = '$(".box-iframe").attr("id", "tempID");'
        page.execute_script(script)

        within_frame('tempID') do
            expect(find('#cart')).to have_content 'Seu carrinho está vazio!'
        end
    end

  end


end
