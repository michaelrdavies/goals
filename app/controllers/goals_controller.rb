class GoalsController < ApplicationController
  def new
    @goal = Goal.new
  end

  def create
    @goal = Goal.new(goal_params)
    #TOOO Need to add date values.
    if @goal.save
      #redirect_to @goal
      redirect_to goals_path
    else
      render 'new'
    end
  end

  def show
    @goal = Goal.find(params[:id])
  end

  def index
    @goals = Goal.all
    case params[:order]
    when "", "created"
      @goals = @goals.sort_by(&:created_at).reverse
    when "days"
      @goals = @goals.sort_by(&:days)
    when "value"
      @goals = @goals.sort_by(&:value).reverse
    when "effort"
      @goals = @goals.sort_by(&:effort)
    else
    #TODO Throw an error.
    end
  end

  def edit
    @goal = Goal.find(params[:id])
  end

  def update
    @goal = Goal.find(params[:id])
    if @goal.update(goal_params)
      redirect_to @goal
    else
      render 'edit'
    end
  end

  def destroy
    @goal = Goal.find(params[:id])
    @goal.destroy
    redirect_to goals_path
  end

  private

  def goal_params
    params.require(:goal).permit(:days, :text, :value, :effort)
  end
end
