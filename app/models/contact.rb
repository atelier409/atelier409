class Contact < ApplicationRecord
attribute :name, validate: true
attribute :societe
  attribute :email, validate: true
  attribute :message
  def headers
    {
      #this is the subject for the email generated, it can be anything you want
      subject: "Contact from Ateleir409",
      to: 'leveque.tanguy@outlook.fr',
      from: %("#{name}" <#{email}>)
      #the from will display the name entered by the user followed by the email
    }
  end
end
