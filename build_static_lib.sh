MP_EMBED_DIR="micropython_embed"
BUILD_DIR="build"
CMAKE_OPTS=

if [ ! -d "${MP_EMBED_DIR}" ]; then
    echo "building micropython embed port"
    make -f micropython_embed.mk
fi


if [ -d "${BUILD_DIR}" ];
then
    echo "resetting cmake build dir and removing '${BUILD_DIR}' directory"
    rm -rf "${BUILD_DIR}"
fi


echo "building embedded micropython example shared-libs variant with cmake"
mkdir -p "${BUILD_DIR}" && cd "${BUILD_DIR}" && cmake "${CMAKE_OPTS}" .. && make && make test

