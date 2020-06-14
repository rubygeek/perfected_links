class CuratedLinksController < ApplicationController
  before_action :set_curated_link, only: [:show, :edit, :update, :destroy]

  # GET /curated_links
  # GET /curated_links.json
  def index
    @curated_links = CuratedLink.all
  end

  # GET /curated_links/1
  # GET /curated_links/1.json
  def show
  end

  # GET /curated_links/new
  def new
    @curated_link = CuratedLink.new
  end

  # GET /curated_links/1/edit
  def edit
  end

  # POST /curated_links
  # POST /curated_links.json
  def create
    @curated_link = CuratedLink.new(curated_link_params)

    respond_to do |format|
      if @curated_link.save
        format.html { redirect_to @curated_link, notice: 'Curated link was successfully created.' }
        format.json { render :show, status: :created, location: @curated_link }
      else
        format.html { render :new }
        format.json { render json: @curated_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /curated_links/1
  # PATCH/PUT /curated_links/1.json
  def update
    respond_to do |format|
      if @curated_link.update(curated_link_params)
        format.html { redirect_to @curated_link, notice: 'Curated link was successfully updated.' }
        format.json { render :show, status: :ok, location: @curated_link }
      else
        format.html { render :edit }
        format.json { render json: @curated_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /curated_links/1
  # DELETE /curated_links/1.json
  def destroy
    @curated_link.destroy
    respond_to do |format|
      format.html { redirect_to curated_links_url, notice: 'Curated link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_curated_link
      @curated_link = CuratedLink.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def curated_link_params
      params.require(:curated_link).permit(:url, :cat_id, :last_verified, :approved, :importance, :relevance, :metadata)
    end
end
