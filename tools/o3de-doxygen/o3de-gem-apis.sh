#!/bin/bash

# Relative path to this script
REL_PATH=${BASH_SOURCE%/*}

source  ${REL_PATH}/o3de-api-functions.sh
source ${REL_PATH}/config.sh

# Path to output generated files
OUTPUT_DIRECTORY=${O3DEORG_PATH}/gems  

# Path to source code
GEMS=${O3DE_PATH}/Gems

# Gems API landing page template
LANDING_TEMPLATE=${REL_PATH}/gems_index.md

# File to output LANDING_TEMPLATE
OUTPUT_TOC=${O3DEORG_PATH}/content/gems/_index.md

echo "Create Gems API landing page (https://www.o3de.org/docs/api/gems/):" ${OUTPUT_TOC}
if [ ! -e "${OUTPUT_TOC%/*}" ]; then
    mkdir -p "${OUTPUT_TOC%/*}"
fi
cp ${LANDING_TEMPLATE} ${OUTPUT_TOC}

echo "Clean output directory: " ${OUTPUT_DIRECTORY}
if [ -d ${OUTPUT_DIRECTORY} ]; then
    rm -r ${OUTPUT_DIRECTORY}
fi

echo "Generate a set of API docs for each Gem"
for gem_path in `ls -1d ${GEMS}/*/`; do

    # Configure and run Doxygen

    gem=`basename ${gem_path}`

    echo "* [${gem}](/docs/api/gems/${gem})" >> ${OUTPUT_TOC}

    config_file=`mktemp`
    index=${REL_PATH}/index.md

    echo \
    "
    Welcome to the **Open 3D Engine (O3DE)** API Reference for the **${gem} Gem**!

    $TOC_PATTERN

    Return to the [Gems API Reference](/docs/api/gems) index page. 
    " > $index

    main_config="${REL_PATH}/core-api-doxygen.config"
    if [ -e "${gem}.doxygen" ]; then
        main_config="${gem}.doxygen"
    fi

    cat $main_config >> $config_file
    echo PROJECT_NAME=\"Open 3D Engine ${gem} Gem API Reference\" >> $config_file
    echo PROJECT_NUMBER=${PROJECT_NUMBER} >> $config_file
    echo OUTPUT_DIRECTORY=${OUTPUT_DIRECTORY} >> $config_file
    echo INPUT=${gem_path} $index >> $config_file
    echo HTML_OUTPUT=${gem} >> $config_file
    echo STRIP_FROM_PATH=$O3DE_PATH >> $config_file

    echo "${gem}: Using config ${config_file}, landing page ${index}"

    doxygen $config_file

    # Post-process generated files

    generate_toc "${OUTPUT_DIRECTORY}/${gem}" "${gem}"

done