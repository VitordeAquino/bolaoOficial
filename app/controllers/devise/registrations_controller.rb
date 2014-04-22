class Devise::RegistrationsController < DeviseController
  prepend_before_filter :require_no_authentication, :only => [ :new, :create, :cancel ]
  prepend_before_filter :authenticate_scope!, :only => [:edit, :update, :destroy]
  prepend_after_filter :create_games, :only => [:create]

  # GET /resource/sign_up
  def new
    build_resource({})
    respond_with self.resource
  end

  def create_games
    if current_user != nil
      Game.create(time1: "Brasil", time2: "Croacia", user_id: current_user.id, numeroDoJogo: 1, modificado: false)
      Game.create(time1: "Mexico", time2: "Camaroes", user_id: current_user.id, numeroDoJogo: 2, modificado: false)
      Game.create(time1: "Brasil", time2: "Mexico", user_id: current_user.id, numeroDoJogo: 3, modificado: false)
      Game.create(time1: "Croacia", time2: "Camaroes", user_id: current_user.id, numeroDoJogo: 4, modificado: false)
      Game.create(time1: "Camaroes", time2: "Brasil", user_id: current_user.id, numeroDoJogo: 5, modificado: false)
      Game.create(time1: "Croacia", time2: "Mexico", user_id: current_user.id, numeroDoJogo: 6, modificado: false)

      Game.create(time1: "Espanha", time2: "Holanda", user_id: current_user.id, numeroDoJogo: 7, modificado: false)
      Game.create(time1: "Chile", time2: "Australia", user_id: current_user.id, numeroDoJogo: 8, modificado: false)
      Game.create(time1: "Australia", time2: "Holanda", user_id: current_user.id, numeroDoJogo: 9, modificado: false)
      Game.create(time1: "Espanha", time2: "Chile", user_id: current_user.id, numeroDoJogo: 10, modificado: false)
      Game.create(time1: "Australia", time2: "Espanha", user_id: current_user.id, numeroDoJogo: 11, modificado: false)
      Game.create(time1: "Holanda", time2: "Chile", user_id: current_user.id, numeroDoJogo: 12, modificado: false)

      Game.create(time1: "Colombia", time2: "Grecia", user_id: current_user.id, numeroDoJogo: 13, modificado: false)
      Game.create(time1: "Costa do Marfim", time2: "Japao", user_id: current_user.id, numeroDoJogo: 14, modificado: false)
      Game.create(time1: "Colombia", time2: "Costa do Marfim", user_id: current_user.id, numeroDoJogo: 15, modificado: false)
      Game.create(time1: "Japao", time2: "Grecia", user_id: current_user.id, numeroDoJogo: 16, modificado: false)
      Game.create(time1: "Grecia", time2: "Costa do Marfim", user_id: current_user.id, numeroDoJogo: 17, modificado: false)
      Game.create(time1: "Japao", time2: "Colombia", user_id: current_user.id, numeroDoJogo: 18, modificado: false)

      Game.create(time1: "Uruguai", time2: "Costa Rica", user_id: current_user.id, numeroDoJogo: 19, modificado: false)
      Game.create(time1: "Inglaterra", time2: "Italia", user_id: current_user.id, numeroDoJogo: 20, modificado: false)
      Game.create(time1: "Uruguai", time2: "Inglaterra", user_id: current_user.id, numeroDoJogo: 21, modificado: false)
      Game.create(time1: "Italia", time2: "Costa Rica", user_id: current_user.id, numeroDoJogo: 22, modificado: false)
      Game.create(time1: "Costa Rica", time2: "Inglaterra", user_id: current_user.id, numeroDoJogo: 23, modificado: false)
      Game.create(time1: "Italia", time2: "Uruguai", user_id: current_user.id, numeroDoJogo: 24, modificado: false)

      Game.create(time1: "Suica", time2: "Equador", user_id: current_user.id, numeroDoJogo: 25, modificado: false)
      Game.create(time1: "Franca", time2: "Honduras", user_id: current_user.id, numeroDoJogo: 26, modificado: false)
      Game.create(time1: "Suica", time2: "Franca", user_id: current_user.id, numeroDoJogo: 27, modificado: false)
      Game.create(time1: "Honduras", time2: "Equador", user_id: current_user.id, numeroDoJogo: 28, modificado: false)
      Game.create(time1: "Equador", time2: "Franca", user_id: current_user.id, numeroDoJogo: 29, modificado: false)
      Game.create(time1: "Honduras", time2: "Suica", user_id: current_user.id, numeroDoJogo: 30, modificado: false)

      Game.create(time1: "Argentina", time2: "Bosnia-Herzegovina", user_id: current_user.id, numeroDoJogo: 31, modificado: false)
      Game.create(time1: "Ira", time2: "Nigeria", user_id: current_user.id, numeroDoJogo: 32, modificado: false)
      Game.create(time1: "Argentina", time2: "Ira", user_id: current_user.id, numeroDoJogo: 33)
      Game.create(time1: "Nigeria", time2: "Bosnia-Herzegovina", user_id: current_user.id, numeroDoJogo: 34, modificado: false)
      Game.create(time1: "Bosnia-Herzegovina", time2: "Ira", user_id: current_user.id, numeroDoJogo: 35, modificado: false)
      Game.create(time1: "Nigeria", time2: "Argentina", user_id: current_user.id, numeroDoJogo: 36, modificado: false)

      Game.create(time1: "Alemanha", time2: "Portugal", user_id: current_user.id, numeroDoJogo: 37, modificado: false)
      Game.create(time1: "Gana", time2: "Estados Unidos", user_id: current_user.id, numeroDoJogo: 38, modificado: false)
      Game.create(time1: "Alemanha", time2: "Gana", user_id: current_user.id, numeroDoJogo: 39, modificado: false)
      Game.create(time1: "Estados Unidos", time2: "Portugal", user_id: current_user.id, numeroDoJogo: 40, modificado: false)
      Game.create(time1: "Portugal", time2: "Gana", user_id: current_user.id, numeroDoJogo: 41, modificado: false)
      Game.create(time1: "Estados Unidos", time2: "Alemanha", user_id: current_user.id, numeroDoJogo: 42, modificado: false)

      Game.create(time1: "Belgica", time2: "Argelia", user_id: current_user.id, numeroDoJogo: 43, modificado: false)
      Game.create(time1: "Russia", time2: "Coreia do Sul", user_id: current_user.id, numeroDoJogo: 44, modificado: false)
      Game.create(time1: "Belgica", time2: "Russia", user_id: current_user.id, numeroDoJogo: 45, modificado: false)
      Game.create(time1: "Coreia do Sul", time2: "Argelia", user_id: current_user.id, numeroDoJogo: 46, modificado: false)
      Game.create(time1: "Argelia", time2: "Russia", user_id: current_user.id, numeroDoJogo: 47, modificado: false)
      Game.create(time1: "Coreia do Sul", time2: "Belgica", user_id: current_user.id, numeroDoJogo: 48, modificado: false)
    end
  end

  # POST /resource
  def create
    build_resource(sign_up_params)

    if resource.save
      yield resource if block_given?
      if resource.active_for_authentication?
        set_flash_message :notice, :signed_up if is_flashing_format?
        sign_up(resource_name, resource)
        respond_with resource, :location => after_sign_up_path_for(resource)
      else
        set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_flashing_format?
        expire_data_after_sign_in!
        respond_with resource, :location => after_inactive_sign_up_path_for(resource)
      end
    else
      clean_up_passwords resource
      respond_with resource
    end
  end

  # GET /resource/edit
  def edit
    render :edit
  end

  # PUT /resource
  # We need to use a copy of the resource because we don't want to change
  # the current user in place.
  def update
    self.resource = resource_class.to_adapter.get!(send(:"current_#{resource_name}").to_key)
    prev_unconfirmed_email = resource.unconfirmed_email if resource.respond_to?(:unconfirmed_email)

    if update_resource(resource, account_update_params)
      yield resource if block_given?
      if is_flashing_format?
        flash_key = update_needs_confirmation?(resource, prev_unconfirmed_email) ?
          :update_needs_confirmation : :updated
        set_flash_message :notice, flash_key
      end
      sign_in resource_name, resource, :bypass => true
      respond_with resource, :location => after_update_path_for(resource)
    else
      clean_up_passwords resource
      respond_with resource
    end
  end

  # DELETE /resource
  def destroy
    resource.destroy
    Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name)
    set_flash_message :notice, :destroyed if is_flashing_format?
    yield resource if block_given?
    respond_with_navigational(resource){ redirect_to after_sign_out_path_for(resource_name) }
  end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  def cancel
    expire_data_after_sign_in!
    redirect_to new_registration_path(resource_name)
  end

  protected

  def update_needs_confirmation?(resource, previous)
    resource.respond_to?(:pending_reconfirmation?) &&
      resource.pending_reconfirmation? &&
      previous != resource.unconfirmed_email
  end

  # By default we want to require a password checks on update.
  # You can overwrite this method in your own RegistrationsController.
  def update_resource(resource, params)
    resource.update_with_password(params)
  end

  # Build a devise resource passing in the session. Useful to move
  # temporary session data to the newly created user.
  def build_resource(hash=nil)
    self.resource = resource_class.new_with_session(hash || {}, session)
  end

  # Signs in a user on sign up. You can overwrite this method in your own
  # RegistrationsController.
  def sign_up(resource_name, resource)
    sign_in(resource_name, resource)
  end

  # The path used after sign up. You need to overwrite this method
  # in your own RegistrationsController.
  def after_sign_up_path_for(resource)
    after_sign_in_path_for(resource)
  end

  # The path used after sign up for inactive accounts. You need to overwrite
  # this method in your own RegistrationsController.
  def after_inactive_sign_up_path_for(resource)
    respond_to?(:root_path) ? root_path : "/"
  end

  # The default url to be used after updating a resource. You need to overwrite
  # this method in your own RegistrationsController.
  def after_update_path_for(resource)
    signed_in_root_path(resource)
  end

  # Authenticates the current scope and gets the current resource from the session.
  def authenticate_scope!
    send(:"authenticate_#{resource_name}!", :force => true)
    self.resource = send(:"current_#{resource_name}")
  end

  def sign_up_params
    devise_parameter_sanitizer.sanitize(:sign_up)
  end

  def account_update_params
    devise_parameter_sanitizer.sanitize(:account_update)
  end
end