class TestdbsController < ApplicationController
  # GET /testdbs
  # GET /testdbs.xml
  def index
    @testdbs = Testdb.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @testdbs }
    end
  end

  # GET /testdbs/1
  # GET /testdbs/1.xml
  def show
    @testdb = Testdb.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @testdb }
    end
  end

  # GET /testdbs/new
  # GET /testdbs/new.xml
  def new
    @testdb = Testdb.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @testdb }
    end
  end

  # GET /testdbs/1/edit
  def edit
    @testdb = Testdb.find(params[:id])
  end

  # POST /testdbs
  # POST /testdbs.xml
  def create
    @testdb = Testdb.new(params[:testdb])

    respond_to do |format|
      if @testdb.save
        format.html { redirect_to(@testdb, :notice => 'Testdb was successfully created.') }
        format.xml  { render :xml => @testdb, :status => :created, :location => @testdb }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @testdb.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /testdbs/1
  # PUT /testdbs/1.xml
  def update
    @testdb = Testdb.find(params[:id])

    respond_to do |format|
      if @testdb.update_attributes(params[:testdb])
        format.html { redirect_to(@testdb, :notice => 'Testdb was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @testdb.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /testdbs/1
  # DELETE /testdbs/1.xml
  def destroy
    @testdb = Testdb.find(params[:id])
    @testdb.destroy

    respond_to do |format|
      format.html { redirect_to(testdbs_url) }
      format.xml  { head :ok }
    end
  end
end
