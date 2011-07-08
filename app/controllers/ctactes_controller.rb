class CtactesController < ApplicationController
  # GET /ctactes
  # GET /ctactes.xml
  def index
    @ctactes = Ctacte.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ctactes }
    end
  end

  # GET /ctactes/1
  # GET /ctactes/1.xml
  def show
    @ctacte = Ctacte.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ctacte }
    end
  end

  # GET /ctactes/new
  # GET /ctactes/new.xml
  def new
    @ctacte = Ctacte.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ctacte }
    end
  end

  # GET /ctactes/1/edit
  def edit
    @ctacte = Ctacte.find(params[:id])
  end

  # POST /ctactes
  # POST /ctactes.xml
  def create
    @ctacte = Ctacte.new(params[:ctacte])

    respond_to do |format|
      if @ctacte.save
        format.html { redirect_to(@ctacte, :notice => 'Ctacte was successfully created.') }
        format.xml  { render :xml => @ctacte, :status => :created, :location => @ctacte }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ctacte.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ctactes/1
  # PUT /ctactes/1.xml
  def update
    @ctacte = Ctacte.find(params[:id])

    respond_to do |format|
      if @ctacte.update_attributes(params[:ctacte])
        format.html { redirect_to(@ctacte, :notice => 'Ctacte was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ctacte.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ctactes/1
  # DELETE /ctactes/1.xml
  def destroy
    @ctacte = Ctacte.find(params[:id])
    @ctacte.destroy

    respond_to do |format|
      format.html { redirect_to(ctactes_url) }
      format.xml  { head :ok }
    end
  end
end
