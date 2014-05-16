#ifndef LSHW_H
#define LSHW_H

#include <QDialog>

namespace Ui {
class lshw;
}

class lshw : public QDialog
{
    Q_OBJECT

public:
    explicit lshw(QWidget *parent = 0);
    ~lshw();
    void getInfo();

private slots:
    void on_pushButton_clicked();

    void ReadOut();

private:
    Ui::lshw *ui;
};

#endif // LSHW_H
