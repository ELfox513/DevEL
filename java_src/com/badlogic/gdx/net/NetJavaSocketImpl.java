package com.badlogic.gdx.net;

import com.badlogic.gdx.Net;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
/* loaded from: classes.dex */
public class NetJavaSocketImpl implements Socket {

    /* renamed from: a */
    public java.net.Socket f5565a;

    public NetJavaSocketImpl(Net.Protocol protocol, String str, int i, SocketHints socketHints) {
        try {
            this.f5565a = new java.net.Socket();
            m23892a(socketHints);
            InetSocketAddress inetSocketAddress = new InetSocketAddress(str, i);
            if (socketHints != null) {
                this.f5565a.connect(inetSocketAddress, socketHints.connectTimeout);
            } else {
                this.f5565a.connect(inetSocketAddress);
            }
        } catch (Exception e) {
            throw new GdxRuntimeException("Error making a socket connection to " + str + ":" + i, e);
        }
    }

    @Override // com.badlogic.gdx.net.Socket
    public String getRemoteAddress() {
        return this.f5565a.getRemoteSocketAddress().toString();
    }

    /* renamed from: a */
    public final void m23892a(SocketHints socketHints) {
        if (socketHints != null) {
            try {
                this.f5565a.setPerformancePreferences(socketHints.performancePrefConnectionTime, socketHints.performancePrefLatency, socketHints.performancePrefBandwidth);
                this.f5565a.setTrafficClass(socketHints.trafficClass);
                this.f5565a.setTcpNoDelay(socketHints.tcpNoDelay);
                this.f5565a.setKeepAlive(socketHints.keepAlive);
                this.f5565a.setSendBufferSize(socketHints.sendBufferSize);
                this.f5565a.setReceiveBufferSize(socketHints.receiveBufferSize);
                this.f5565a.setSoLinger(socketHints.linger, socketHints.lingerDuration);
                this.f5565a.setSoTimeout(socketHints.socketTimeout);
            } catch (Exception e) {
                throw new GdxRuntimeException("Error setting socket hints.", e);
            }
        }
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        java.net.Socket socket = this.f5565a;
        if (socket != null) {
            try {
                socket.close();
                this.f5565a = null;
            } catch (Exception e) {
                throw new GdxRuntimeException("Error closing socket.", e);
            }
        }
    }

    @Override // com.badlogic.gdx.net.Socket
    public InputStream getInputStream() {
        try {
            return this.f5565a.getInputStream();
        } catch (Exception e) {
            throw new GdxRuntimeException("Error getting input stream from socket.", e);
        }
    }

    @Override // com.badlogic.gdx.net.Socket
    public OutputStream getOutputStream() {
        try {
            return this.f5565a.getOutputStream();
        } catch (Exception e) {
            throw new GdxRuntimeException("Error getting output stream from socket.", e);
        }
    }

    @Override // com.badlogic.gdx.net.Socket
    public boolean isConnected() {
        java.net.Socket socket = this.f5565a;
        if (socket != null) {
            return socket.isConnected();
        }
        return false;
    }

    public NetJavaSocketImpl(java.net.Socket socket, SocketHints socketHints) {
        this.f5565a = socket;
        m23892a(socketHints);
    }
}
