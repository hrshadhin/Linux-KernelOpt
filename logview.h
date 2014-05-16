#ifndef LOGVIEW_H
#define LOGVIEW_H

#include <QDialog>

namespace Ui {
class logView;
}

class logView : public QDialog
{
    Q_OBJECT

public:
    explicit logView(QWidget *parent = 0);
    ~logView();
    void openlog();

private slots:
    void on_pushButton_clicked();

private:
    Ui::logView *ui;

};

#endif // LOGVIEW_H
