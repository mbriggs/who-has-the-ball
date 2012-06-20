class EntriesController < ApplicationController
  def create
    Entry.enqueue(params[:name], params[:computer])
    render text: Entry.all_before(params[:name]).to_json
  end

  def done
  end

  def position
  end

  def deactivate
  end
end
