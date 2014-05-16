#ifndef CONTENTHELP_H
#define CONTENTHELP_H

#include <QDialog>

namespace Ui {
class contentHelp;
}

class contentHelp : public QDialog
{
    Q_OBJECT

public:
    explicit contentHelp(QWidget *parent = 0);
    ~contentHelp();

private slots:
    void on_pushButton_clicked();

private:
    Ui::contentHelp *ui;
};

#endif // CONTENTHELP_H
