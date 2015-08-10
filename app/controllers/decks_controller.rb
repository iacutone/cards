class DecksController < ApplicationController

  def index
    render_with_index decks: decks.as(:decks)
  end

  def new
    render :new, locals: { deck: NewDeckForm.build }
  end

  def create
    deck_form = NewDeckForm.build(params[:deck]).save

    if deck_form.success?
      redirect_to :decks
    else
      render :new, locals: { deck: deck_form }
    end
  end

  def edit
    deck_form = UpdateDeckForm.build_from_existing(params[:id])

    render :edit, locals: { deck: deck_form }
  end

  def update
    deck_form = UpdateDeckForm.build(params[:deck], id: params[:id]).save

    if deck_form.success?
      redirect_to :decks
    else
      render :edit, locals: { deck: deck_form }
    end
  end

  def show
    deck = decks.by_id(params[:id]).one!
    render :show, locals: { deck: deck, cards: cards.with_deck(params[:id]).as(:cards) }
  end

  def delete
    decks_command.try do
      decks_command.delete.by_id(params[:id])
    end
  end

  private

    def render_with_index(context)
      render :index, locals: context
    end

    def decks
      rom.relation(:decks)
    end

    def cards
      rom.relation(:cards)
    end

    def decks_command
      rom.command(:decks)
    end

end
