package p039d1;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import p084i1.InterfaceC4086a;
import p209w0.AbstractC7114j;
/* renamed from: d1.a */
/* loaded from: classes.dex */
public class C3268a extends AbstractC3270c<Boolean> {

    /* renamed from: i */
    public static final String f15573i = AbstractC7114j.m2489f("BatteryChrgTracker");

    public C3268a(Context context, InterfaceC4086a interfaceC4086a) {
        super(context, interfaceC4086a);
    }

    @Override // p039d1.AbstractC3270c
    /* renamed from: g */
    public IntentFilter mo19204g() {
        IntentFilter intentFilter = new IntentFilter();
        if (Build.VERSION.SDK_INT >= 23) {
            intentFilter.addAction("android.os.action.CHARGING");
            intentFilter.addAction("android.os.action.DISCHARGING");
        } else {
            intentFilter.addAction("android.intent.action.ACTION_POWER_CONNECTED");
            intentFilter.addAction("android.intent.action.ACTION_POWER_DISCONNECTED");
        }
        return intentFilter;
    }

    @Override // p039d1.AbstractC3272d
    /* renamed from: i */
    public Boolean mo19205b() {
        Intent registerReceiver = this.f15580b.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver == null) {
            AbstractC7114j.m2491c().mo2487b(f15573i, "getInitialState - null intent received", new Throwable[0]);
            return null;
        }
        return Boolean.valueOf(m19220j(registerReceiver));
    }

    /* renamed from: j */
    public final boolean m19220j(Intent intent) {
        if (Build.VERSION.SDK_INT >= 23) {
            int intExtra = intent.getIntExtra("status", -1);
            if (intExtra == 2 || intExtra == 5) {
                return true;
            }
        } else if (intent.getIntExtra("plugged", 0) != 0) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0044, code lost:
        if (r6.equals("android.os.action.DISCHARGING") == false) goto L7;
     */
    @Override // p039d1.AbstractC3270c
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo19203h(android.content.Context r6, android.content.Intent r7) {
        /*
            r5 = this;
            java.lang.String r6 = r7.getAction()
            if (r6 != 0) goto L7
            return
        L7:
            w0.j r7 = p209w0.AbstractC7114j.m2491c()
            java.lang.String r0 = p039d1.C3268a.f15573i
            r1 = 1
            java.lang.Object[] r2 = new java.lang.Object[r1]
            r3 = 0
            r2[r3] = r6
            java.lang.String r4 = "Received %s"
            java.lang.String r2 = java.lang.String.format(r4, r2)
            java.lang.Throwable[] r4 = new java.lang.Throwable[r3]
            r7.mo2488a(r0, r2, r4)
            r7 = -1
            int r0 = r6.hashCode()
            switch(r0) {
                case -1886648615: goto L47;
                case -54942926: goto L3e;
                case 948344062: goto L33;
                case 1019184907: goto L28;
                default: goto L26;
            }
        L26:
            r1 = -1
            goto L51
        L28:
            java.lang.String r0 = "android.intent.action.ACTION_POWER_CONNECTED"
            boolean r6 = r6.equals(r0)
            if (r6 != 0) goto L31
            goto L26
        L31:
            r1 = 3
            goto L51
        L33:
            java.lang.String r0 = "android.os.action.CHARGING"
            boolean r6 = r6.equals(r0)
            if (r6 != 0) goto L3c
            goto L26
        L3c:
            r1 = 2
            goto L51
        L3e:
            java.lang.String r0 = "android.os.action.DISCHARGING"
            boolean r6 = r6.equals(r0)
            if (r6 != 0) goto L51
            goto L26
        L47:
            java.lang.String r0 = "android.intent.action.ACTION_POWER_DISCONNECTED"
            boolean r6 = r6.equals(r0)
            if (r6 != 0) goto L50
            goto L26
        L50:
            r1 = 0
        L51:
            switch(r1) {
                case 0: goto L67;
                case 1: goto L61;
                case 2: goto L5b;
                case 3: goto L55;
                default: goto L54;
            }
        L54:
            goto L6c
        L55:
            java.lang.Boolean r6 = java.lang.Boolean.TRUE
            r5.m19216d(r6)
            goto L6c
        L5b:
            java.lang.Boolean r6 = java.lang.Boolean.TRUE
            r5.m19216d(r6)
            goto L6c
        L61:
            java.lang.Boolean r6 = java.lang.Boolean.FALSE
            r5.m19216d(r6)
            goto L6c
        L67:
            java.lang.Boolean r6 = java.lang.Boolean.FALSE
            r5.m19216d(r6)
        L6c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p039d1.C3268a.mo19203h(android.content.Context, android.content.Intent):void");
    }
}
