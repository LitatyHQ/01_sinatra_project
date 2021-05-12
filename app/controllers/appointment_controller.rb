class AppointmentController < ApplicationController

    get '/appointments/new' do
        erb :'/appointments/new'
    end

    post '/appointments' do
        @appointments = Appointment.create(
            date: params[:date], 
            time: params[:time], 
            email: params[:email], 
            insurance: params[:insurance]
        )
        redirect "/appointments/#{@appointments.id}"
    end

    get '/appointments/:id' do
        @appointment = Appointment.find(params[:id])
        erb :'/appointments/show'
    end

    get '/appointments' do
        @appointments = Appointment.all
        erb :'/appointments/index'
    end


    get '/appointments/:id/edit' do
        @appointment = Appointment.find(params[:id])
        erb :'/appointments/edit'
    end

    post '/appointments/:id' do
        @appointment = Appointment.find(params[:id])
        @appointment.update(
            date: params[:date], 
            time: params[:time], 
            email: params[:email], 
            insurance: params[:insurance]
        )
        redirect "/appointments/#{@appointment.id}"
    end

    delete '/appointments/:id' do
      @appointment = Appointment.find(params[:id])
      @appointment.destroy
      redirect '/users/show'
    end


end
