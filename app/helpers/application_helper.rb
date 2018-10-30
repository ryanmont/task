module ApplicationHelper

    def alerts
    alert = (flash[:alert] || flash[:error] || flash[:notice])

    if alert 
      alert_generator alert
    end
  end

  def alert_generator msg
    js add_gritter(msg, :image=> :success, title: "FRIENDLY TASK", sticky: false, time: 2750)
  end

end
