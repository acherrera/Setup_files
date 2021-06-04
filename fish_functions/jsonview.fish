function jsonview
    # Reformat, output, open in split with vim
    set outfile /tmp/(date +%s)_reformat.json
    python3 -mjson.tool $argv >$outfile
    vim -O $argv $outfile
end
