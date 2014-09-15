# first step to shift the subtitle 

# slice the strings of the timecode to find hours/minutes and seconds and convert them to integers
class SRTProcessing

 def shift_time(string, shift)
   hours=string.slice(0,2).to_i
   minutes=string.slice(3,2).to_i
   seconds=string.slice(6,2).to_i
   milisec=string.slice(9,3).to_i
   # add the different units of time to find out the sum of milliseconds AND add the shift in milliseconds
   new_time = milisec + seconds*1000 + minutes*60*1000 + hours*60*60*1000 + shift
   # convert to seconds
   new_seconds = (new_time/1000).to_i
   # recreate the old format
   Time.at(new_seconds).strftime("%H:%M:%S") + "," + (new_time - new_seconds*1000).to_s
 end

 def shift_line(line, time_ms) 
  # for each part of the line: split the line
   parts_of_line = line.split(" ")
   parts_of_line[0] = shift_time(parts_of_line[0],time_ms)
   parts_of_line[2] = shift_time(parts_of_line[2],time_ms)
   parts_of_line.join(" ") + "\n"
 end
 def shift_file(file, time_ms)
   # create the array lines and out in the files lines
   lines = IO.readlines(file)

   new_lines=[]
   lines.each do |line|
    # online process the lines that has time because it has an arrow
     if line.include?("-->") then line = shift_line(line, time_ms)  end
     new_lines << line
     puts new_lines
   end
   write_file(file,new_lines)
 end
# write the file
 def write_file(file,lines)
     IO.write("new_srt.srt", lines.join)
     
 end
end

#create new object
srtfile=SRTProcessing.new()
srtfile.shift_file("sample1.srt", 5*60*1000) 



# class CheckForWord


#   def findWord(searchFor)

#     if line.include?(searchFor)  

#   end


# end  