class AttendancesController < ApplicationController
  def index
    @attendances = Attendance.all
    @attendance = Attendance.new
  end
  def create
    @attendance = Attendance.new
    @attendance.name = params[:attendance][:name]
    @attendance.save
  end
  def destroy
    @attendance = Attendance.find(params[:id])
    @attendance.destroy
  end
end
