class SongSorter

    def initialize(list, sortval)
        @list = list
        @sortval = sortval

    end

    #I'll assume this comes in as an array
    def sort 

        #Not sure what the sort type would be just yet...

        list.sort_by { rand }

        puts list

    end


end