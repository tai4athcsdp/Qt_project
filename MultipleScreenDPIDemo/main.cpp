#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QDebug>
#include <QScreen>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qDebug() << "qqq size" << app.screens().at(0)->size();
    qDebug() << "qqq logicalDotsPerInch " << app.screens().at(0)->logicalDotsPerInch();
    qDebug() << "qqq physicalDotsPerInch " << app.screens().at(0)->physicalDotsPerInch();
    qDebug() << "qqq refreshRate: " << app.screens().at(0)->refreshRate();
    qDebug() << "qqq devicePixelRatio: " << app.screens().at(0)->devicePixelRatio();
    qDebug() << "qqq model: " << app.screens().at(0)->model();
    qDebug() << "qqq model: " << app.screens().at(0)->physicalSize();

    QQmlApplicationEngine engine;
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("MultipleScreenDPIDemo", "Main");

    return app.exec();
}
