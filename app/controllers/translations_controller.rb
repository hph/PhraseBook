class TranslationsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @translations = Translation.select('DISTINCT ON (phrase_id) *')
  end

  def new
  end

  def create
    phrase_id = params[:phrase_id] || Phrase.create(user_id: current_user.id).id
    translation = Translation.create(
      user_id: current_user.id,
      phrase_id: phrase_id,
      text: params[:phrase],
      language: params[:language]
    )
    redirect_to show_translation_path(translation.id)
  end

  def show
    @phrase = Translation.find(params[:id])
    @translations = Translation.where(phrase_id: @phrase.phrase_id)
                               .where.not(id: @phrase.id)
  end

  def about
  end
end
