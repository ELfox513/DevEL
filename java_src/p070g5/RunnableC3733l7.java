package p070g5;

import java.net.URL;
import java.util.List;
import java.util.Map;
import p220x3.C7297q;
/* renamed from: g5.l7 */
/* loaded from: classes2.dex */
public final class RunnableC3733l7 implements Runnable {

    /* renamed from: a */
    public final URL f16708a;

    /* renamed from: b */
    public final String f16709b;

    /* renamed from: d */
    public final /* synthetic */ C3745m7 f16710d;

    /* renamed from: k */
    public final C3898z4 f16711k;

    /* renamed from: a */
    public final /* synthetic */ void m18068a(int i, Exception exc, byte[] bArr, Map map) {
        C3898z4 c3898z4 = this.f16711k;
        c3898z4.f17129a.m18531c(this.f16709b, i, exc, bArr, map);
    }

    public RunnableC3733l7(C3745m7 c3745m7, String str, URL url, byte[] bArr, Map map, C3898z4 c3898z4, byte[] bArr2) {
        this.f16710d = c3745m7;
        C7297q.m1887f(str);
        C7297q.m1883j(url);
        C7297q.m1883j(c3898z4);
        this.f16708a = url;
        this.f16711k = c3898z4;
        this.f16709b = str;
    }

    /* renamed from: b */
    public final void m18067b(final int i, final Exception exc, final byte[] bArr, final Map<String, List<String>> map) {
        this.f16710d.f17008a.mo17855P().m17826u(new Runnable() { // from class: g5.k7
            @Override // java.lang.Runnable
            public final void run() {
                RunnableC3733l7.this.m18068a(i, exc, bArr, map);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x006f  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r9 = this;
            g5.m7 r0 = r9.f16710d
            r0.mo17840b()
            r0 = 0
            r1 = 0
            g5.m7 r2 = r9.f16710d     // Catch: java.lang.Throwable -> L5a java.io.IOException -> L68
            java.net.URL r3 = r9.f16708a     // Catch: java.lang.Throwable -> L5a java.io.IOException -> L68
            java.net.HttpURLConnection r2 = r2.m18063j(r3)     // Catch: java.lang.Throwable -> L5a java.io.IOException -> L68
            int r3 = r2.getResponseCode()     // Catch: java.lang.Throwable -> L50 java.io.IOException -> L55
            java.util.Map r4 = r2.getHeaderFields()     // Catch: java.lang.Throwable -> L4a java.io.IOException -> L4d
            java.io.ByteArrayOutputStream r5 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L3e
            r5.<init>()     // Catch: java.lang.Throwable -> L3e
            java.io.InputStream r6 = r2.getInputStream()     // Catch: java.lang.Throwable -> L3e
            r7 = 1024(0x400, float:1.435E-42)
            byte[] r7 = new byte[r7]     // Catch: java.lang.Throwable -> L3c
        L24:
            int r8 = r6.read(r7)     // Catch: java.lang.Throwable -> L3c
            if (r8 <= 0) goto L2e
            r5.write(r7, r0, r8)     // Catch: java.lang.Throwable -> L3c
            goto L24
        L2e:
            byte[] r0 = r5.toByteArray()     // Catch: java.lang.Throwable -> L3c
            r6.close()     // Catch: java.lang.Throwable -> L46 java.io.IOException -> L48
            r2.disconnect()
            r9.m18067b(r3, r1, r0, r4)
            return
        L3c:
            r0 = move-exception
            goto L40
        L3e:
            r0 = move-exception
            r6 = r1
        L40:
            if (r6 == 0) goto L45
            r6.close()     // Catch: java.lang.Throwable -> L46 java.io.IOException -> L48
        L45:
            throw r0     // Catch: java.lang.Throwable -> L46 java.io.IOException -> L48
        L46:
            r0 = move-exception
            goto L5f
        L48:
            r0 = move-exception
            goto L6d
        L4a:
            r0 = move-exception
            r4 = r1
            goto L5f
        L4d:
            r0 = move-exception
            r4 = r1
            goto L6d
        L50:
            r3 = move-exception
            r4 = r1
            r0 = r3
            r3 = 0
            goto L5f
        L55:
            r3 = move-exception
            r4 = r1
            r0 = r3
            r3 = 0
            goto L6d
        L5a:
            r2 = move-exception
            r4 = r1
            r0 = r2
            r3 = 0
            r2 = r4
        L5f:
            if (r2 == 0) goto L64
            r2.disconnect()
        L64:
            r9.m18067b(r3, r1, r1, r4)
            throw r0
        L68:
            r2 = move-exception
            r4 = r1
            r0 = r2
            r3 = 0
            r2 = r4
        L6d:
            if (r2 == 0) goto L72
            r2.disconnect()
        L72:
            r9.m18067b(r3, r0, r1, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p070g5.RunnableC3733l7.run():void");
    }
}
