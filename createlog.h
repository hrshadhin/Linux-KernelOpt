#ifndef CREATELOG_H
#define CREATELOG_H
#include<QString>
class createLog
{
public:
    createLog();
    void makeDir(QString path);
    void createFile(QString filePath);
    void writeLog(QString text);
};

#endif // CREATELOG_H
