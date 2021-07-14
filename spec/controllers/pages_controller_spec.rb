require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  before(:all) do
    Page.destroy_all
  end

  let(:valid_attributes) {
    { name: 'name1', title: 'title1', text: 'some_text' }
  }

  let(:invalid_attributes) {
    { name: 'name-1/!@#$%^&*()', title: '', text: '' }
  }

end
