package com.badlogic.gdx.net;

import com.badlogic.gdx.Net;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.net.InetSocketAddress;
/* loaded from: classes.dex */
public class NetJavaServerSocketImpl implements ServerSocket {

    /* renamed from: a */
    public Net.Protocol f5563a;

    /* renamed from: b */
    public java.net.ServerSocket f5564b;

    public NetJavaServerSocketImpl(Net.Protocol protocol, int i, ServerSocketHints serverSocketHints) {
        this(protocol, null, i, serverSocketHints);
    }

    @Override // com.badlogic.gdx.net.ServerSocket
    public Net.Protocol getProtocol() {
        return this.f5563a;
    }

    public NetJavaServerSocketImpl(Net.Protocol protocol, String str, int i, ServerSocketHints serverSocketHints) {
        InetSocketAddress inetSocketAddress;
        this.f5563a = protocol;
        try {
            java.net.ServerSocket serverSocket = new java.net.ServerSocket();
            this.f5564b = serverSocket;
            if (serverSocketHints != null) {
                serverSocket.setPerformancePreferences(serverSocketHints.performancePrefConnectionTime, serverSocketHints.performancePrefLatency, serverSocketHints.performancePrefBandwidth);
                this.f5564b.setReuseAddress(serverSocketHints.reuseAddress);
                this.f5564b.setSoTimeout(serverSocketHints.acceptTimeout);
                this.f5564b.setReceiveBufferSize(serverSocketHints.receiveBufferSize);
            }
            if (str != null) {
                inetSocketAddress = new InetSocketAddress(str, i);
            } else {
                inetSocketAddress = new InetSocketAddress(i);
            }
            if (serverSocketHints != null) {
                this.f5564b.bind(inetSocketAddress, serverSocketHints.backlog);
            } else {
                this.f5564b.bind(inetSocketAddress);
            }
        } catch (Exception e) {
            throw new GdxRuntimeException("Cannot create a server socket at port " + i + ".", e);
        }
    }

    @Override // com.badlogic.gdx.net.ServerSocket
    public Socket accept(SocketHints socketHints) {
        try {
            return new NetJavaSocketImpl(this.f5564b.accept(), socketHints);
        } catch (Exception e) {
            throw new GdxRuntimeException("Error accepting socket.", e);
        }
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        java.net.ServerSocket serverSocket = this.f5564b;
        if (serverSocket != null) {
            try {
                serverSocket.close();
                this.f5564b = null;
            } catch (Exception e) {
                throw new GdxRuntimeException("Error closing server.", e);
            }
        }
    }
}
