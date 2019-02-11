module SchedulesHelper
	def dayofweek(num)
		case num
			when 1 
				@day = 'Lunes'
			when 2 
				@day = 'Martes'
			when 3 
				@day = 'Miercoles'
			when 4 
				@day = 'Jueves'
			when 5 
				@day = 'Viernes'
			when 6 
				@day = 'Sabado'
			when 7 
				@day = 'Domingo'
		end
		return @day
	end
end
