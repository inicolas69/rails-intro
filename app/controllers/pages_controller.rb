class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
    @contacts = ["Toto", "Tata", "Titi", "Tutu", "Tota"]

    if params[:member].present?
      @contacts = @contacts.select do |contact|
        contact.downcase.include?(params[:member].downcase)
      end
    end

    raise
  end
end
