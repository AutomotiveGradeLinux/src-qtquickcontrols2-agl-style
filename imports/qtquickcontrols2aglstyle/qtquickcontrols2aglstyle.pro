TEMPLATE = aux

DISTFILES = *.qml images qmldir

files.files = $$DISTFILES
files.path = $$PREFIX$$[QT_INSTALL_BINS]/AGL

INSTALLS += files
