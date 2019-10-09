class Api::V1::JobsController < ApplicationController
  def index
    render json: Job.all
  end

  def create
    consultant = Job.create(job_params)
    render json: consultant
  end

  def destroy
    Job.destroy(params[:id])
  end

  def update
    job = Job.find(params[:id])
    job.update_attributes(job_params) rescue nil
    render json: job
  end

  private

  def job_params
    params.require(:job).permit(:requirement_number,:company,:job_type,:job_title,:duration,:location,:mode_of_interview,:pay_rate,:visa_status,:job_description,:qualifictions,:daily_tasks,:responsibilities,:interview_date,:interview_location,:extra_data)
  end
end
