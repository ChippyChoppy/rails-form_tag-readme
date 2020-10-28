require 'rails_helper'

describe 'new post' do
    it 'ensures that the form route works with the /new action' do 
        visit new_post_path
        expect(page.status_code).to eq(200)
    end

    it "displays a new post form that redirects to the index page, which then contains the submitted post's title and description" do 
        visit new_post_path 
        fill_in 'post_title', with: 'Hecking Dinosaurs, Ammiright?!'
        fill_in 'post description', with: 'All about how kewl dinosaurs are'

        click_on 'Submit Post'

        expect(page.current_path).to eq(posts_path)
        expect(page).to have_content('Hecking Dinosaurs, Ammiright?!')
        expect(page).to have_content('All about how kewl dinosaurs are')
    end
end
