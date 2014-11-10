#BMI no keisan

def getBMI(h,w)
	

	h = h * h
	bmi = w / h

	return bmi.to_f

end

def iData

	puts "身長を入力してください\n"
	height = gets.to_f

		if height == 0

			print "半角数字で入力してください\n"
			iData()

		end

	puts "体重を入力してください\n"
	weight = gets.to_f

		if weight == 0

			print "半角数字で入力してください\n"
			iData()

		end


	height = height / 100
	oData(height,weight)

end


def oData(height,weight)

	bmi = getBMI(height,weight)
	
	
	print "あなたのBMI指数は[",bmi,"]です\n"
	print "あなたの診断結果は...\n\n"
	
	sleep(3)

		if bmi < 18.5

			print "あなたは低体重です！"

		elsif bmi > 18.5 && bmi < 25.0

			print "あなたは標準です"

		elsif bmi > 25.0 && bmi < 29.0

			print "あなたは標準より太っています"

		elsif bmi > 29.0

			print "太りすぎ！！！！！！！"

		end
end
iData()

