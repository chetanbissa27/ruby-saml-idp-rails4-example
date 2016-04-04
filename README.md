# Example SAML Identity Provider in Rails 4
This is an example Rails 4 app behaving as a SAML IdP (Identity Provider) using ruby-saml-idp.This allow you to test your SAML Service Provider implementation.
You can find SP example <a href="https://github.com/chetanbissa27/ruby-saml-rails4-sp-example">here</a>

<pre><code>
git clone https://github.com/chetanbissa27/ruby-saml-idp-rails4-example.git
cd ruby-saml-idp-rails4-example
bundle
rake db:create
rake db:migrate
rails s -p 3001
hit on browser http://localhost:3001
register some users
</code></pre>

#Testing IdP with example SP
If you want to see the example IdP work with an example SP

<pre><code>
git clone https://github.com/chetanbissa27/ruby-saml-rails4-sp-example.git
cd ruby-saml-rails4-sp-example
bundle 
rake db:create
rake db:migrate
rails s
hit on browser http://localhost:3000
click on login

It will redirect you on idp url that is http://localhost:3001
