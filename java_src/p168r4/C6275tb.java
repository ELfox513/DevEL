package p168r4;

import android.content.BroadcastReceiver;
/* renamed from: r4.tb */
/* loaded from: classes2.dex */
public final class C6275tb extends BroadcastReceiver {

    /* renamed from: a */
    public final /* synthetic */ C6349vb f31755a;

    public /* synthetic */ C6275tb(C6349vb c6349vb, C6238sb c6238sb) {
        this.f31755a = c6349vb;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0056  */
    @Override // android.content.BroadcastReceiver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onReceive(android.content.Context r10, android.content.Intent r11) {
        /*
            r9 = this;
            java.lang.String r11 = "connectivity"
            java.lang.Object r11 = r10.getSystemService(r11)
            android.net.ConnectivityManager r11 = (android.net.ConnectivityManager) r11
            r0 = 2
            r1 = 9
            r2 = 6
            r3 = 4
            r4 = 29
            r5 = 1
            r6 = 0
            r7 = 5
            if (r11 != 0) goto L16
        L14:
            r0 = 0
            goto L52
        L16:
            android.net.NetworkInfo r11 = r11.getActiveNetworkInfo()     // Catch: java.lang.SecurityException -> L50
            if (r11 == 0) goto L4e
            boolean r8 = r11.isConnected()
            if (r8 != 0) goto L23
            goto L4e
        L23:
            int r8 = r11.getType()
            if (r8 == 0) goto L3a
            if (r8 == r5) goto L52
            if (r8 == r3) goto L3a
            if (r8 == r7) goto L3a
            if (r8 == r2) goto L38
            if (r8 == r1) goto L36
            r0 = 8
            goto L52
        L36:
            r0 = 7
            goto L52
        L38:
            r0 = 5
            goto L52
        L3a:
            int r11 = r11.getSubtype()
            switch(r11) {
                case 1: goto L4c;
                case 2: goto L4c;
                case 3: goto L4a;
                case 4: goto L4a;
                case 5: goto L4a;
                case 6: goto L4a;
                case 7: goto L4a;
                case 8: goto L4a;
                case 9: goto L4a;
                case 10: goto L4a;
                case 11: goto L4a;
                case 12: goto L4a;
                case 13: goto L38;
                case 14: goto L4a;
                case 15: goto L4a;
                case 16: goto L41;
                case 17: goto L4a;
                case 18: goto L52;
                case 19: goto L41;
                case 20: goto L43;
                default: goto L41;
            }
        L41:
            r0 = 6
            goto L52
        L43:
            int r11 = p168r4.C5979lc.f27164a
            if (r11 < r4) goto L14
            r0 = 9
            goto L52
        L4a:
            r0 = 4
            goto L52
        L4c:
            r0 = 3
            goto L52
        L4e:
            r0 = 1
            goto L52
        L50:
            goto L14
        L52:
            int r11 = p168r4.C5979lc.f27164a
            if (r11 < r4) goto L7f
            p168r4.C6127pb.m8429a()
            if (r0 != r7) goto L7f
            java.lang.String r0 = "phone"
            java.lang.Object r10 = r10.getSystemService(r0)     // Catch: java.lang.RuntimeException -> L80
            android.telephony.TelephonyManager r10 = (android.telephony.TelephonyManager) r10     // Catch: java.lang.RuntimeException -> L80
            r10.getClass()
            r4.ub r0 = new r4.ub     // Catch: java.lang.RuntimeException -> L80
            r4.vb r1 = r9.f31755a     // Catch: java.lang.RuntimeException -> L80
            r2 = 0
            r0.<init>(r1, r2)     // Catch: java.lang.RuntimeException -> L80
            r1 = 31
            if (r11 >= r1) goto L76
            r10.listen(r0, r5)     // Catch: java.lang.RuntimeException -> L80
            goto L7b
        L76:
            r11 = 1048576(0x100000, float:1.469368E-39)
            r10.listen(r0, r11)     // Catch: java.lang.RuntimeException -> L80
        L7b:
            r10.listen(r0, r6)     // Catch: java.lang.RuntimeException -> L80
            return
        L7f:
            r7 = r0
        L80:
            r4.vb r10 = r9.f31755a
            p168r4.C6349vb.m6190d(r10, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.C6275tb.onReceive(android.content.Context, android.content.Intent):void");
    }
}
