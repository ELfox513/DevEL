package com.esotericsoftware.kryonet.util;

import com.esotericsoftware.kryonet.Connection;
import com.esotericsoftware.kryonet.Listener;
/* loaded from: classes.dex */
public abstract class TcpIdleSender extends Listener {

    /* renamed from: a */
    public boolean f7598a;

    public abstract Object next();

    public void start() {
    }

    @Override // com.esotericsoftware.kryonet.Listener
    public void idle(Connection connection) {
        if (!this.f7598a) {
            this.f7598a = true;
            start();
        }
        Object next = next();
        if (next == null) {
            connection.removeListener(this);
        } else {
            connection.sendTCP(next);
        }
    }
}
