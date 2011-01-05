class Testdb2sController < ApplicationController
  # GET /testdb2s
  # GET /testdb2s.xml
  def index
    @testdb2s = Testdb2.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @testdb2s }
    end
  end

  # GET /testdb2s/1
  # GET /testdb2s/1.xml
  def show
    @testdb2 = Testdb2.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @testdb2 }
    end
  end

  # GET /testdb2s/new
  # GET /testdb2s/new.xml
  def new
    @testdb2 = Testdb2.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @testdb2 }
    end
  end

  # GET /testdb2s/1/edit
  def edit
    @testdb2 = Testdb2.find(params[:id])
  end

  # POST /testdb2s
  # POST /testdb2s.xml
  def create
    @testdb2 = Testdb2.new(params[:testdb2])

    respond_to do |format|
      if @testdb2.save
        format.html { redirect_to(@testdb2, :notice => 'Testdb2 was successfully created.') }
        format.xml  { render :xml => @testdb2, :status => :created, :location => @testdb2 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @testdb2.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /testdb2s/1
  # PUT /testdb2s/1.xml
  def update
    @testdb2 = Testdb2.find(params[:id])

    respond_to do |format|
      if @testdb2.update_attributes(params[:testdb2])
        format.html { redirect_to(@testdb2, :notice => 'Testdb2 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @testdb2.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /testdb2s/1
  # DELETE /testdb2s/1.xml
  def destroy
    @testdb2 = Testdb2.find(params[:id])
    @testdb2.destroy

    respond_to do |format|
      format.html { redirect_to(testdb2s_url) }
      format.xml  { head :ok }
    end
  end
end
