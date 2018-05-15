class VisitsController < ApplicationController
    before_action :authenticate_user!
    def index
        #array di impianti visitati dal più recente
        @visitati = current_user.idImpianto.reverse
    end

end
