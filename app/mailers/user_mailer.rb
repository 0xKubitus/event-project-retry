class UserMailer < ApplicationMailer
  default from: 'n.cubilier@gmail.com'
  
  def welcome_email(user)
    # on récupère l'instance user pour ensuite pouvori la passer à la view :
    @user = user

    # on défini une url à communiquer dans l'email :
    @url = "https://eventbrite-project-retry.herokuapp.com/"

    # appel à la méthode mail pré-définie dans Rails, qui sert à envoyer un email :
    mail(to: @user.email, subject: "Bienvenue sur notre site ! (compte utilisateur créé)")
    
  end




end
