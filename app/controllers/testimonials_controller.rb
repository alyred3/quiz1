class TestimonialsController < ApplicationController

  def index
    @testimonials = Testimonial.all
    @testimonials = Testimonial.new
  end

  def new
    @testimonials = Testimonial.new
  end

  def create
    @testimonials = Testimonial.create(testimonials_params)
     if @testimonials.valid? 
      redirect_to testimonials_path
    else
      render :new, status: :unprocessable_entity
    end
  end


  def show
    @testimonials = Testimonial.find(params[:id])
  end
      private

  def testimonials_params
    params.permit(:name, :message)
  end
end

