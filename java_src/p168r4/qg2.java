package p168r4;

import android.content.Context;
import java.util.concurrent.Callable;
/* renamed from: r4.qg2 */
/* loaded from: classes2.dex */
public final class qg2 implements eg2<og2> {

    /* renamed from: a */
    public final i83 f30111a;

    /* renamed from: b */
    public final Context f30112b;

    public qg2(i83 i83Var, Context context) {
        this.f30111a = i83Var;
        this.f30112b = context;
    }

    @Override // p168r4.eg2
    public final h83<og2> zza() {
        return this.f30111a.mo8015c(new Callable(this) { // from class: r4.pg2

            /* renamed from: a */
            public final qg2 f29461a;

            {
                this.f29461a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f29461a.m7865a();
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ p168r4.og2 m7865a() {
        /*
            r9 = this;
            android.content.Context r0 = r9.f30112b
            java.lang.String r1 = "phone"
            java.lang.Object r0 = r0.getSystemService(r1)
            android.telephony.TelephonyManager r0 = (android.telephony.TelephonyManager) r0
            java.lang.String r2 = r0.getNetworkOperator()
            boolean r1 = p026c4.C1054o.m24729l()
            r3 = 0
            if (r1 == 0) goto L29
            r4.jz<java.lang.Boolean> r1 = p168r4.C6225rz.f31000d6
            r4.pz r4 = p168r4.C5592av.m12935c()
            java.lang.Object r1 = r4.m8098c(r1)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 == 0) goto L29
            r4 = 0
            goto L2e
        L29:
            int r1 = r0.getNetworkType()
            r4 = r1
        L2e:
            int r5 = r0.getPhoneType()
            p235z2.C7601t.m939d()
            android.content.Context r0 = r9.f30112b
            java.lang.String r1 = "android.permission.ACCESS_NETWORK_STATE"
            boolean r0 = p016b3.C0497k2.m26320e(r0, r1)
            r1 = -1
            if (r0 == 0) goto L68
            android.content.Context r0 = r9.f30112b
            java.lang.String r3 = "connectivity"
            java.lang.Object r0 = r0.getSystemService(r3)
            android.net.ConnectivityManager r0 = (android.net.ConnectivityManager) r0
            android.net.NetworkInfo r3 = r0.getActiveNetworkInfo()
            if (r3 == 0) goto L60
            int r1 = r3.getType()
            android.net.NetworkInfo$DetailedState r3 = r3.getDetailedState()
            int r3 = r3.ordinal()
            r8 = r3
            r3 = r1
            r1 = r8
            goto L61
        L60:
            r3 = -1
        L61:
            boolean r0 = r0.isActiveNetworkMetered()
            r6 = r0
            r7 = r1
            goto L6c
        L68:
            r0 = -2
            r3 = -2
            r6 = 0
            r7 = -1
        L6c:
            r4.og2 r0 = new r4.og2
            r1 = r0
            r1.<init>(r2, r3, r4, r5, r6, r7)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.qg2.m7865a():r4.og2");
    }
}
