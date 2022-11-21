package p168r4;

import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.SSLSocketFactory;
/* renamed from: r4.ar0 */
/* loaded from: classes2.dex */
public final class ar0 extends SSLSocketFactory {

    /* renamed from: a */
    public final SSLSocketFactory f20585a = (SSLSocketFactory) SSLSocketFactory.getDefault();

    /* renamed from: b */
    public final /* synthetic */ br0 f20586b;

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i) {
        Socket createSocket = this.f20585a.createSocket(str, i);
        m12967a(createSocket);
        return createSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getDefaultCipherSuites() {
        return this.f20585a.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getSupportedCipherSuites() {
        return this.f20585a.getSupportedCipherSuites();
    }

    public ar0(br0 br0Var) {
        this.f20586b = br0Var;
    }

    /* renamed from: a */
    public final Socket m12967a(Socket socket) {
        int i;
        int i2;
        i = this.f20586b.f21176s;
        if (i > 0) {
            i2 = this.f20586b.f21176s;
            socket.setReceiveBufferSize(i2);
        }
        this.f20586b.f21177t.add(socket);
        return socket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i, InetAddress inetAddress, int i2) {
        Socket createSocket = this.f20585a.createSocket(str, i, inetAddress, i2);
        m12967a(createSocket);
        return createSocket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i) {
        Socket createSocket = this.f20585a.createSocket(inetAddress, i);
        m12967a(createSocket);
        return createSocket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) {
        Socket createSocket = this.f20585a.createSocket(inetAddress, i, inetAddress2, i2);
        m12967a(createSocket);
        return createSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final Socket createSocket(Socket socket, String str, int i, boolean z) {
        Socket createSocket = this.f20585a.createSocket(socket, str, i, z);
        m12967a(createSocket);
        return createSocket;
    }
}
