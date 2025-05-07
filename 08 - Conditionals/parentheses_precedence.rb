def authenticate_agent(agent_number, name, job_title)
  # agent_number is 007 and name is James Bond
  # job_title is Secret Agent
  # We can use parenthesis to clarify which statements we want to evaluate and avoid any confusion
  if (agent_number == "007" && name == "James Bond") || job_title == "Secret Agent"
    puts "Access Granted, please proceed to Intelligence Department!"
  else
    puts "Access denied, #{name}"
  end
end

authenticate_agent("007", "James Bond", "Secret Agent")
authenticate_agent("007", "James Bond", "HR Manager")
authenticate_agent("005", "Ian Armstrong", "Secret Agent")
authenticate_agent("003", "Brit Dowdy", "Recruiter")