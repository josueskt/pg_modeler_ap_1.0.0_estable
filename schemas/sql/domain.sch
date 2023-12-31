# SQL definition for domains
# CAUTION: Do not modify this file unless you know what you are doing.
# Code generation can be broken if incorrect changes are made.

[-- object: ] {name} [ | type: ] {sql-object} [ --] $br
[-- ] {drop}

# This is a special token that pgModeler recognizes as end of DDL command
# when exporting models directly to DBMS. DO NOT REMOVE THIS TOKEN!
%set {ddl-end} $br [-- ddl-end --] $br

%if {prepended-sql} %then
	{prepended-sql}
	{ddl-end} $br
%end

[CREATE DOMAIN ] {name} [ AS ] {type}

%if {collation} %then
	$br $tb [COLLATE ] {collation}
%end

%if {default-value} %then
	$br $tb [DEFAULT ] {default-value}
%end

%if {not-null} %then
	$br $tb [NOT NULL]
%end

%if {constraints} %then
	{constraints}
%end

;

{ddl-end}

%if {owner} %then {owner} %end
%if {comment} %then {comment} %end

%if {appended-sql} %then
	{appended-sql}
	{ddl-end}
%end

$br
