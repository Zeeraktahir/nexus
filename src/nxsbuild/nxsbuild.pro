QT       += core gui

TARGET   = nxsbuild
CONFIG   += console
CONFIG   -= app_bundle
TEMPLATE = app

CONFIG += c++14

#QMAKE_CXXFLAGS += -std=c++14 -g

INCLUDEPATH += \
    ../../../vcglib \
    ../../../vcglib/eigenlib

win32:INCLUDEPATH += ../draco/include
win32:LIBS += ../draco/lib/dracodec.lib

unix:INCLUDEPATH += ../draco/include
unix:LIBS  += -L ../draco/lib -ldraco

DEFINES += _FILE_OFFSET_BITS=64
DEFINES += _USE_MATH_DEFINES

win32-msvc: DEFINES += NOMINMAX

SOURCES += \
    ../../../vcglib/wrap/system/qgetopt.cpp \
    ../../../vcglib/wrap/ply/plylib.cpp \
    ../common/dag.cpp \
    ../common/virtualarray.cpp \
    ../common/cone.cpp \
    main.cpp \
    meshstream.cpp \
    meshloader.cpp \
    plyloader.cpp \
    kdtree.cpp \
    mesh.cpp \
    tsploader.cpp \
    nexusbuilder.cpp \
    objloader.cpp \
    tmesh.cpp \
    texpyramid.cpp \
    stlloader.cpp \
    ../common/signature.cpp \
    nodetexcreator.cpp \
    gltfloader.cpp \
    gltf.cpp \
    buildmaterial.cpp

HEADERS += \
    ../../../vcglib/wrap/system/qgetopt.h \
    ../../../vcglib/wrap/ply/plylib.h \
    ../common/dag.h \
    ../common/signature.h \
    ../common/cone.h \
    ../common/virtualarray.h \
    meshstream.h \
    meshloader.h \
    plyloader.h \
    partition.h \
    kdtree.h \
    trianglesoup.h \
    mesh.h \
    tsploader.h \
    nexusbuilder.h \
    objloader.h \
    tmesh.h \
    vertex_cache_optimizer.h \
    texpyramid.h \
    stlloader.h \
    ../common/material.h \
    nodetexcreator.h \
    ../common/json.hpp \
    gltfloader.h \
    ../common/gltf.h \
    ../common/nexus.h \
    buildmaterial.h \
    ../common/config.h

DESTDIR = "../../bin"

OTHER_FILES += \
    textures_plan.txt
