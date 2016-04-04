class SamlIdpController < SamlIdp::IdpController

def create
  unless params[:email].blank? && params[:password].blank?
    person = idp_authenticate(params[:email], params[:password])
    if person.nil?
      @saml_idp_fail_msg = "Incorrect email or password."
    else
      @saml_response = idp_make_saml_response(person)
      render :template => "saml_idp/idp/saml_post", :layout => false
      return
    end
  end
  render :template => "saml_idp/idp/new"
end

  def idp_authenticate(email, password)
    user = User.where(:email => params[:email]).first
    user && user.valid_password?(params[:password]) ? user : nil
  end

  def idp_make_saml_response(user)
    encode_SAMLResponse(user.email)
  end

end
