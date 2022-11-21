package com.esotericsoftware.kryonet;

import com.esotericsoftware.kryo.Kryo;
/* loaded from: classes.dex */
public interface EndPoint extends Runnable {
    void addListener(Listener listener);

    void close();

    Kryo getKryo();

    Serialization getSerialization();

    Thread getUpdateThread();

    void removeListener(Listener listener);

    @Override // java.lang.Runnable
    void run();

    void start();

    void stop();

    void update(int i);
}
