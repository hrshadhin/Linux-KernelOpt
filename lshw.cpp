#include "lshw.h"
#include "ui_lshw.h"
#include<QProcess>
#include<QDir>
lshw::lshw(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::lshw)
{
    ui->setupUi(this);
    getInfo();
}

lshw::~lshw()
{
    delete ui;
}
void lshw::getInfo()
{

    QProcess *p = new QProcess();
    if (p)
    {
      p->setEnvironment( QProcess::systemEnvironment() );
      p->setProcessChannelMode( QProcess::MergedChannels );
      QString apath,program;
      QStringList args;
      apath=QDir("/bin/bash").absolutePath();
      program="gksudo";
      args << "sudo lshw";
      p->start(program,args);
      p->waitForStarted();
      connect( p, SIGNAL(readyReadStandardOutput()), this, SLOT(ReadOut()) );


    }


}
void lshw::ReadOut()
{

QProcess *p = dynamic_cast<QProcess *>( sender() );
if (p)
{
QByteArray byteArray = p->readAllStandardOutput();
    QStringList strLines = QString(byteArray).split("\n");
    foreach (QString line, strLines){

        ui->textBrowserLog->append(line);
        }


    }

}

void lshw::on_pushButton_clicked()
{
    this->close();
}
