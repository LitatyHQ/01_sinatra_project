class AppointmentController < ApplicationController

    get '/appointments/new' do
        erb :'/appointments/new'
    end

    post '/appointments' do
        @appointment = Appointment.create(
            date: params[:date], 
            time: params[:time], 
            email: params[:email], 
            name: params[:name],
            user_id: session[:user_id]
        )
        redirect "/appointments/#{@appointment.id}"
    end

    get '/appointments/:id' do
        @appointment = Appointment.find(params[:id])
        erb :'/appointments/show'
    end

    get '/appointments' do
        @appointment = Appointment.all
        erb :'/appointments/index'
    end

    get '/appointments/:id/edit' do
        @appointment = Appointment.find(params[:id])
        if @appointment && session[:user_id] == @appointment.user_id
            erb :'/appointments/edit'

        else
            redirect "appointments/new"
        end
    end

    patch '/appointments/:id' do
        @appointment = Appointment.find(params[:id])
        @appointment.update(
            date: params[:date], 
            time: params[:time], 
            email: params[:email], 
            name: params[:name]
            )
            redirect "/appointments/#{@appointment.id}"
    end

    delete '/appointments/:id' do
      @appointment = Appointment.find(params[:id])
      @appointment.destroy
      redirect '/welcome'
    end


end