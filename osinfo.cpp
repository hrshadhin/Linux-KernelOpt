#include "osinfo.h"
#include "ui_osinfo.h"
#include<QProcess>

osInfo::osInfo(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::osInfo)
{
    ui->setupUi(this);
    info();
}

osInfo::~osInfo()
{
    delete ui;
}
void osInfo::info()
{
    QProcess *osp = new QProcess();
    osp->setEnvironment( QProcess::systemEnvironment() );
    osp->setProcessChannelMode( QProcess::MergedChannels );
    osp->start( "bash", QStringList() << "-c" << "cat /etc/*-release" );
    osp->waitForFinished(-1);
    QByteArray byteArray = osp->readAllStandardOutput();
    ui->textBrowserLog->setText(QString(byteArray));
    osp->start( "bash", QStringList() << "-c" << "uname -mrs" );
    osp->waitForFinished(-1);
    byteArray = osp->readAllStandardOutput();
    ui->textBrowserLog->append("Kernel Version: "+QString(byteArray));


}

void osInfo::on_pushButton_clicked()
{
    this->close();
}
