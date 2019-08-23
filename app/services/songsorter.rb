class Songsorter

    def initialize(list, sortval)
        @list = list
        @sortval = sortval

    end

    #I'll assume this comes in as an array
    def sort 

        # I mean... i kinda want to just keep it random... I'm not actually
        # sure where/how this would even receive a sort params... I definitely
        # didn't make that endpoint... and I don't 'C' it anywhere...
        # @list.sort_by { rand }

        if @sortval == "reverse"
            @list.reverse
        elsif @sortval == "random"
            @list.sort_by { rand }
        else
            @list
       
        end
        # seems my puts was killing my function...
        # puts @lsit


    end


end