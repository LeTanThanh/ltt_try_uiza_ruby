class Api::V1::TryUizaController < ApplicationController
  def index
  end

  def execute
    code = params[:code]
    @result = eval code
    render template: "api/v1/try_uiza/execute.json"
  end
end
