package com.esotericsoftware.kryonet;

import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public interface ServerDiscoveryHandler {
    public static final ServerDiscoveryHandler DEFAULT = new ServerDiscoveryHandler() { // from class: com.esotericsoftware.kryonet.ServerDiscoveryHandler.1

        /* renamed from: a */
        public ByteBuffer f7531a = ByteBuffer.allocate(0);

        @Override // com.esotericsoftware.kryonet.ServerDiscoveryHandler
        public boolean onDiscoverHost(UdpConnection udpConnection, InetSocketAddress inetSocketAddress, Serialization serialization) {
            udpConnection.f7546b.send(this.f7531a, inetSocketAddress);
            return true;
        }
    };

    boolean onDiscoverHost(UdpConnection udpConnection, InetSocketAddress inetSocketAddress, Serialization serialization);
}
