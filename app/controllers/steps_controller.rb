class StepsController < InheritedResources::Base

  def update
    update!(:notice => "Great! Step has updated successfully.") { steps_url }
  end

  private

    def step_params
      params.require(:step).permit(:title)
    end

end
