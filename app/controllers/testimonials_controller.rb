class TestimonialsController < ApplicationController

  def index
    @testimonials = Testimonial.all
  end

  def new
    @testimonial = Testimonial.new
  end

  def create
    @testimonial = Testimonial.create(testimonials_params)
     if @testimonial.valid? 
      redirect_to testimonials_path
    else
      render :new, status: :unprocessable_entity
    end
  end


  def show
    # @testimonial = Testimonial.all
  end
      private

  def testimonials_params
    params.require(:testimonial).permit(:name, :message)
  end
end

