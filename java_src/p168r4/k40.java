package p168r4;

import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
import p184t2.C6726v;
import p202v2.AbstractC6976c;
import p202v2.AbstractC6977d;
import p202v2.AbstractC6984h;
/* renamed from: r4.k40 */
/* loaded from: classes2.dex */
public final class k40 extends AbstractC6984h {

    /* renamed from: a */
    public final j40 f26281a;

    /* renamed from: c */
    public final q20 f26283c;

    /* renamed from: e */
    public final AbstractC6976c f26285e;

    /* renamed from: b */
    public final List<AbstractC6977d> f26282b = new ArrayList();

    /* renamed from: d */
    public final C6726v f26284d = new C6726v();

    /* renamed from: f */
    public final List<Object> f26286f = new ArrayList();

    @Override // p202v2.AbstractC6984h
    /* renamed from: e */
    public final AbstractC6977d mo2779e() {
        return this.f26283c;
    }

    @Override // p202v2.AbstractC6984h
    /* renamed from: f */
    public final List<AbstractC6977d> mo2778f() {
        return this.f26282b;
    }

    @Override // p202v2.AbstractC6984h
    /* renamed from: h */
    public final Double mo2776h() {
        try {
            double mo8738i = this.f26281a.mo8738i();
            if (mo8738i == -1.0d) {
                return null;
            }
            return Double.valueOf(mo8738i);
        } catch (RemoteException e) {
            cm0.m12439d("", e);
            return null;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:1|(3:2|3|(2:5|(6:8|(4:13|(1:15)(1:22)|(3:17|18|19)(1:21)|20)|23|(0)(0)|20|6)))|(3:25|26|(2:28|(5:31|(1:33)(1:40)|(3:35|36|37)(1:39)|38|29)))|42|43|(7:45|46|47|48|(2:50|51)|53|54)|59|46|47|48|(0)|53|54) */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00bc, code lost:
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00bd, code lost:
        p168r4.cm0.m12439d("", r6);
     */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00af A[Catch: RemoteException -> 0x00bc, TRY_LEAVE, TryCatch #1 {RemoteException -> 0x00bc, blocks: (B:45:0x00a7, B:47:0x00af), top: B:55:0x00a7 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0050 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0027 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public k40(p168r4.j40 r6) {
        /*
            r5 = this;
            java.lang.String r0 = ""
            r5.<init>()
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r5.f26282b = r1
            t2.v r1 = new t2.v
            r1.<init>()
            r5.f26284d = r1
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r5.f26286f = r1
            r5.f26281a = r6
            r1 = 0
            java.util.List r6 = r6.mo8742d()     // Catch: android.os.RemoteException -> L5b
            if (r6 == 0) goto L5f
            java.util.Iterator r6 = r6.iterator()     // Catch: android.os.RemoteException -> L5b
        L27:
            boolean r2 = r6.hasNext()     // Catch: android.os.RemoteException -> L5b
            if (r2 == 0) goto L5f
            java.lang.Object r2 = r6.next()     // Catch: android.os.RemoteException -> L5b
            boolean r3 = r2 instanceof android.os.IBinder     // Catch: android.os.RemoteException -> L5b
            if (r3 == 0) goto L4d
            android.os.IBinder r2 = (android.os.IBinder) r2     // Catch: android.os.RemoteException -> L5b
            if (r2 != 0) goto L3a
            goto L4d
        L3a:
            java.lang.String r3 = "com.google.android.gms.ads.internal.formats.client.INativeAdImage"
            android.os.IInterface r3 = r2.queryLocalInterface(r3)     // Catch: android.os.RemoteException -> L5b
            boolean r4 = r3 instanceof p168r4.p20     // Catch: android.os.RemoteException -> L5b
            if (r4 == 0) goto L47
            r4.p20 r3 = (p168r4.p20) r3     // Catch: android.os.RemoteException -> L5b
            goto L4e
        L47:
            r4.n20 r3 = new r4.n20     // Catch: android.os.RemoteException -> L5b
            r3.<init>(r2)     // Catch: android.os.RemoteException -> L5b
            goto L4e
        L4d:
            r3 = r1
        L4e:
            if (r3 == 0) goto L27
            java.util.List<v2.d> r2 = r5.f26282b     // Catch: android.os.RemoteException -> L5b
            r4.q20 r4 = new r4.q20     // Catch: android.os.RemoteException -> L5b
            r4.<init>(r3)     // Catch: android.os.RemoteException -> L5b
            r2.add(r4)     // Catch: android.os.RemoteException -> L5b
            goto L27
        L5b:
            r6 = move-exception
            p168r4.cm0.m12439d(r0, r6)
        L5f:
            r4.j40 r6 = r5.f26281a     // Catch: android.os.RemoteException -> L8e
            java.util.List r6 = r6.mo8725v()     // Catch: android.os.RemoteException -> L8e
            if (r6 == 0) goto L92
            java.util.Iterator r6 = r6.iterator()     // Catch: android.os.RemoteException -> L8e
        L6b:
            boolean r2 = r6.hasNext()     // Catch: android.os.RemoteException -> L8e
            if (r2 == 0) goto L92
            java.lang.Object r2 = r6.next()     // Catch: android.os.RemoteException -> L8e
            boolean r3 = r2 instanceof android.os.IBinder     // Catch: android.os.RemoteException -> L8e
            if (r3 == 0) goto L80
            android.os.IBinder r2 = (android.os.IBinder) r2     // Catch: android.os.RemoteException -> L8e
            r4.uw r2 = p168r4.AbstractBinderC6296tw.m6700f7(r2)     // Catch: android.os.RemoteException -> L8e
            goto L81
        L80:
            r2 = r1
        L81:
            if (r2 == 0) goto L6b
            java.util.List<java.lang.Object> r3 = r5.f26286f     // Catch: android.os.RemoteException -> L8e
            r4.vw r4 = new r4.vw     // Catch: android.os.RemoteException -> L8e
            r4.<init>(r2)     // Catch: android.os.RemoteException -> L8e
            r3.add(r4)     // Catch: android.os.RemoteException -> L8e
            goto L6b
        L8e:
            r6 = move-exception
            p168r4.cm0.m12439d(r0, r6)
        L92:
            r4.j40 r6 = r5.f26281a     // Catch: android.os.RemoteException -> La0
            r4.p20 r6 = r6.mo8741f()     // Catch: android.os.RemoteException -> La0
            if (r6 == 0) goto La4
            r4.q20 r2 = new r4.q20     // Catch: android.os.RemoteException -> La0
            r2.<init>(r6)     // Catch: android.os.RemoteException -> La0
            goto La5
        La0:
            r6 = move-exception
            p168r4.cm0.m12439d(r0, r6)
        La4:
            r2 = r1
        La5:
            r5.f26283c = r2
            r4.j40 r6 = r5.f26281a     // Catch: android.os.RemoteException -> Lbc
            r4.h20 r6 = r6.mo8733m()     // Catch: android.os.RemoteException -> Lbc
            if (r6 == 0) goto Lc0
            r4.j20 r6 = new r4.j20     // Catch: android.os.RemoteException -> Lbc
            r4.j40 r2 = r5.f26281a     // Catch: android.os.RemoteException -> Lbc
            r4.h20 r2 = r2.mo8733m()     // Catch: android.os.RemoteException -> Lbc
            r6.<init>(r2)     // Catch: android.os.RemoteException -> Lbc
            r1 = r6
            goto Lc0
        Lbc:
            r6 = move-exception
            p168r4.cm0.m12439d(r0, r6)
        Lc0:
            r5.f26285e = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.k40.<init>(r4.j40):void");
    }

    @Override // p202v2.AbstractC6984h
    /* renamed from: a */
    public final String mo2783a() {
        try {
            return this.f26281a.mo8739h();
        } catch (RemoteException e) {
            cm0.m12439d("", e);
            return null;
        }
    }

    @Override // p202v2.AbstractC6984h
    /* renamed from: b */
    public final String mo2782b() {
        try {
            return this.f26281a.mo8740g();
        } catch (RemoteException e) {
            cm0.m12439d("", e);
            return null;
        }
    }

    @Override // p202v2.AbstractC6984h
    /* renamed from: c */
    public final String mo2781c() {
        try {
            return this.f26281a.mo8737j();
        } catch (RemoteException e) {
            cm0.m12439d("", e);
            return null;
        }
    }

    @Override // p202v2.AbstractC6984h
    /* renamed from: d */
    public final String mo2780d() {
        try {
            return this.f26281a.mo8743c();
        } catch (RemoteException e) {
            cm0.m12439d("", e);
            return null;
        }
    }

    @Override // p202v2.AbstractC6984h
    /* renamed from: g */
    public final String mo2777g() {
        try {
            return this.f26281a.mo8734l();
        } catch (RemoteException e) {
            cm0.m12439d("", e);
            return null;
        }
    }

    @Override // p202v2.AbstractC6984h
    /* renamed from: i */
    public final String mo2775i() {
        try {
            return this.f26281a.mo8736k();
        } catch (RemoteException e) {
            cm0.m12439d("", e);
            return null;
        }
    }

    @Override // p202v2.AbstractC6984h
    /* renamed from: j */
    public final C6726v mo2774j() {
        try {
            if (this.f26281a.mo8731p() != null) {
                this.f26284d.m3547b(this.f26281a.mo8731p());
            }
        } catch (RemoteException e) {
            cm0.m12439d("Exception occurred while getting video controller", e);
        }
        return this.f26284d;
    }

    @Override // p202v2.AbstractC6984h
    /* renamed from: k */
    public final Object mo2773k() {
        try {
            InterfaceC3512a mo8751E = this.f26281a.mo8751E();
            if (mo8751E != null) {
                return BinderC3514b.m18740t0(mo8751E);
            }
            return null;
        } catch (RemoteException e) {
            cm0.m12439d("", e);
            return null;
        }
    }
}
