#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include<qprocess.h>

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();
   quint64 pid;




private slots:
    void on_pushButton_clicked();
    void ReadOut();
    void ReadErr();
    void ReadOut2();
    void on_pushButton_2_clicked();

    void on_pushButton_3_clicked();

    void on_pushButton_4_clicked();

    void on_pushButton_5_clicked();


    void on_actionOpen_log_triggered();

    void on_actionPC_info_triggered();

    void on_actionStart_Operation_triggered();

    void on_actionStop_running_job_triggered();

    void on_actionOS_info_triggered();

    void on_actionExit_triggered();

    void on_actionContent_triggered();

    void on_actionTecnical_Help_triggered();

    void on_actionReport_Bug_triggered();

    void on_actionAbout_triggered();
    void runproc2();

private:
    Ui::MainWindow *ui;
    QProcess *p;
};

#endif // MAINWINDOW_H
