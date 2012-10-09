require 'open-uri'
class ItemCardapiosController < ApplicationController
  # GET /item_cardapios
  # GET /item_cardapios.json
  def index
    @item_cardapios = ItemCardapio.all
    if @item_cardapios.empty?
      uri = URI.parse("http://4.preguicosotest.appspot.com/preguicoso/controller?class=ItemCardapio&method=listAll&page=0&nPage=358")
      json = uri.open.read
      @json = JSON.parse(json)
      @json.shift
      @json.each do |j|
         item = ItemCardapio.new(:name_pt => j["nome"], :description_pt => j["descricao"])
         item.key = j["id"]
         item.price = j["preco"]
         item.category = j["categoria"]
         item.estabelecimento_id = j["estabelecimentoId"]
         item.save
      end
    end
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @item_cardapios }
    end
  end

  # GET /item_cardapios/1
  # GET /item_cardapios/1.json
  def show
    @item_cardapio = ItemCardapio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @item_cardapio }
    end
  end

  # GET /item_cardapios/new
  # GET /item_cardapios/new.json
  def new
    @item_cardapio = ItemCardapio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @item_cardapio }
    end
  end

  # GET /item_cardapios/1/edit
  def edit
    @item_cardapio = ItemCardapio.find(params[:id])
  end

  # POST /item_cardapios
  # POST /item_cardapios.json
  def create
    @item_cardapio = ItemCardapio.new(params[:item_cardapio])

    respond_to do |format|
      if @item_cardapio.save
        format.html { redirect_to @item_cardapio, :notice => 'Item cardapio was successfully created.' }
        format.json { render :json => @item_cardapio, :status => :created, :location => @item_cardapio }
      else
        format.html { render :action => "new" }
        format.json { render :json => @item_cardapio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /item_cardapios/1
  # PUT /item_cardapios/1.json
  def update
    @item_cardapio = ItemCardapio.find(params[:id])

    respond_to do |format|
      if @item_cardapio.update_attributes(params[:item_cardapio])
        format.html { redirect_to @item_cardapio, :notice => 'Item cardapio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @item_cardapio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /item_cardapios/1
  # DELETE /item_cardapios/1.json
  def destroy
    @item_cardapio = ItemCardapio.find(params[:id])
    @item_cardapio.destroy

    respond_to do |format|
      format.html { redirect_to item_cardapios_url }
      format.json { head :no_content }
    end
  end
end
