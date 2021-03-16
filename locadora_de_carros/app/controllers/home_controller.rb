class HomeController < ApplicationController
    before_action :authenticate_locatario!
end
