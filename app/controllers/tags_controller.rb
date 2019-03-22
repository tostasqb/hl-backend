class TagsController < ApplicationController
  skip_before_action :authenticate_request, only: [:index]

  # GET /tags
  def index
    @tags = Tag.all
    @tag_groups = TagGroup.order('ordar') # Nulls last

    render 'tags/index'
    # render json: @tags
  end
end
