capture program drop grapht
program grapht
	*Parse the command.
		syntax [anything] [if] [in] [, title(string asis) subtitle(string asis) legend(string asis) xtitle(string asis) /*
			*/ ytitle(string asis) *]
	*Add a comma if there are no options specified.
		if `"`title'`subtitle'`legend'`xtitle'`ytitle'`options'"' == "" local 0 `0',
	*Title.
		*Case 1:  The title has no options.
		if 		`"`title'"' != "" & strpos(`"`title'"', ",") == 0 {
			local 0 = subinstr(`"`0'"', `"`title'"', `"`title', span bexpand justification(left)"', .)
		}
		*Case 2:  The title has options, but they aren't related to the default options.
		else if `"`title'"' != "" & strpos(`"`title'"', ",") != 0 & strpos(`"`title'"', "justification") == 0 /*
			*/& strpos(`"`title'"', "span") == 0 & strpos(`"`title'"', "bexpand") == 0 {
			local 0 = subinstr(`"`0'"', `"`title'"', `"`title' span bexpand justification(left)"', .)
		}
		*Case 3:  The title has options and one is the justification option.
		else if `"`title'"' != "" & strpos(`"`title'"', ",") != 0 & strpos(`"`title'"', "justification") != 0 /*
			*/& strpos(`"`title'"', "span") == 0 & strpos(`"`title'"', "bexpand") == 0 {
			local 0 = subinstr(`"`0'"', `"`title'"', `"`title' span bexpand"', .)
		}
		*Case 4:  The title has options and one is the nospan option.
		else if `"`title'"' != "" & strpos(`"`title'"', ",") != 0 & strpos(`"`title'"', "justification") == 0 /*
			*/& strpos(`"`title'"', "span") != 0 & strpos(`"`title'"', "bexpand") == 0 {
			local 0 = subinstr(`"`0'"', `"`title'"', `"`title' bexpand justification(left)"', .)
		}
		*Case 5:  The title has options and one is the nobexpand option.
		else if `"`title'"' != "" & strpos(`"`title'"', ",") != 0 & strpos(`"`title'"', "justification") == 0 /*
			*/& strpos(`"`title'"', "span") == 0 & strpos(`"`title'"', "bexpand") != 0 {
			local 0 = subinstr(`"`0'"', `"`title'"', `"`title' span justification(left)"', .)
		}
		*Case 6: The title has options and two are the justification and nospan options.
		else if `"`title'"' != "" & strpos(`"`title'"', ",") != 0 & strpos(`"`title'"', "justification") != 0 /*
			*/& strpos(`"`title'"', "span") != 0 & strpos(`"`title'"', "bexpand") == 0 {
			local 0 = subinstr(`"`0'"', `"`title'"', `"`title' bexpand"', .)
		}
		*Case 7: The title has options and two are the justification and nobexpand options.
		else if `"`title'"' != "" & strpos(`"`title'"', ",") != 0 & strpos(`"`title'"', "justification") != 0 /*
			*/& strpos(`"`title'"', "span") == 0 & strpos(`"`title'"', "bexpand") != 0 {
			local 0 = subinstr(`"`0'"', `"`title'"', `"`title' span"', .)
		}
		*Case 8: The title has options and two are the nospan and nobexpand options.
		else if `"`title'"' != "" & strpos(`"`title'"', ",") != 0 & strpos(`"`title'"', "justification") == 0 /*
			*/& strpos(`"`title'"', "span") != 0 & strpos(`"`title'"', "bexpand") != 0 {
			local 0 = subinstr(`"`0'"', `"`title'"', `"`title' justification(left)"', .)
		}	
	*Subtitle.
		*Case 1:  The subtitle has no options.
		if 		`"`subtitle'"' != "" & strpos(`"`subtitle'"', `"","') == 0 {
			local 0 = subinstr(`"`0'"', `"`subtitle'"', `"`subtitle', span bexpand justification(left)"', .)
		}
		*Case 2:  The subtitle has options, but they aren't related to the default options.
		else if `"`subtitle'"' != "" & strpos(`"`subtitle'"', `"","') != 0 & strpos(`"`subtitle'"', "justification") == 0 /*
			*/& strpos(`"`subtitle'"', "span") == 0 & strpos(`"`subtitle'"', "bexpand") == 0 {
			local 0 = subinstr(`"`0'"', `"`subtitle'"', `"`subtitle' span bexpand justification(left)"', .)
		}
		*Case 3:  The subtitle has options and one is the justification option.
		else if `"`subtitle'"' != "" & strpos(`"`subtitle'"', `"","') != 0 & strpos(`"`subtitle'"', "justification") != 0 /*
			*/& strpos(`"`subtitle'"', "span") == 0 & strpos(`"`subtitle'"', "bexpand") == 0 {
			local 0 = subinstr(`"`0'"', `"`subtitle'"', `"`subtitle' span bexpand"', .)
		}
		*Case 4:  The subtitle has options and one is the nospan option.
		else if `"`subtitle'"' != "" & strpos(`"`subtitle'"', `"","') != 0 & strpos(`"`subtitle'"', "justification") == 0 /*
			*/& strpos(`"`subtitle'"', "span") != 0 & strpos(`"`subtitle'"', "bexpand") == 0 {
			local 0 = subinstr(`"`0'"', `"`subtitle'"', `"`subtitle' bexpand justification(left)"', .)
		}
		*Case 5:  The subtitle has options and one is the nobexpand option.
		else if `"`subtitle'"' != "" & strpos(`"`subtitle'"', `"","') != 0 & strpos(`"`subtitle'"', "justification") == 0 /*
			*/& strpos(`"`subtitle'"', "span") == 0 & strpos(`"`subtitle'"', "bexpand") != 0 {
			local 0 = subinstr(`"`0'"', `"`subtitle'"', `"`subtitle' span justification(left)"', .)
		}
		*Case 6: The subtitle has options and two are the justification and nospan options.
		else if `"`subtitle'"' != "" & strpos(`"`subtitle'"', `"","') != 0 & strpos(`"`subtitle'"', "justification") != 0 /*
			*/& strpos(`"`subtitle'"', "span") != 0 & strpos(`"`subtitle'"', "bexpand") == 0 {
			local 0 = subinstr(`"`0'"', `"`subtitle'"', `"`subtitle' bexpand"', .)
		}
		*Case 7: The subtitle has options and two are the justification and nobexpand options.
		else if `"`subtitle'"' != "" & strpos(`"`subtitle'"', `"","') != 0 & strpos(`"`subtitle'"', "justification") != 0 /*
			*/& strpos(`"`subtitle'"', "span") == 0 & strpos(`"`subtitle'"', "bexpand") != 0 {
			local 0 = subinstr(`"`0'"', `"`subtitle'"', `"`subtitle' span"', .)
		}
		*Case 8: The subtitle has options and two are the nospan and nobexpand options.
		else if `"`subtitle'"' != "" & strpos(`"`subtitle'"', `"","') != 0 & strpos(`"`subtitle'"', "justification") == 0 /*
			*/& strpos(`"`subtitle'"', "span") != 0 & strpos(`"`subtitle'"', "bexpand") != 0 {
			local 0 = subinstr(`"`0'"', `"`subtitle'"', `"`subtitle' justification(left)"', .)
		}	
	*Legend.
		*Case 1:  The legend option isn't specified. Turn it off.
		if `"`legend'"' == "" {
			local 0 `0' legend(off)
		}
		*Case 2:  The legend is specified but doesn't have a position specified.
		else if `"`legend'"' != "" & strpos(`"`legend'"', `"ring("') == 0 & strpos(`"`legend'"', `"position("') == 0 {
			local 0 = subinstr(`"`0'"', `"`legend'"', `"`legend' ring(0) position(11)"', .)
		}
		*Case 3:  The legend is specified and has a position specified.
		else if `"`legend'"' != "" & strpos(`"`legend'"', `"ring("') == 0 & strpos(`"`legend'"', `"position("') != 0 {
			local 0 = subinstr(`"`0'"', `"`legend'"', `"`legend' ring(0)"', .)
		}
	*Axis titles.
		if `"`xtitle'"' == "" {
			local 0 `0' xtitle("")
		}
		if `"`ytitle'"' == "" {
			local 0 `0' ytitle("")
		}
	*Create graph.
// 	noisily display `"`0'"'
		`0'
end
























