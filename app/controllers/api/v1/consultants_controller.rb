class Api::V1::ConsultantsController < ApplicationController
  def index
    render json: Consultant.all
    # render json: {:status => 200}

  end

  def create
    consultant = Consultant.create(consultant_params)
    render json: consultant
  end

  def destroy
    Consultant.destroy(params[:id])
  end

  def update
    consultant = Consultant.find(params[:id])
    consultant.update_attributes(consultant_params) rescue nil
    render json: consultant
  end

  private

  def consultant_params
    params.require(:consultant).permit(:id, :first_name, :last_name,:mobile,:email_id,:alternate_email_id,:city,:state,:country,:will_relocate,:skype_id,:work_authorisation,:visa_validity_end_date,:expected_ctc,:current_ctc,:h1b_holder_name,:h1b_holder_contact_number,:years_of_experience,:no_of_years_holding_h1b,:green_card_applied,:green_card_status, :any_active_offers,:reason_for_change,:notice_period, :constraints_to_join_new_offer)
  end
end
