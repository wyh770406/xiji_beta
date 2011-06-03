module Adminpanel::EndProductsHelper
  def middle_product_form_column(record,input_name)
    @option_str="<option></option>"

    if @operate=="new"

      @option_str = options_from_collection_for_select(MiddleProduct.find(:all).collect,"id", "name",@middle_id)

    else
      @option_str = options_from_collection_for_select(MiddleProduct.find(:all).collect,"id", "name",record.middle_product_id)
    end
      select_tag input_name+ '[id]',@option_str,:disabled=>true
  end


end
