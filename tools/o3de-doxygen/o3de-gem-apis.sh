#!/bin/bash

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

	SECTION="<h3>Sections</h3>\n<p>Refer to the following sections of the $API_NAME API Reference.</p>"
	BEGIN_TABLE="<table class="doxtable">\n<tr>\n<th>Section </th><th>Description </th></tr>\n<tr>"
	END_TABLE="</table>"
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
    

    find_pages
    find_modules
    find_namespace_list
    find_namespace_members
	find_annotated      # Sets $DOXY_ANNOTATED
	find_classes        # Sets $DOXY_CLASSES
    find_functions      # Sets $DOXY_FUNCTIONS
    find_hierarchy      # Sets $DOXY_HIERARCHY
    find_files
    find_file_members
    find_examples

    # Create the table of contents string
    # Difficult readability due to issues with multi-line vars and sed
	LINE="$SECTION$BEGIN_TABLE$DOXY_PAGES$DOXY_MODULES$DOXY_NAMESPACELIST$DOXY_NAMESPACEMEMBERS$DOXY_ANNOTATED$DOXY_CLASSES$DOXY_FUNCTIONS$DOXY_HIERARCHY$DOXY_FILELIST$DOXY_FILEMEMBERS$DOXY_EXAMPLES$END_TABLE"	

    # Find pattern in index.html and replace the line with $LINE
    # The pattern is first set in index.md, which doxygen uses to generate index.html files
	sed -i "/INSERT_TABLE/ c\\$LINE" $API_PATH/index.html

}

function test_generate_toc () {

	echo $API_PATH
	generate_toc
	echo "CLASSES=$CLASSES"
	echo "ANNOTATED=$ANNOTATED"
	echo "LINE=$LINE"
}

o3de_path=/workplace/chanmosq/o3de
gems=${o3de_path}/Gems
toc=gems_index.md
output_toc=build/${toc}
if [ ! -e "${output_toc%%/*}" ]; then
    mkdir -p ${output_toc%%/*}
fi
cp ${toc} ${output_toc}

for gem_path in `ls -1d ${gems}/*/`; do
    gem=`basename ${gem_path}`

    echo "* [${gem}](/docs/api/gems/${gem})" >> ${output_toc}

    config_file=`mktemp`
    index=index.md

    echo \
"
Welcome to the **Open 3D Engine (O3DE)** API Reference for the **${gem} Gem**!

INSERT_TABLE

Return to the [Gems API Reference](/docs/api/gems) index page. 
" > $index

    main_config="core-api-doxygen.config"
    if [ -e "${gem}.doxygen" ]; then
        main_config="${gem}.doxygen"
    fi

    cat $main_config >> $config_file
    echo PROJECT_NAME=\"Open 3D Engine ${gem} Gem API Reference\" >> $config_file
    echo OUTPUT_DIRECTORY=build/gems >> $config_file
    echo INPUT=$(fd -t d -X echo {} \; -- Include ${gem_path}) $index >> $config_file
    echo HTML_OUTPUT=${gem} >> $config_file
    echo STRIP_FROM_PATH=$o3de_path >> $config_file

    echo "${gem}: Using config ${config_file}, landing page ${index}"
    doxygen $config_file

    API_PATH=build/gems/${gem}
    API_NAME=${gem}
    generate_toc
done