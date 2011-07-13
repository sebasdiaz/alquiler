class LocalsController < ApplicationController
  before_filter :find_shopping
  before_filter :find_local, :except => [:index, :new, :create]

  # GET /locals
  # GET /locals.xml
  def index
    @locals = @shopping.locals.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @locals }
    end
  end
  
  # GET /locals/1
  # GET /locals/1.xml
  def show
    @local = @shopping.locals.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @local }
    end
  end

  # GET /locals/new
  # GET /locals/new.xml
  def new
    @local = @shopping.locals.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @local }
    end
  end

  # GET /locals/1/edit
  def edit
  end

  # POST /locals
  # POST /locals.xml
  def create
    @local = @shopping.locals.build(params[:local])

    respond_to do |format|
      if @local.save
        format.html { redirect_to([@shopping], :notice => 'Local was successfully created.') }
        format.xml  { render :xml => @local, :status => :created, :location => [@shopping] }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @local.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /locals/1
  # PUT /locals/1.xml
  def update

    respond_to do |format|
      if @local.update_attributes(params[:local])
        format.html { redirect_to(@local, :notice => 'Local was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @local.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /locals/1
  # DELETE /locals/1.xml
  def destroy
    @local.destroy

    respond_to do |format|
      format.html { redirect_to(shopping_url(@shopping)) }
      format.xml  { head :ok }
    end
  end

  protected

  def find_shopping
    @shopping = Shopping.find(params[:shopping_id])
  end

  def find_local
    @local = @shopping.locals.find(params[:id])
  end
end
