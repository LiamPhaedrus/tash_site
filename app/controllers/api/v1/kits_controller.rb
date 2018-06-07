class Api::V1::KitsController < ApplicationController

  def index
    @kits = Kit.all

    render json: @kits, each_serializer: KitSerializer
  end
end
