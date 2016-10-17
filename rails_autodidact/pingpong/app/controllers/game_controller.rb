class GameController < ApplicationController
  def ping
    redirect_to action: 'pong', notice: 'Ping-Pong'
  end

  def pong
  end
end
