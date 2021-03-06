source('aa.codes.R')

AAs = c(
	'ALA',
	'CYS',
	'ASP',
	'GLU',
	'PHE',
	'GLY',
	'HIS',
	'ILE',
	'LYS',
	'LEU',
	'MET',
	'ASN',
	'PRO',
	'GLN',
	'ARG',
	'SER',
	'THR',
	'VAL',
	'TRP',
	'TYR'
)

NONPOLAR = c(
	'ALA',
	'PHE',
	'ILE',
	'LEU',
	'MET',
	'VAL',
	'TRP'
)

POLAR = c(
	'ASP',
	'GLU',
	'HIS',
	'LYS',
	'ASN',
	'GLN',
	'ARG',
	'SER',
	'THR',
	'TYR'
)

CHARGED = c(
	'ASP',
	'ARG',
	'GLU',
	'LYS'
)

wt_nonpolar =   function(wt,mut){threeletter(wt) %in% NONPOLAR}
wt_polar =      function(wt,mut){threeletter(wt) %in% POLAR}
wt_charged =    function(wt,mut){threeletter(wt) %in% CHARGED}
wt_glycine =    function(wt,mut){threeletter(wt) == 'GLY'}
wt_proline =    function(wt,mut){threeletter(wt) == 'PRO'}
wt_cysteine =   function(wt,mut){threeletter(wt) == 'CYS'}
to_nonpolar =   function(wt,mut){threeletter(mut) %in% NONPOLAR}
to_polar =      function(wt,mut){threeletter(mut) %in% POLAR}
to_charged =    function(wt,mut){threeletter(mut) %in% CHARGED}
to_glycine =    function(wt,mut){threeletter(mut) == 'GLY'}
to_proline =    function(wt,mut){threeletter(mut) == 'PRO'}
to_cysteine =   function(wt,mut){threeletter(mut) == 'CYS'}
pol_to_nonpol = function(wt,mut){threeletter(wt) %in% POLAR & threeletter(mut) %in% NONPOLAR}
nonpol_to_pol = function(wt,mut){threeletter(wt) %in% NONPOLAR & threeletter(mut) %in% POLAR}

AA.cats = list(
	'all' =               list(col="#00000066", fxn= function(wt,mut){TRUE}),
	'wt_nonpolar' =       list(col="#880000AA", fxn= wt_nonpolar),
	'wt_polar' =          list(col="#008800AA", fxn= wt_polar),
	'wt_charged' =        list(col="#000088AA", fxn= wt_charged),
	'wt_glycine' =        list(col="#880088AA", fxn= wt_glycine),
	'wt_proline' =        list(col="#888800AA", fxn= wt_proline),
	'wt_cysteine' =       list(col="#880088AA", fxn= wt_cysteine),
	'to_nonpolar' =       list(col="#880000AA", fxn= to_nonpolar),
	'to_polar' =          list(col="#008800AA", fxn= to_polar),
	'to_charged' =        list(col="#000088AA", fxn= to_charged),
	'to_glycine' =        list(col="#880088AA", fxn= to_glycine),
	'to_proline' =        list(col="#888800AA", fxn= to_proline),
	'to_cysteine' =       list(col="#880088AA", fxn= to_cysteine),
	'polar-to-nonpolar' = list(col="#008888AA", fxn= pol_to_nonpol),
	'nonpolar-to-polar' = list(col="#884400AA", fxn= nonpol_to_pol)
)
