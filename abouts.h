#ifndef ABOUTS_H
#define ABOUTS_H

#include <QDialog>

namespace Ui {
class abouts;
}

class abouts : public QDialog
{
    Q_OBJECT

public:
    explicit abouts(QWidget *parent = 0);
    ~abouts();

private slots:


    void on_pushButton_3_clicked();

    void on_label_3_linkActivated(const QString &link);

    void on_pushButton_clicked();

    void on_pushButton_2_clicked();

private:
    Ui::abouts *ui;
};

#endif // ABOUTS_H
