package com.esotericsoftware.kryonet.rmi;

import com.esotericsoftware.kryonet.Connection;
/* loaded from: classes.dex */
public interface RemoteObject {
    void close();

    Connection getConnection();

    byte getLastResponseID();

    void setNonBlocking(boolean z);

    void setRemoteToString(boolean z);

    void setResponseTimeout(int i);

    void setTransmitExceptions(boolean z);

    void setTransmitReturnValue(boolean z);

    Object waitForLastResponse();

    Object waitForResponse(byte b);
}
