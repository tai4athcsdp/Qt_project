#include "controller.h"

Controller::Controller(QObject *parent)
    : QObject{parent},
      player{new QMediaPlayer(this)},
      audioOutPut{new QAudioOutput(player)}
{
    audioOutPut->setVolume(75);
    player->setAudioOutput(audioOutPut);
}

void Controller::play(QString url)
{
    player->setSource(QUrl::fromLocalFile(url));
    player->play();

}

QString Controller::getCurrentDir()
{
    return QDir::currentPath();
}
