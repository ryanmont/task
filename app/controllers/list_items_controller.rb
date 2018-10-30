class ListItemsController < ApplicationController
# before_action :set_list_item, only: [:show, :edit, :update, :destroy, :toggle_status]
  def toggle_status

    
    @list_item=ListItem.all

     if 
     @list_items.incomplete?.present?
     @list_items.complete!

   elsif
    @list_items.complete?.present?
    @list_items.incomplete!
  end

    redirect_to @list
  end



    # def set_list_item
    #   @list_item = ListItem.find(params[:id])
    # end

end
