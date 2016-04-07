SEP = "**************************************"
LNE = "-------------------------------------"

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

par_total = 0
score_total = 0
puts "#{SEP}\nHOLE    PAR    SCORE     OVER/UNDR\n#{LNE}"
scorecard.each do |hole_hash|
  diff = hole_hash[:par] - hole_hash[:score]
  if diff == 0
    diff = "  ON PAR"
  elsif diff < 0
    diff = "#{diff.abs} OVER PAR"
  else
    diff = "#{diff} UNDR PAR"
  end
  puts " #{"%02d" % hole_hash[:hole]}\
      #{hole_hash[:par]}       #{hole_hash[:score]}\
       #{diff}"
  par_total += hole_hash[:par]
  score_total += hole_hash[:score]
end

print "#{LNE}\nTOTAL:  #{par_total}      #{score_total}"
diff_total = par_total - score_total
  if diff_total == 0
    puts "         ON PAR"
  elsif diff_total < 0
    puts "       #{diff_total.abs} OVER PAR"
  else
    puts "       #{diff_total} UNDR PAR"
  end
puts SEP
