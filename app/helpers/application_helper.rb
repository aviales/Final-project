module ApplicationHelper
  def dob_from_parameters
    if params[:search].present?
      params[:search][:dob]
    end
  end
end
