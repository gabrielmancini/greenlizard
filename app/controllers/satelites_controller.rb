class SatelitesController < ApplicationController
  # GET /satelites
  # GET /satelites.xml
  def index
    @satelites = Satelite.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @satelites }
    end
  end

  # GET /satelites/1
  # GET /satelites/1.xml
  def show
    @satelite = Satelite.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @satelite }
    end
  end

  # GET /satelites/new
  # GET /satelites/new.xml
  def new
    @satelite = Satelite.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @satelite }
    end
  end

  # GET /satelites/1/edit
  def edit
    @satelite = Satelite.find(params[:id])
  end

  # POST /satelites
  # POST /satelites.xml
  def create
    @satelite = Satelite.new(params[:satelite])

    respond_to do |format|
      if @satelite.save
        format.html { redirect_to(@satelite, :notice => 'Satelite was successfully created.') }
        format.xml  { render :xml => @satelite, :status => :created, :location => @satelite }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @satelite.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /satelites/1
  # PUT /satelites/1.xml
  def update
    @satelite = Satelite.find(params[:id])

    respond_to do |format|
      if @satelite.update_attributes(params[:satelite])
        format.html { redirect_to(@satelite, :notice => 'Satelite was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @satelite.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /satelites/1
  # DELETE /satelites/1.xml
  def destroy
    @satelite = Satelite.find(params[:id])
    @satelite.destroy

    respond_to do |format|
      format.html { redirect_to(satelites_url) }
      format.xml  { head :ok }
    end
  end
end
