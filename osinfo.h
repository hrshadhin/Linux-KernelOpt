#ifndef OSINFO_H
#define OSINFO_H

#include <QDialog>

namespace Ui {
class osInfo;
}

class osInfo : public QDialog
{
    Q_OBJECT

public:
    explicit osInfo(QWidget *parent = 0);
    ~osInfo();
    void info();

private slots:
    void on_pushButton_clicked();

private:
    Ui::osInfo *ui;
};

#endif // OSINFO_H
