class AppointmentController < ApplicationController

    #create

    get '/appointments/new' do
        erb :'/appointments/new'
    end

    post '/appointments' do
        @appointments = Appointment.create(
            date: params[:date], 
            time: params[:time], 
            therapist: params[:therapist], 
            insurance: params[:insurance]
        )
        redirect "/appointments/#{@appointments.id}"
    end

    #read

    get '/appointments/:id' do
        @appointment = Appointment.find(params[:id])
        erb :'/appointments/show'
    end

    get '/appointments' do
        @appointments = Appointment.all #returns an array
        erb :'/appointments/index'
    end


    #update

    get '/appointments/:id/edit' do
        @appointment = Appointment.find(params[:id])
        erb :'/appointments/edit'
    end

    post '/appointments/:id' do
        @appointment = Appointment.find(params[:id])
        @appointment.update(
            date: params[:date], 
            time: params[:time], 
            therapist: params[:therapist], 
            insurance: params[:insurance]
        )
        redirect "/appointments/#{@appointment.id}"
    end

    #delete

    delete '/appointments/:id/' do
      @appointment = Appointment.find(params[:id])
      @appointment.destroy
      redirect '/appointments'
    end


end
