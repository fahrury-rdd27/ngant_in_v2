module MenusHelper

	def allow_product_delete?(product)
		return false unless current_warung
		@menu.warung_id == current_warung.id
	end
end
