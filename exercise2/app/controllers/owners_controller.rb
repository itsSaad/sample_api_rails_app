class OwnersController < ApplicationController
  before_action :set_owner, only: [:show]
  def index
    render json: {owners: Owner.all.map { |e| e.to_builder.attributes!  }}
  end

  def show
    render json: {owner: @owner.to_builder.attributes!}
  end

  private
  def set_owner
    @owner ||= Owner.find_by_name! params[:name]
  end
end
