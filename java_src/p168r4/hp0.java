package p168r4;

import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.SSLSocketFactory;
/* renamed from: r4.hp0 */
/* loaded from: classes2.dex */
public final class hp0 extends SSLSocketFactory {

    /* renamed from: a */
    public final SSLSocketFactory f24773a = (SSLSocketFactory) SSLSocketFactory.getDefault();

    /* renamed from: b */
    public final /* synthetic */ ip0 f24774b;

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i) {
        Socket createSocket = this.f24773a.createSocket(str, i);
        m10836a(createSocket);
        return createSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getDefaultCipherSuites() {
        return this.f24773a.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getSupportedCipherSuites() {
        return this.f24773a.getSupportedCipherSuites();
    }

    public hp0(ip0 ip0Var) {
        this.f24774b = ip0Var;
    }

    /* renamed from: a */
    public final Socket m10836a(Socket socket) {
        int i;
        int i2;
        i = this.f24774b.f25236o;
        if (i > 0) {
            i2 = this.f24774b.f25236o;
            socket.setReceiveBufferSize(i2);
        }
        this.f24774b.f25237p.add(socket);
        return socket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i, InetAddress inetAddress, int i2) {
        Socket createSocket = this.f24773a.createSocket(str, i, inetAddress, i2);
        m10836a(createSocket);
        return createSocket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i) {
        Socket createSocket = this.f24773a.createSocket(inetAddress, i);
        m10836a(createSocket);
        return createSocket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) {
        Socket createSocket = this.f24773a.createSocket(inetAddress, i, inetAddress2, i2);
        m10836a(createSocket);
        return createSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final Socket createSocket(Socket socket, String str, int i, boolean z) {
        Socket createSocket = this.f24773a.createSocket(socket, str, i, z);
        m10836a(createSocket);
        return createSocket;
    }
}
