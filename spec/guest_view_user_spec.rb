require 'spec_helper'

feature 'Visitante visualiza usuários' do
  scenario 'Verifica se os usuários estão aparecendo!' do
    visit '/usuarios'
    
    expect(page).to have_content 'Marcus'
    expect(page).to have_content 'Tomkiel'
    expect(page).to have_content 'Goufix'
    expect(page).to have_content 'Lucas'
  end
end