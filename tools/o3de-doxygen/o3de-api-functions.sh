#!/bin/bash

# TOC_PATTERN exists in index.html files to mark a placeholder for the Table of Contents (TOC) table.
# It's automatically written to index.md template, which is used to generate index.html files.
# It may also be manually added to code comments, by using the Doxygen /mainpage command.
TOC_PATTERN=o3de-doxygen-insert-table

# Link to Related Pages page
function find_pages() {
	local line="<td><a href=\"pages.html\">Related Pages</a> </td><td>The list related documentation pages. </td></tr>"
	[ -f $API_PATH/pages.html ] && DOXY_PAGES=$line || DOXY_ANNOTATED=""
}

function find_modules() {
	local line="<td><a href=\"modules.html\">Modules</a> </td><td>The list all modules. </td></tr>"
	[ -f $API_PATH/modules.html ] && DOXY_MODULES=$line || DOXY_ANNOTATED=""
}

# Link to Namespaces List page
function find_namespace_list() {
	local line="<td><a href=\"namespaces.html\">Namespace List</a> </td><td>The list all documented namedspaces. </td></tr>"
	[ -f $API_PATH/namespaces.html ] && DOXY_NAMESPACELIST=$line || DOXY_ANNOTATED=""
}

# Link to Namespaces Members page
function find_namespace_members() {
	local line="<td><a href=\"namespacemembers.html\">Namespace Members</a> </td><td>The list all documented namedspace members. </td></tr>"
	[ -f $API_PATH/namespacemembers.html ] && DOXY_NAMESPACEMEMBERS=$line || DOXY_ANNOTATED=""
}

# Link to Class List page
function find_annotated() {
	local line="<td><a href=\"annotated.html\">Class List</a> </td><td>The list of classes, structs, unions, and interfaces. </td></tr>"
	[ -f $API_PATH/classes.html ] && DOXY_ANNOTATED=$line || DOXY_ANNOTATED=""
}

# Link to Class Index page
function find_classes() {
	local line="<td><a href=\"classes.html\">Class Index</a> </td><td>The list of classes, structs, unions, and interfaces. </td></tr>"
	[ -f $API_PATH/classes.html ] && DOXY_CLASSES=$line || DOXY_CLASSES=""
}

# Link to Class Members page
function find_functions() {
	local line="<td><a href=\"functions.html\">Class Members</a> </td><td>The list of class members. </td></tr>"
	[ -f $API_PATH/functions.html ] && DOXY_FUNCTIONS=$line || DOXY_FUNCTIONS=""
}

# Link to Class Hierarchy page
function find_hierarchy() {
	local line="<td><a href=\"hierarchy.html\">Class Hierarchy</a> </td><td>The class hierarchy based on inheritance. </td></tr>"
	[ -f $API_PATH/hierarchy.html ] && DOXY_HIERARCHY=$line || DOXY_HIERARCHY=""
}

# Link to File List page
function find_files() {
	local line="<td><a href=\"files.html\">File List</a> </td><td>The list of all documented files. </td></tr>"
	[ -f $API_PATH/files.html ] && DOXY_FILELIST=$line || DOXY_HIERARCHY=""
}

# Link to File List page
function find_file_members() {
	local line="<td><a href=\"globals.html\">File Members</a> </td><td>The list of all documented file members. </td></tr>"
	[ -f $API_PATH/globals.html ] && DOXY_FILEMEMBERS=$line || DOXY_HIERARCHY=""
}

# Link to File List page
function find_examples() {
	local line="<td><a href=\"examples.html\">File Members</a> </td><td>The list of all documented examples. </td></tr>"
	[ -f $API_PATH/examples.html ] && DOXY_EXAMPLES=$line || DOXY_HIERARCHY=""
}

function generate_toc () {
	API_PATH="$1"
	API_NAME="$2"	

	SECTION="<h3>Sections</h3>\n<p>Refer to the following sections of the $API_NAME API Reference.</p>"
	BEGIN_TABLE="<table class="doxtable">\n<tr>\n<th>Section </th><th>Description </th></tr>\n<tr>"
	END_TABLE="</table>"

	# To hold links to generated pages
	DOXY_PAGES=""
    DOXY_MODULES=""
    DOXY_NAMESPACELIST=""
    DOXY_NAMESPACEMEMBERS=""    
    DOXY_ANNOTATED=""
	DOXY_CLASSES=""
    DOXY_FUNCTIONS=""
    DOXY_HIERARCHY=""
    DOXY_FILELIST=""
    DOXY_FILEMEMBERS=""
    DOXY_EXAMPLES=""
    
	# Set links to DOXY_ variables
    find_pages
    find_modules
    find_namespace_list
    find_namespace_members
	find_annotated      		# Sets $DOXY_ANNOTATED
	find_classes        		# Sets $DOXY_CLASSES
    find_functions      		# Sets $DOXY_FUNCTIONS
    find_hierarchy      		# Sets $DOXY_HIERARCHY
    find_files
    find_file_members
    find_examples

    # Create the table of contents string
    # This is in one line due to issues using multi-line vars with sed
	LINE="$SECTION$BEGIN_TABLE$DOXY_PAGES$DOXY_MODULES$DOXY_NAMESPACELIST$DOXY_NAMESPACEMEMBERS$DOXY_ANNOTATED$DOXY_CLASSES$DOXY_FUNCTIONS$DOXY_HIERARCHY$DOXY_FILELIST$DOXY_FILEMEMBERS$DOXY_EXAMPLES$END_TABLE"	

    # Find $PATTERN in index.html and replace with $LINE
	sed -i "/$TOC_PATTERN/ c\\$LINE" $API_PATH/index.html

}