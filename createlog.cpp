#include "createlog.h"
#include<QDir>
#include<QString>
#include<QDebug>
createLog::createLog()
{
}
void createLog::makeDir(QString path){
    QDir mPath(QDir::homePath()+path);
    if(!mPath.exists()){
        mPath.mkpath(".");
        qDebug()<<"Directory creaded.";
    }

}
void createLog::createFile(QString filePath)
{

    QString fileLoc=QDir::homePath()+filePath+"log.txt";
    QFile file( fileLoc);
    if(!file.exists())
    {
        if(file.open(QIODevice::WriteOnly) )
            qDebug()<<"log file created.";
        else
             qDebug()<<"log file couldn't' open!!";
    }

}

void createLog::writeLog(QString text){
    QString fileLoc=QDir::homePath()+"/.KernelOptiPack/log/log.txt";
    QFile file( fileLoc);
    if(file.open(QIODevice::ReadWrite) )
    {
        file.seek(file.size());
        QTextStream stream( &file );
        stream << text << endl;
    }
    else
        qDebug()<<"log file couldn't' open!!";

    file.close();
}
