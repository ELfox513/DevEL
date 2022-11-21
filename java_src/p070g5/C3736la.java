package p070g5;

import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
/* renamed from: g5.la */
/* loaded from: classes2.dex */
public final class C3736la extends SSLSocketFactory {

    /* renamed from: a */
    public final SSLSocketFactory f16718a;

    public C3736la(SSLSocketFactory sSLSocketFactory) {
        this.f16718a = sSLSocketFactory;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket() {
        return new C3724ka(this, (SSLSocket) this.f16718a.createSocket());
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getDefaultCipherSuites() {
        return this.f16718a.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getSupportedCipherSuites() {
        return this.f16718a.getSupportedCipherSuites();
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i) {
        return new C3724ka(this, (SSLSocket) this.f16718a.createSocket(str, i));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i, InetAddress inetAddress, int i2) {
        return new C3724ka(this, (SSLSocket) this.f16718a.createSocket(str, i, inetAddress, i2));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i) {
        return new C3724ka(this, (SSLSocket) this.f16718a.createSocket(inetAddress, i));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) {
        return new C3724ka(this, (SSLSocket) this.f16718a.createSocket(inetAddress, i, inetAddress2, i2));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final Socket createSocket(Socket socket, String str, int i, boolean z) {
        return new C3724ka(this, (SSLSocket) this.f16718a.createSocket(socket, str, i, z));
    }
}
