package p070g5;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.SocketAddress;
import java.nio.channels.SocketChannel;
import java.util.ArrayList;
import java.util.Arrays;
import javax.net.ssl.HandshakeCompletedListener;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
/* renamed from: g5.ka */
/* loaded from: classes2.dex */
public final class C3724ka extends SSLSocket {

    /* renamed from: a */
    public final SSLSocket f16696a;

    public C3724ka(C3736la c3736la, SSLSocket sSLSocket) {
        this.f16696a = sSLSocket;
    }

    @Override // javax.net.ssl.SSLSocket
    public final void addHandshakeCompletedListener(HandshakeCompletedListener handshakeCompletedListener) {
        this.f16696a.addHandshakeCompletedListener(handshakeCompletedListener);
    }

    @Override // java.net.Socket
    public final void bind(SocketAddress socketAddress) {
        this.f16696a.bind(socketAddress);
    }

    @Override // java.net.Socket, java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        this.f16696a.close();
    }

    @Override // java.net.Socket
    public final void connect(SocketAddress socketAddress) {
        this.f16696a.connect(socketAddress);
    }

    public final boolean equals(Object obj) {
        return this.f16696a.equals(obj);
    }

    @Override // java.net.Socket
    public final SocketChannel getChannel() {
        return this.f16696a.getChannel();
    }

    @Override // javax.net.ssl.SSLSocket
    public final boolean getEnableSessionCreation() {
        return this.f16696a.getEnableSessionCreation();
    }

    @Override // javax.net.ssl.SSLSocket
    public final String[] getEnabledCipherSuites() {
        return this.f16696a.getEnabledCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocket
    public final String[] getEnabledProtocols() {
        return this.f16696a.getEnabledProtocols();
    }

    @Override // java.net.Socket
    public final InetAddress getInetAddress() {
        return this.f16696a.getInetAddress();
    }

    @Override // java.net.Socket
    public final InputStream getInputStream() {
        return this.f16696a.getInputStream();
    }

    @Override // java.net.Socket
    public final boolean getKeepAlive() {
        return this.f16696a.getKeepAlive();
    }

    @Override // java.net.Socket
    public final InetAddress getLocalAddress() {
        return this.f16696a.getLocalAddress();
    }

    @Override // java.net.Socket
    public final int getLocalPort() {
        return this.f16696a.getLocalPort();
    }

    @Override // java.net.Socket
    public final SocketAddress getLocalSocketAddress() {
        return this.f16696a.getLocalSocketAddress();
    }

    @Override // javax.net.ssl.SSLSocket
    public final boolean getNeedClientAuth() {
        return this.f16696a.getNeedClientAuth();
    }

    @Override // java.net.Socket
    public final boolean getOOBInline() {
        return this.f16696a.getOOBInline();
    }

    @Override // java.net.Socket
    public final OutputStream getOutputStream() {
        return this.f16696a.getOutputStream();
    }

    @Override // java.net.Socket
    public final int getPort() {
        return this.f16696a.getPort();
    }

    @Override // java.net.Socket
    public final synchronized int getReceiveBufferSize() {
        return this.f16696a.getReceiveBufferSize();
    }

    @Override // java.net.Socket
    public final SocketAddress getRemoteSocketAddress() {
        return this.f16696a.getRemoteSocketAddress();
    }

    @Override // java.net.Socket
    public final boolean getReuseAddress() {
        return this.f16696a.getReuseAddress();
    }

    @Override // java.net.Socket
    public final synchronized int getSendBufferSize() {
        return this.f16696a.getSendBufferSize();
    }

    @Override // javax.net.ssl.SSLSocket
    public final SSLSession getSession() {
        return this.f16696a.getSession();
    }

    @Override // java.net.Socket
    public final int getSoLinger() {
        return this.f16696a.getSoLinger();
    }

    @Override // java.net.Socket
    public final synchronized int getSoTimeout() {
        return this.f16696a.getSoTimeout();
    }

    @Override // javax.net.ssl.SSLSocket
    public final String[] getSupportedCipherSuites() {
        return this.f16696a.getSupportedCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocket
    public final String[] getSupportedProtocols() {
        return this.f16696a.getSupportedProtocols();
    }

    @Override // java.net.Socket
    public final boolean getTcpNoDelay() {
        return this.f16696a.getTcpNoDelay();
    }

    @Override // java.net.Socket
    public final int getTrafficClass() {
        return this.f16696a.getTrafficClass();
    }

    @Override // javax.net.ssl.SSLSocket
    public final boolean getUseClientMode() {
        return this.f16696a.getUseClientMode();
    }

    @Override // javax.net.ssl.SSLSocket
    public final boolean getWantClientAuth() {
        return this.f16696a.getWantClientAuth();
    }

    @Override // java.net.Socket
    public final boolean isBound() {
        return this.f16696a.isBound();
    }

    @Override // java.net.Socket
    public final boolean isClosed() {
        return this.f16696a.isClosed();
    }

    @Override // java.net.Socket
    public final boolean isConnected() {
        return this.f16696a.isConnected();
    }

    @Override // java.net.Socket
    public final boolean isInputShutdown() {
        return this.f16696a.isInputShutdown();
    }

    @Override // java.net.Socket
    public final boolean isOutputShutdown() {
        return this.f16696a.isOutputShutdown();
    }

    @Override // javax.net.ssl.SSLSocket
    public final void removeHandshakeCompletedListener(HandshakeCompletedListener handshakeCompletedListener) {
        this.f16696a.removeHandshakeCompletedListener(handshakeCompletedListener);
    }

    @Override // java.net.Socket
    public final void sendUrgentData(int i) {
        this.f16696a.sendUrgentData(i);
    }

    @Override // javax.net.ssl.SSLSocket
    public final void setEnableSessionCreation(boolean z) {
        this.f16696a.setEnableSessionCreation(z);
    }

    @Override // javax.net.ssl.SSLSocket
    public final void setEnabledCipherSuites(String[] strArr) {
        this.f16696a.setEnabledCipherSuites(strArr);
    }

    @Override // java.net.Socket
    public final void setKeepAlive(boolean z) {
        this.f16696a.setKeepAlive(z);
    }

    @Override // javax.net.ssl.SSLSocket
    public final void setNeedClientAuth(boolean z) {
        this.f16696a.setNeedClientAuth(z);
    }

    @Override // java.net.Socket
    public final void setOOBInline(boolean z) {
        this.f16696a.setOOBInline(z);
    }

    @Override // java.net.Socket
    public final void setPerformancePreferences(int i, int i2, int i3) {
        this.f16696a.setPerformancePreferences(i, i2, i3);
    }

    @Override // java.net.Socket
    public final synchronized void setReceiveBufferSize(int i) {
        this.f16696a.setReceiveBufferSize(i);
    }

    @Override // java.net.Socket
    public final void setReuseAddress(boolean z) {
        this.f16696a.setReuseAddress(z);
    }

    @Override // java.net.Socket
    public final synchronized void setSendBufferSize(int i) {
        this.f16696a.setSendBufferSize(i);
    }

    @Override // java.net.Socket
    public final void setSoLinger(boolean z, int i) {
        this.f16696a.setSoLinger(z, i);
    }

    @Override // java.net.Socket
    public final synchronized void setSoTimeout(int i) {
        this.f16696a.setSoTimeout(i);
    }

    @Override // java.net.Socket
    public final void setTcpNoDelay(boolean z) {
        this.f16696a.setTcpNoDelay(z);
    }

    @Override // java.net.Socket
    public final void setTrafficClass(int i) {
        this.f16696a.setTrafficClass(i);
    }

    @Override // javax.net.ssl.SSLSocket
    public final void setUseClientMode(boolean z) {
        this.f16696a.setUseClientMode(z);
    }

    @Override // javax.net.ssl.SSLSocket
    public final void setWantClientAuth(boolean z) {
        this.f16696a.setWantClientAuth(z);
    }

    @Override // java.net.Socket
    public final void shutdownInput() {
        this.f16696a.shutdownInput();
    }

    @Override // java.net.Socket
    public final void shutdownOutput() {
        this.f16696a.shutdownOutput();
    }

    @Override // javax.net.ssl.SSLSocket
    public final void startHandshake() {
        this.f16696a.startHandshake();
    }

    @Override // javax.net.ssl.SSLSocket, java.net.Socket
    public final String toString() {
        return this.f16696a.toString();
    }

    @Override // java.net.Socket
    public final void connect(SocketAddress socketAddress, int i) {
        this.f16696a.connect(socketAddress, i);
    }

    @Override // javax.net.ssl.SSLSocket
    public final void setEnabledProtocols(String[] strArr) {
        if (strArr != null && Arrays.asList(strArr).contains("SSLv3")) {
            ArrayList arrayList = new ArrayList(Arrays.asList(this.f16696a.getEnabledProtocols()));
            if (arrayList.size() > 1) {
                arrayList.remove("SSLv3");
            }
            strArr = (String[]) arrayList.toArray(new String[arrayList.size()]);
        }
        this.f16696a.setEnabledProtocols(strArr);
    }
}
