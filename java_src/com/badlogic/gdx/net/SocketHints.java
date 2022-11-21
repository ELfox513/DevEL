package com.badlogic.gdx.net;
/* loaded from: classes.dex */
public class SocketHints {
    public int connectTimeout = 5000;
    public int performancePrefConnectionTime = 0;
    public int performancePrefLatency = 1;
    public int performancePrefBandwidth = 0;
    public int trafficClass = 20;
    public boolean keepAlive = true;
    public boolean tcpNoDelay = true;
    public int sendBufferSize = 4096;
    public int receiveBufferSize = 4096;
    public boolean linger = false;
    public int lingerDuration = 0;
    public int socketTimeout = 0;
}
