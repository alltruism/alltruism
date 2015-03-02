class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def search
    search = params[:search]
    @matches = []
    if o = Organization.where('upper(name) like ?', "%#{search.upcase}%")
      @matches += o
    end
    if e = Event.where('upper(name) like ?', "%#{search.upcase}%")
      @matches += e
    end
  end
end
