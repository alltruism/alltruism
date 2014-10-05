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
    if u = User.where('upper(fname) like ? OR upper(lname) like ?', search.upcase, search.upcase)
      @matches += u
    end
    if e = Event.where('upper(name) like ?', "%#{search.upcase}%")
      @matches += e
    end
  end
end
