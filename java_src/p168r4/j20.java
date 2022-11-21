package p168r4;

import java.util.ArrayList;
import java.util.List;
import p202v2.AbstractC6976c;
import p202v2.AbstractC6977d;
/* renamed from: r4.j20 */
/* loaded from: classes2.dex */
public final class j20 extends AbstractC6976c {

    /* renamed from: a */
    public final h20 f25862a;

    /* renamed from: b */
    public final List<AbstractC6977d> f25863b = new ArrayList();

    /* renamed from: c */
    public String f25864c;

    /* JADX WARN: Code restructure failed: missing block: B:20:0x004c, code lost:
        r4.f25863b.add(new p168r4.q20(r3));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public j20(p168r4.h20 r5) {
        /*
            r4 = this;
            java.lang.String r0 = ""
            r4.<init>()
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r4.f25863b = r1
            r4.f25862a = r5
            java.lang.String r1 = r5.mo5944a()     // Catch: android.os.RemoteException -> L15
            r4.f25864c = r1     // Catch: android.os.RemoteException -> L15
            goto L1b
        L15:
            r1 = move-exception
            p168r4.cm0.m12439d(r0, r1)
            r4.f25864c = r0
        L1b:
            java.util.List r5 = r5.mo5943b()     // Catch: android.os.RemoteException -> L58
            java.util.Iterator r5 = r5.iterator()     // Catch: android.os.RemoteException -> L58
        L23:
            boolean r1 = r5.hasNext()     // Catch: android.os.RemoteException -> L58
            if (r1 == 0) goto L57
            java.lang.Object r1 = r5.next()     // Catch: android.os.RemoteException -> L58
            boolean r2 = r1 instanceof android.os.IBinder     // Catch: android.os.RemoteException -> L58
            r3 = 0
            if (r2 == 0) goto L4a
            android.os.IBinder r1 = (android.os.IBinder) r1     // Catch: android.os.RemoteException -> L58
            if (r1 != 0) goto L37
            goto L4a
        L37:
            java.lang.String r2 = "com.google.android.gms.ads.internal.formats.client.INativeAdImage"
            android.os.IInterface r2 = r1.queryLocalInterface(r2)     // Catch: android.os.RemoteException -> L58
            boolean r3 = r2 instanceof p168r4.p20     // Catch: android.os.RemoteException -> L58
            if (r3 == 0) goto L45
            r3 = r2
            r4.p20 r3 = (p168r4.p20) r3     // Catch: android.os.RemoteException -> L58
            goto L4a
        L45:
            r4.n20 r3 = new r4.n20     // Catch: android.os.RemoteException -> L58
            r3.<init>(r1)     // Catch: android.os.RemoteException -> L58
        L4a:
            if (r3 == 0) goto L23
            java.util.List<v2.d> r1 = r4.f25863b     // Catch: android.os.RemoteException -> L58
            r4.q20 r2 = new r4.q20     // Catch: android.os.RemoteException -> L58
            r2.<init>(r3)     // Catch: android.os.RemoteException -> L58
            r1.add(r2)     // Catch: android.os.RemoteException -> L58
            goto L23
        L57:
            return
        L58:
            r5 = move-exception
            p168r4.cm0.m12439d(r0, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.j20.<init>(r4.h20):void");
    }
}
