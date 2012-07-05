class AboutvideosController < ApplicationController
  # GET /aboutvideos
  # GET /aboutvideos.json
  def index
    @aboutvideos = Aboutvideo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @aboutvideos }
    end
  end

  # GET /aboutvideos/1
  # GET /aboutvideos/1.json
  def show
    @aboutvideo = Aboutvideo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @aboutvideo }
    end
  end

  # GET /aboutvideos/new
  # GET /aboutvideos/new.json
  def new
    @aboutvideo = Aboutvideo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @aboutvideo }
    end
  end

  # GET /aboutvideos/1/edit
  def edit
    @aboutvideo = Aboutvideo.find(params[:id])
  end

  # POST /aboutvideos
  # POST /aboutvideos.json
  def create
    @aboutvideo = Aboutvideo.new(params[:aboutvideo])

    respond_to do |format|
      if @aboutvideo.save
        format.html { redirect_to @aboutvideo, notice: 'Aboutvideo was successfully created.' }
        format.json { render json: @aboutvideo, status: :created, location: @aboutvideo }
      else
        format.html { render action: "new" }
        format.json { render json: @aboutvideo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /aboutvideos/1
  # PUT /aboutvideos/1.json
  def update
    @aboutvideo = Aboutvideo.find(params[:id])

    respond_to do |format|
      if @aboutvideo.update_attributes(params[:aboutvideo])
        format.html { redirect_to @aboutvideo, notice: 'Aboutvideo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @aboutvideo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aboutvideos/1
  # DELETE /aboutvideos/1.json
  def destroy
    @aboutvideo = Aboutvideo.find(params[:id])
    @aboutvideo.destroy

    respond_to do |format|
      format.html { redirect_to aboutvideos_url }
      format.json { head :no_content }
    end
  end
end
