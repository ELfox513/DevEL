package p168r4;

import java.io.FilterInputStream;
import java.net.HttpURLConnection;
/* renamed from: r4.q94 */
/* loaded from: classes2.dex */
public final class q94 extends FilterInputStream {

    /* renamed from: a */
    public final HttpURLConnection f30060a;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public q94(java.net.HttpURLConnection r2) {
        /*
            r1 = this;
            java.io.InputStream r0 = r2.getInputStream()     // Catch: java.io.IOException -> L5
            goto L9
        L5:
            java.io.InputStream r0 = r2.getErrorStream()
        L9:
            r1.<init>(r0)
            r1.f30060a = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.q94.<init>(java.net.HttpURLConnection):void");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        super.close();
        this.f30060a.disconnect();
    }
}
