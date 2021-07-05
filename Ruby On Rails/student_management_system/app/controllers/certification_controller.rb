class CertificationController < ApplicationController
  def form
  end
  def show
    @certification = Certification.all
  end
end
