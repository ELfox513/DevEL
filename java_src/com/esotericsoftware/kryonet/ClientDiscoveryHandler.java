package com.esotericsoftware.kryonet;

import com.esotericsoftware.kryo.Kryo;
import java.net.DatagramPacket;
/* loaded from: classes.dex */
public interface ClientDiscoveryHandler {
    public static final ClientDiscoveryHandler DEFAULT = new ClientDiscoveryHandler() { // from class: com.esotericsoftware.kryonet.ClientDiscoveryHandler.1
        @Override // com.esotericsoftware.kryonet.ClientDiscoveryHandler
        public void onDiscoveredHost(DatagramPacket datagramPacket, Kryo kryo) {
        }

        @Override // com.esotericsoftware.kryonet.ClientDiscoveryHandler
        public void onFinally() {
        }

        @Override // com.esotericsoftware.kryonet.ClientDiscoveryHandler
        public DatagramPacket onRequestNewDatagramPacket() {
            return new DatagramPacket(new byte[0], 0);
        }
    };

    void onDiscoveredHost(DatagramPacket datagramPacket, Kryo kryo);

    void onFinally();

    DatagramPacket onRequestNewDatagramPacket();
}
