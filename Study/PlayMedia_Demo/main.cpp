#include <QCoreApplication>
#include <QMediaPlayer>
#include <QAudioOutput>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    QMediaPlayer * player = new QMediaPlayer(&a);

    player->setSource(QUrl::fromLocalFile("/home/taihh4/MyProject/MediaFile/tan.mp3"));

    QAudioOutput * audioOutPut = new QAudioOutput(player);
    audioOutPut->setVolume(75);

    player->setAudioOutput(audioOutPut);


    player->play();

    return a.exec();
}
