package p168r4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
/* renamed from: r4.xu */
/* loaded from: classes2.dex */
public abstract class AbstractC6442xu<T> {

    /* renamed from: a */
    public static final InterfaceC5778fw f33769a;

    static {
        InterfaceC5778fw c5703dw;
        InterfaceC5778fw interfaceC5778fw = null;
        try {
            Object newInstance = C6405wu.class.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            if (!(newInstance instanceof IBinder)) {
                cm0.m12437f("ClientApi class is not an instance of IBinder.");
            } else {
                IBinder iBinder = (IBinder) newInstance;
                if (iBinder != null) {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IClientApi");
                    if (queryLocalInterface instanceof InterfaceC5778fw) {
                        c5703dw = (InterfaceC5778fw) queryLocalInterface;
                    } else {
                        c5703dw = new C5703dw(iBinder);
                    }
                    interfaceC5778fw = c5703dw;
                }
            }
        } catch (Exception unused) {
            cm0.m12437f("Failed to instantiate ClientApi class.");
        }
        f33769a = interfaceC5778fw;
    }

    /* renamed from: a */
    public abstract T mo4977a();

    /* renamed from: b */
    public abstract T mo4976b();

    /* renamed from: c */
    public abstract T mo4975c(InterfaceC5778fw interfaceC5778fw);

    /* JADX WARN: Removed duplicated region for block: B:19:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final T m4974d(android.content.Context r9, boolean r10) {
        /*
            r8 = this;
            r0 = 1
            if (r10 != 0) goto L15
            p168r4.C6479yu.m4568a()
            r1 = 12451000(0xbdfcb8, float:1.7447567E-38)
            boolean r1 = p168r4.vl0.m6116l(r9, r1)
            if (r1 != 0) goto L15
            java.lang.String r10 = "Google Play Services is not available."
            p168r4.cm0.m12442a(r10)
            r10 = 1
        L15:
            java.lang.String r1 = "com.google.android.gms.ads.dynamite"
            int r2 = com.google.android.gms.dynamite.DynamiteModule.m23007a(r9, r1)
            int r1 = com.google.android.gms.dynamite.DynamiteModule.m23005c(r9, r1)
            r3 = 0
            if (r2 <= r1) goto L24
            r1 = 0
            goto L25
        L24:
            r1 = 1
        L25:
            r1 = r1 ^ r0
            r10 = r10 | r1
            p168r4.C6225rz.m7278a(r9)
            r4.u00<java.lang.Boolean> r1 = p168r4.b10.f20803a
            java.lang.Object r1 = r1.m6673e()
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 == 0) goto L3a
        L38:
            r10 = 0
            goto L4d
        L3a:
            r4.u00<java.lang.Boolean> r1 = p168r4.b10.f20804b
            java.lang.Object r1 = r1.m6673e()
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 == 0) goto L4b
            r10 = 1
            r3 = 1
            goto L4d
        L4b:
            r3 = r10
            goto L38
        L4d:
            if (r3 == 0) goto L5c
            java.lang.Object r9 = r8.m4973e()
            if (r9 != 0) goto La2
            if (r10 != 0) goto La2
            java.lang.Object r9 = r8.m4972f()
            goto La2
        L5c:
            java.lang.Object r10 = r8.m4972f()
            if (r10 != 0) goto L9a
            r4.u00<java.lang.Long> r1 = p168r4.n10.f28074a
            java.lang.Object r1 = r1.m6673e()
            java.lang.Long r1 = (java.lang.Long) r1
            int r1 = r1.intValue()
            java.util.Random r2 = p168r4.C6479yu.m4564e()
            int r1 = r2.nextInt(r1)
            if (r1 != 0) goto L9a
            android.os.Bundle r6 = new android.os.Bundle
            r6.<init>()
            java.lang.String r1 = "action"
            java.lang.String r2 = "dynamite_load"
            r6.putString(r1, r2)
            java.lang.String r1 = "is_missing"
            r6.putInt(r1, r0)
            r4.vl0 r2 = p168r4.C6479yu.m4568a()
            r4.im0 r0 = p168r4.C6479yu.m4565d()
            java.lang.String r4 = r0.f25171a
            r7 = 1
            java.lang.String r5 = "gmob-apps"
            r3 = r9
            r2.m6123e(r3, r4, r5, r6, r7)
        L9a:
            if (r10 != 0) goto La1
            java.lang.Object r9 = r8.m4973e()
            goto La2
        La1:
            r9 = r10
        La2:
            if (r9 != 0) goto La8
            java.lang.Object r9 = r8.mo4977a()
        La8:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.AbstractC6442xu.m4974d(android.content.Context, boolean):java.lang.Object");
    }

    /* renamed from: e */
    public final T m4973e() {
        InterfaceC5778fw interfaceC5778fw = f33769a;
        if (interfaceC5778fw == null) {
            cm0.m12437f("ClientApi class cannot be loaded.");
            return null;
        }
        try {
            return mo4975c(interfaceC5778fw);
        } catch (RemoteException e) {
            cm0.m12436g("Cannot invoke local loader using ClientApi class.", e);
            return null;
        }
    }

    /* renamed from: f */
    public final T m4972f() {
        try {
            return mo4976b();
        } catch (RemoteException e) {
            cm0.m12436g("Cannot invoke remote loader.", e);
            return null;
        }
    }
}
