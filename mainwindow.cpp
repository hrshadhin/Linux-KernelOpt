#include "mainwindow.h"
#include "ui_mainwindow.h"
#include<qprocess.h>
#include<qdebug.h>
#include<qbytearray.h>
#include<QDir>
#include<createlog.h>
#include<qdatetime.h>
#include<QFileDialog>
#include<logview.h>
#include<QtGlobal>
#include<osinfo.h>
#include <lshw.h>
#include<contenthelp.h>
#include<QDesktopServices>
#include<QUrl>
#include <abouts.h>
MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    createLog obj;
    obj.makeDir("/.KernelOptiPack/log");
    obj.createFile("/.KernelOptiPack/log/");
    QDateTime dateTime = QDateTime::currentDateTime();
    QString dateTimeString = dateTime.toString();
    QString log ="================================================\n"+dateTimeString+"\n================================================";
    obj.writeLog(log);
    p= new QProcess(this);
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_pushButton_clicked()
{

     // QProcess *p = new QProcess(this);
     ui->textEdit->setText("");
      p->setEnvironment( QProcess::systemEnvironment() );
      p->setProcessChannelMode( QProcess::MergedChannels );
      p->setReadChannel(QProcess::StandardOutput);
      QString program = "/bin/bash";
      QStringList arguments;
      arguments <<"./scripts/downEx.sh";
      p->start(program, arguments);
      pid= p->pid();
      ui->label_status->setText("<font color='green'>Downloading linux kernel....</font>");

      connect( p, SIGNAL(readyReadStandardOutput()), this, SLOT(ReadOut()) );
      connect( p, SIGNAL(readyReadStandardError()), this, SLOT(ReadErr()) );

      p->waitForFinished();

     qDebug()<<"proces download and extraction is finished.";




}

void MainWindow::ReadOut2()
{
    createLog obj;
    QProcess *pin = dynamic_cast<QProcess *>( sender() );
    if (pin)
    {
        QByteArray byteArray = pin->readAllStandardOutput();
            QStringList strLines = QString(byteArray).split("\n");
            int i=0;
             ui->label_status->setText("<font color='green'>Installing linux kernel.</font>");
            foreach (QString line, strLines){
                obj.writeLog(line);

               ui->progressBar->setValue(i);
               if(i==100)
                   i=0;
               i++;
                ui->textEdit->append(line);
            }

    }

}
void MainWindow::ReadOut()
{
    createLog obj;
    QProcess *p = dynamic_cast<QProcess *>( sender() );
    if (p)
    {
        QByteArray byteArray = p->readAllStandardOutput();
            QStringList strLines = QString(byteArray).split("\n");
           QStringList per;

           int i=0;
            foreach (QString line, strLines){
                obj.writeLog(line);
                if(line.contains("%")){
                    per = line.split("%");
                    per[0].remove('.');
                    per[0].remove(' ');
                    if(per[0].compare("100")==0){
                        ui->label_status->setText("<font color='green'>Linux kernel Download complete.</font>");
                    }
                    else
                         ui->label_status->setText("<font color='green'>Downloading kernel...</font>");
                    ui->progressBar->setValue(per[0].toInt());

                }
                if(line.contains("The file is already fully retrieved"))
                {
                    ui->label_status->setText("<font color='green'>Linux kernel already downloaded.</font>");

                }
                if(line.contains("linux")){
                    ui->label_status->setText("<font color='green'>Extracting Linux kernel......</font>");
                    ui->progressBar->setValue(i);
                    if(i==100)
                        i=0;
                    i++;

                }
                if(line.compare("README")==0)
                {
                     ui->label_status->setText("<font color='red'>None</font>");
                     ui->progressBar->setValue(0);
                     runproc2();
                }


                ui->textEdit->append(line);
            }

    }

}
void MainWindow::ReadErr()
{
    createLog obj;
    QProcess *p = dynamic_cast<QProcess *>( sender() );
    if (p)
    {
       QByteArray byteArray = p->readAllStandardOutput();
       obj.writeLog(QString(byteArray));
      ui->textEdit->append( p->readAllStandardOutput() );
    }
}

void MainWindow::on_pushButton_2_clicked()
{

   p->kill();
    ui->label_status->setText("<font color='red'> None</font>");
    ui->progressBar->setValue(0);

}

void MainWindow::on_pushButton_3_clicked()
{

    logView obj(this);
    obj.setModal(true);
    obj.exec();
}

void MainWindow::on_pushButton_4_clicked()
{
    osInfo obj(this);
    obj.setModal(true);
    obj.exec();


}

void MainWindow::on_pushButton_5_clicked()
{
   lshw obj(this);
    obj.setModal(true);
    obj.exec();


}

void MainWindow::on_actionOpen_log_triggered()
{
    on_pushButton_3_clicked();
}


void MainWindow::on_actionPC_info_triggered()
{
    on_pushButton_5_clicked();
}


void MainWindow::on_actionStart_Operation_triggered()
{
   on_pushButton_clicked();
}

void MainWindow::on_actionStop_running_job_triggered()
{
    on_pushButton_2_clicked();
}

void MainWindow::on_actionOS_info_triggered()
{
    on_pushButton_4_clicked();
}

void MainWindow::on_actionExit_triggered()
{
    this->close();
}

void MainWindow::on_actionContent_triggered()
{
    contentHelp obj(this);
    obj.setModal(true);
    obj.exec();
}

void MainWindow::on_actionTecnical_Help_triggered()
{
    QString link = "http://kernelop.tk";
    QDesktopServices::openUrl(QUrl(link));
}

void MainWindow::on_actionReport_Bug_triggered()
{
    QString link = "http://bug-reports.kernelop.tk";
    QDesktopServices::openUrl(QUrl(link));
}

void MainWindow::on_actionAbout_triggered()
{
    abouts obj(this);
    obj.setModal(true);
    obj.exec();
}
void MainWindow::runproc2(){
    ui->label_status->setText("<font color='green'>Configuring and compiling the kernel....</font>");
    ui->textEdit->append("Configuring and compiling the kernel...");
    ui->progressBar->setVisible(false);
    QString program2 = "gnome-terminal";
    QStringList arguments2;
    arguments2 << "-x" << "bash" << "--rcfile" << "./scripts/configComp.sh";

    QProcess *proc = new QProcess(this);
    proc->start(program2, arguments2);
    proc->waitForFinished();
    ui->label_status->setText("<font color='red'>None</font>");
    ui->textEdit->append("Kernel compilation successfully completed.");
    proc->waitForFinished();
    ui->label_status->setText("<font color='green'>New kernel installation complete.</font>");
    ui->textEdit->append("===============================\nKernel installation successfully completed.\n=============================");
}
