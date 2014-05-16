#include "contenthelp.h"
#include "ui_contenthelp.h"

contentHelp::contentHelp(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::contentHelp)
{
    ui->setupUi(this);
}

contentHelp::~contentHelp()
{
    delete ui;
}

void contentHelp::on_pushButton_clicked()
{
    this->close();
}
