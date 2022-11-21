package p168r4;

import java.security.cert.X509Certificate;
/* renamed from: r4.t74 */
/* loaded from: classes2.dex */
public final class t74 extends u74 {

    /* renamed from: b */
    public final byte[] f31727b;

    public t74(X509Certificate x509Certificate, byte[] bArr) {
        super(x509Certificate);
        this.f31727b = bArr;
    }

    @Override // java.security.cert.Certificate
    public final byte[] getEncoded() {
        return this.f31727b;
    }
}
