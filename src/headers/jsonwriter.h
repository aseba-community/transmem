#ifndef JSONWRITER_H
#define JSONWRITER_H

#include <QXmlStreamWriter>
#include <QFile>
#include <typedefs.h>

#include "transmem.h"

class TransMem;

class JSONWriter {

public:

    JSONWriter() = default;

    JSONWriter(const std::string &_path)
    : path(_path)
    {}

    bool write(TransMem * const tm);

protected:

    void addKey(const QString &id, const QString &attributeTarget, const QString &name, const QString &attributeType);

    void addFrameNode(const QString &name);
    void addBufferNode(const QString &name);
    void addEntryNode(const QString &name, const StampedTransformation &s);

    void addEdge(const QString &label, const QString &src, const QString &dst);

    const std::string path{"dumpedGraph.graphml"};
    QXmlStreamWriter xml;
};


#endif // JSONWRITER_H
