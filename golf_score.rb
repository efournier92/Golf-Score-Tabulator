sep1 = "**************************************"
sep2 = "-------------------------------------"
par_total = 0
score_total = 0
scorecard = [
{hole: 1, par: 5, score: 7},
{hole: 2, par: 4, score: 5},
{hole: 3, par: 3, score: 3},
{hole: 4, par: 4, score: 4},
{hole: 5, par: 4, score: 4},
{hole: 6, par: 3, score: 2},
{hole: 7, par: 4, score: 5},
{hole: 8, par: 5, score: 5},
{hole: 9, par: 4, score: 5},
{hole: 10, par: 5, score: 7},
{hole: 11, par: 4, score: 4},
{hole: 12, par: 4, score: 4},
{hole: 13, par: 3, score: 3},
{hole: 14, par: 4, score: 5},
{hole: 15, par: 4, score: 4},
{hole: 16, par: 4, score: 4},
{hole: 17, par: 3, score: 3},
{hole: 18, par: 5, score: 6},
]
puts "#{sep1}\nHOLE    PAR    SCORE     OVER/UNDR\n#{sep2}"
scorecard.each do |hole_hash|
  differential = hole_hash[:par] - hole_hash[:score]
  if differential == 0
    differential = "  ON PAR"
  elsif differential < 0
    differential = "#{differential.abs} OVER PAR"
  else
    differential = "#{differential} UNDR PAR"
  end
  puts " #{"%02d" % hole_hash[:hole]}\
      #{hole_hash[:par]}       #{hole_hash[:score]}\
       #{differential}"
  par_total += hole_hash[:par]
  score_total += hole_hash[:score]
end
print "#{sep2}\nTOTAL:  #{par_total}      #{score_total}"
differential_total = par_total - score_total
  if differential_total == 0
    puts "         ON PAR"
  elsif differential_total < 0
    puts "       #{differential_total.abs} OVER PAR"
  else
    puts "       #{differential_total} UNDR PAR"
  end
puts sep1
