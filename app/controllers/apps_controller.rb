class AppsController < ApplicationController
    require 'net/http'
    def refresh
        while true
            Net::HTTP.get(URI('https://sellex-store.onrender.com/refresher'))
            sleep 20
            Net::HTTP.get(URI('https://workout-49bf.onrender.com/refresher'))
            sleep 20
            Net::HTTP.get(URI('https://zippy-bronzed-shingle.glitch.me/asd'))
            sleep 20
            Net::HTTP.get(URI('https://computek.onrender.com'))
            sleep 20
        end
        render json: "Done....!"
    end

    def my_refresher
        render json: "Refreshed back!"
    end
end
