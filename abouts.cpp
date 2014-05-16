#include "abouts.h"
#include "ui_abouts.h"
#include<QDesktopServices>
#include<QDebug>
abouts::abouts(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::abouts)
{

    ui->setupUi(this);
    ui->stackedWidget->setCurrentIndex(2);
}

abouts::~abouts()
{
    delete ui;
}



void abouts::on_pushButton_3_clicked()
{
    this->close();
}

void abouts::on_label_3_linkActivated(const QString &link)
{
  QDesktopServices::openUrl(QUrl("http://kernelop.tk"));
}

void abouts::on_pushButton_clicked()
{
    ui->stackedWidget->setCurrentIndex(0);

}

void abouts::on_pushButton_2_clicked()
{
     ui->stackedWidget->setCurrentIndex(1);

}
