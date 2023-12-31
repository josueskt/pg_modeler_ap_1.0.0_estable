# SQL definition for comments
# CAUTION: Do not modify this file unless you know what you are doing.
# Code generation can be broken if incorrect changes are made.

%if {comment} %or ({comment}=="unset") %then
	[COMMENT ON ] {sql-object} $sp 

	%if ({sql-object}=="CONSTRAINT") %or ({sql-object}=="TRIGGER") %or 
		({sql-object}=="RULE") %or ({sql-object}=="POLICY")  %then
		{name} [ ON ] {table}
	%else
		{signature} 
	%end

	[ IS ]

	%if ({comment}=="unset") %then
		''
	%else
		%if {escape-comment} %then E %end
		'{comment}'
	%end

	; $br

	# This is a special token that pgModeler recognizes as end of DDL command
	# when exporting models directly to DBMS. DO NOT REMOVE THIS TOKEN!
	[-- ddl-end --] $br
%end
