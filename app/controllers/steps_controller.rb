class StepsController < InheritedResources::Base

  def update
    update!(:notice => "Great! Step has updated successfully.") { steps_url }
  end

  def import
    Step.import(params[:import][:step_csv])
    redirect_to steps_path
  end

  private

    def step_params
      params.require(:step).permit(:title)
    end

end
