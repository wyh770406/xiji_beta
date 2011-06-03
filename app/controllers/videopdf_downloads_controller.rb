class VideopdfDownloadsController < ApplicationController
  def index

    @videopdf_downloads = VideopdfDownload.paginate(:all,
      :conditions=>["videopdf_downloads.download_type = ?","video"],
      :page => params[:page],
      :per_page => 9,:order=>'created_at desc')
   #   @top_product.product_details

  end

  def show
    @videopdf_download = VideopdfDownload.find(params[:id])
  end

  def pdf_list
    @videopdf_downloads = VideopdfDownload.paginate(:all,
      :conditions=>["videopdf_downloads.download_type = ?","pdf"],
      :page => params[:page],
      :per_page => 12,:order=>'created_at desc')
  end
end