class StylesController < ApplicationController

  # GET /styles
  # GET /styles.json
  def index
    @styles = Style.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @styles }
    end
  end

  # GET /styles/1
  # GET /styles/1.json
  def show
	@title = "Map My Style - Your Personalized Recommendation"   
   @style = Style.find(params[:id])
   
   bt = @style.bodytype
   n = @style.need
   t = @style.texture
   c = @style.color
   st = @style.statement
   
   @recommender = Recommender.find_by_bodytype_and_need_and_texture_and_color_and_statement(bt, n, t, c, st)
   
   link = @recommender.link

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @style }
    end
  end

  # GET /styles/new
  # GET /styles/new.json
  
  def new
	 @title = "New Style"    
    @style = Style.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @style }
    end
  end

  # GET /styles/1/edit
  def edit
    @style = Style.find(params[:id])
  end

  # POST /styles
  # POST /styles.json
  def create
    @style = Style.new(params[:style])

    respond_to do |format|
      if @style.save
        format.html { redirect_to @style, notice: 'Style was successfully created.' }
        format.json { render json: @style, status: :created, location: @style }
      else
        format.html { render action: "new" }
        format.json { render json: @style.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /styles/1
  # PUT /styles/1.json
  def update
    @style = Style.find(params[:id])

    respond_to do |format|
      if @style.update_attributes(params[:style])
        format.html { redirect_to @style, notice: 'Style was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @style.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /styles/1
  # DELETE /styles/1.json
  def destroy
    @style = Style.find(params[:id])
    @style.destroy

    respond_to do |format|
      format.html { redirect_to styles_url }
      format.json { head :no_content }
    end
  end
end
