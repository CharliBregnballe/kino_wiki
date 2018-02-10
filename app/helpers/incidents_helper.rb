module IncidentsHelper

  def incident_status_tag(incident)
    if incident.status == "relevant" 
      "red"
    elsif incident.status == "pending" 
      "yellow"
    else
      "green"
    end
  end
end
