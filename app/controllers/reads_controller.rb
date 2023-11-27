class ReadsController < ApplicationController

  def index
    @reads = Read.all
    @read = Read.new

  end
  
  def new
    @read = Read.new
  end

  def show
    @read = Read.find(params[:id])

  end

  def create
    @read = Read.new(read_parameter)

    if @read.save
      redirect_to reads_path, notice: '投稿が保存されました'
    else
      render 'new'
    end
  end

  def destroy
    @read = Read.find(params[:id])
    @read.destroy
    redirect_to reads_path, notice:"削除しました"
  end

  def edit
    @read = Read.find(params[:id])
  end

  def update
    @read = Read.find(params[:id])
    if @read.update(read_parameter)
      redirect_to reads_path, notice: "編集しました"
    else
      render 'edit'
    end
  end

  private

  def read_parameter
    params.require(:read).permit(:title, :content)
  end

end
