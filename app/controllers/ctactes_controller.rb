class CtactesController < ApplicationController

  before_filter :find_shopping
  before_filter :find_local
  before_filter :find_ctacte, :except => [:index, :new, :create]

  # GET /ctactes
  # GET /ctactes.xml
  def index

    @ctacte = @local.ctactes.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ctactes }
    end
  end

  # GET /ctactes/1
  # GET /ctactes/1.xml
  def show

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ctacte }
    end
  end

  # GET /ctactes/new
  # GET /ctactes/new.xml
  def new
    @ctacte = @local.ctactes.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ctacte }
    end
  end

  # GET /ctactes/1/edit
  def edit
    @ctacte = @local.ctactes.find(params[:id])
  end

  # POST /ctactes
  # POST /ctactes.xml
  def create
    @ctacte = @local.ctactes.build(params[:ctacte])

    respond_to do |format|
      if @ctacte.save
        format.html { redirect_to([@shopping, @local], :notice => 'Ctacte was successfully created.') }
        format.xml  { render :xml => @local, :status => :created, :location => @local }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ctacte.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ctactes/1
  # PUT /ctactes/1.xml
  def update
      respond_to do |format|
      if @ctacte.update_attributes(params[:ctacte])
        format.html { redirect_to(@local, :notice => 'Ctacte was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @local.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ctactes/1
  # DELETE /ctactes/1.xml
  def destroy
    @ctacte.destroy

    respond_to do |format|
      format.html { redirect_to([@shopping, @local]) }
      format.xml  { head :ok }
    end
  end

protected

  def find_shopping
    @shopping = Shopping.find(params[:shopping_id])
  end

  def find_local
    @local = @shopping.locals.find(params[:local_id])
  end

  def find_ctacte
    @ctacte = @local.ctactes.find(params[:id])
  end
end