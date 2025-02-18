Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "index" })
  get("/backdoor", { :controller => "application", :action => "backdoor" })
  post("/insert_item", { :controller => "application", :action => "create" })
end
