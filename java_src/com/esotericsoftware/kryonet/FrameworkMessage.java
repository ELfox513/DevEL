package com.esotericsoftware.kryonet;
/* loaded from: classes.dex */
public interface FrameworkMessage {
    public static final KeepAlive keepAlive = new KeepAlive();

    /* loaded from: classes.dex */
    public static class DiscoverHost implements FrameworkMessage {
    }

    /* loaded from: classes.dex */
    public static class KeepAlive implements FrameworkMessage {
    }

    /* loaded from: classes.dex */
    public static class Ping implements FrameworkMessage {

        /* renamed from: id */
        public int f7486id;
        public boolean isReply;
    }

    /* loaded from: classes.dex */
    public static class RegisterTCP implements FrameworkMessage {
        public int connectionID;
    }

    /* loaded from: classes.dex */
    public static class RegisterUDP implements FrameworkMessage {
        public int connectionID;
    }
}
