#ifndef CONTROLLER_H
#define CONTROLLER_H

#include <QObject>
#include <QDebug>
#include <QDir>
#include <QMediaPlayer>
#include <QAudioOutput>


class Controller : public QObject
{
    Q_OBJECT
public:
    explicit Controller(QObject *parent = nullptr);

signals:

public slots:
    void play(QString url);
    QString getCurrentDir();
private:
    QMediaPlayer * player;
    QAudioOutput * audioOutPut;

};

#endif // CONTROLLER_H
