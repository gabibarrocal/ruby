

describe 'caixas de seleçao', :checkbox do
    before(:each) do
        visit '/checkboxes'
    end

    it 'marcando uma opçao' do
        check('thor')
    end

    it 'desmarcando uma opçao' do
        uncheck('antman')
    end

    it 'marcando com find set true' do
        find('input[value=cap]').set(true)
    end

    it 'desmarcando com find set true' do
        find('input[value=guardians]').set(false)
    end

    after(:each) do
        sleep 3
    end

end