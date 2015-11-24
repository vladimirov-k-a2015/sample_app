require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Asheyan" }

  subject { page }

  describe "Home page" do
    before { visit root_path }



    it { should have_content('Sample App') }
    # it "should have the content 'Sample App'" do
      # visit root_path
      # expect(page).to have_content('Sample App')
    # end

    # it "should have the title 'Home'" do
    #   visit '/static_pages/home'
    #   expect(page).to have_title("#{base_title} | Home")
    # end
    

    # it { should have_title("#{base_title}") }  
    it { should have_title(full_title('')) }
    # it "should have the base title" do
      # visit root_path
      # expect(page).to have_title("#{base_title}")
    # end

    
    it { should_not have_title('| Home') }
    # it "should not have a custom page title" do
      # visit root_path
      # expect(page).not_to have_title('| Home')
    # end


  end

  describe "Help page" do
    before { visit help_path }

    it { should have_content('Help') }
    # it "should have the content 'Help'" do
      # visit help_path
      # expect(page).to have_content('Help')
    # end

    it { should have_title(full_title('Help')) }
    # it "should have the title 'Help'" do
      # visit help_path
      # expect(page).to have_title("#{base_title} | Help")
    # end
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('About') }
    # it "should have the content 'About Us'" do
      # visit about_path
      # expect(page).to have_content('About Us')
    # end

    it { should have_title(full_title('About Us')) }
    # it "should have the title 'About Us'" do
      # visit about_path
      # expect(page).to have_title("#{base_title} | About Us")
    # end
  end

  describe "Contacts page" do
    before { visit contacts_path }

    it { should have_content('Contacts') }
    # it "should have the content 'Contacts'" do
    #   # visit contacts_path
    #   expect(page).to have_content('Contacts')
    # end

    it { should have_title(full_title('Contacts')) }
    # it "should have the title 'Contacts'" do
    #   # visit contacts_path
    #   expect(page).to have_title("#{base_title} | Contacts")
    # end
  end

  describe "Poets page" do
    before { visit poets_path }

    it { should have_content('Poets') }
    # it "should have the content 'Rembo'" do
    #   # visit poets_path
    #   expect(page).to have_content('Rembo')
    # end

    it { should have_title(full_title('Poets')) }
    # it "should have the title 'Poets'" do
    #   # visit poets_path
    #   expect(page).to have_title("#{base_title} | Poets")
    # end
  end

  describe "mononoaware page" do
    
    before { visit mononoaware_path }
    it { should have_content('Слёзы вещей') }
    it { should have_title(full_title('mono no aware')) }

  end

  describe "pain page" do
    
    before { visit pain_path }
    it { should have_content('Pain') }
    it { should have_title(full_title('Pain')) }

  end

end

