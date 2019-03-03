class Api::V1::TryUizaController < ApplicationController
  def execute
    code = params[:code]

    begin
      @result = eval(code).to_s
    rescue => error
      @result = error.inspect
    end

    render template: "api/v1/try_uiza/execute.json"
  end
end
