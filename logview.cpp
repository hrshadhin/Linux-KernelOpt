#include "logview.h"
#include "ui_logview.h"
#include<QDir>
#include<QTextStream>
#include<QMessageBox>
#include<qdebug.h>
logView::logView(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::logView)
{

    ui->setupUi(this);
    openlog();
}

logView::~logView()
{
    delete ui;
}
void logView::openlog()
{
    QString filename = QDir::homePath()+"/.KernelOptiPack/log/log.txt";
    QFile file(filename);
    if(file.open(QIODevice::ReadOnly | QIODevice::Text))
    {
         QTextStream in(&file);
         QString line;
        while (!in.atEnd())
        {
            line = in.readLine(0);


         ui->textBrowserLog->append(line);
        }
    }else
    {
        QMessageBox msgBox;
        msgBox.setText("Log file missing!!!");
       // msgBox.setInformativeText("Do you want to save your changes?");
        msgBox.setStandardButtons(QMessageBox::Ok);
        msgBox.setDefaultButton(QMessageBox::Ok);
        msgBox.exec();
    }

}

void logView::on_pushButton_clicked()
{
    this->close();
}
