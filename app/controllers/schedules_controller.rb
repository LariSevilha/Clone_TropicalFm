class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.ordered_and_grouped
  end
end
