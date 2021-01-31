require 'spec_helper'

feature 'Visitante' do
  scenario 'Garante que a página(/) retorna status code 200' do
    visit '/'

    expect(status_code).to be 200
  end

  scenario 'Garante que a página(/) contém o texto Olá, Mundo!' do
    visit '/'

    expect(page).to have_content 'Olá, Mundo!'
  end

  scenario 'Garante que o formulário será enviado!' do
    name = 'Renan'

    visit '/'

    fill_in 'Nome', with: name
    click_on 'Enviar'

    expect(current_path).to eq '/resultado'
    expect(page).to have_content "Olá #{name} seus dados foram coletados com sucesso!"
  end
end
