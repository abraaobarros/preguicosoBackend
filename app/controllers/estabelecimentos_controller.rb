require 'open-uri'
class EstabelecimentosController < ApplicationController
  # GET /estabelecimentos
  # GET /estabelecimentos.json
  def index
    @estabelecimentos = Estabelecimento.all
    if @estabelecimentos.empty?
      uri = URI.parse("http://4.preguicosotest.appspot.com/preguicoso/controller?class=Estabelecimento&method=listAll&page=0&nPage=2")
      json = uri.open.read
      @json = JSON.parse(json)
      @json.shift
      @json.each do |j|
         item = Estabelecimento.new
         item.id = j["id"]
         item.key = j["nome"]
         item.logo_url = j["preco"]
         item.save
      end
    end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @estabelecimentos }
    end
  end

  # GET /estabelecimentos/1
  # GET /estabelecimentos/1.json
  def show
    @estabelecimento = Estabelecimento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @estabelecimento }
    end
  end

  # GET /estabelecimentos/new
  # GET /estabelecimentos/new.json
  def new
    @estabelecimento = Estabelecimento.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @estabelecimento }
    end
  end

  # GET /estabelecimentos/1/edit
  def edit
    @estabelecimento = Estabelecimento.find(params[:id])
  end

  # POST /estabelecimentos
  # POST /estabelecimentos.json
  def create
    @estabelecimento = Estabelecimento.new(params[:estabelecimento])

    respond_to do |format|
      if @estabelecimento.save
        format.html { redirect_to @estabelecimento, :notice => 'Estabelecimento was successfully created.' }
        format.json { render :json => @estabelecimento, :status => :created, :location => @estabelecimento }
      else
        format.html { render :action => "new" }
        format.json { render :json => @estabelecimento.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /estabelecimentos/1
  # PUT /estabelecimentos/1.json
  def update
    @estabelecimento = Estabelecimento.find(params[:id])

    respond_to do |format|
      if @estabelecimento.update_attributes(params[:estabelecimento])
        format.html { redirect_to @estabelecimento, :notice => 'Estabelecimento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @estabelecimento.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /estabelecimentos/1
  # DELETE /estabelecimentos/1.json
  def destroy
    @estabelecimento = Estabelecimento.find(params[:id])
    @estabelecimento.destroy

    respond_to do |format|
      format.html { redirect_to estabelecimentos_url }
      format.json { head :no_content }
    end
  end
end
