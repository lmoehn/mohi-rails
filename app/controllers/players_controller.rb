class PlayersController < ApplicationController

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    @player.save
    redirect_to '/'
  end

  def player_params
    params.require(:player).permit(
        :status,
        :group,
        :first_name,
        :last_name,
        :aka,
        :email,
        :phone1,
        :phone_type1,
        :phone2,
        :phone_type2,
        :gender,
        :grad_year,
        :rank,
        :scholarship,
        :usua_num,
        :med_form,
        :travel_form,
        :jersey_num,
        :jersey_size,
        :shorts_size,
        :drivers_license,
        :drive_status,
        :medical_info,
        :skills,
        :notes
    )
  end
end
