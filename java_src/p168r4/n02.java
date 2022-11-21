package p168r4;

import android.content.Context;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.util.SparseArray;
import java.util.ArrayList;
import p016b3.InterfaceC0549y1;
import p235z2.C7601t;
/* renamed from: r4.n02 */
/* loaded from: classes2.dex */
public final class n02 {

    /* renamed from: h */
    public static final SparseArray<EnumC6402wr> f28046h;

    /* renamed from: a */
    public final Context f28047a;

    /* renamed from: b */
    public final o61 f28048b;

    /* renamed from: c */
    public final TelephonyManager f28049c;

    /* renamed from: d */
    public final f02 f28050d;

    /* renamed from: e */
    public final b02 f28051e;

    /* renamed from: f */
    public final InterfaceC0549y1 f28052f;

    /* renamed from: g */
    public int f28053g;

    public n02(Context context, o61 o61Var, f02 f02Var, b02 b02Var, InterfaceC0549y1 interfaceC0549y1) {
        this.f28047a = context;
        this.f28048b = o61Var;
        this.f28050d = f02Var;
        this.f28051e = b02Var;
        this.f28049c = (TelephonyManager) context.getSystemService("phone");
        this.f28052f = interfaceC0549y1;
    }

    /* renamed from: g */
    public static final int m9223g(boolean z) {
        return z ? 2 : 1;
    }

    static {
        SparseArray<EnumC6402wr> sparseArray = new SparseArray<>();
        f28046h = sparseArray;
        sparseArray.put(NetworkInfo.DetailedState.CONNECTED.ordinal(), EnumC6402wr.CONNECTED);
        int ordinal = NetworkInfo.DetailedState.AUTHENTICATING.ordinal();
        EnumC6402wr enumC6402wr = EnumC6402wr.CONNECTING;
        sparseArray.put(ordinal, enumC6402wr);
        sparseArray.put(NetworkInfo.DetailedState.CONNECTING.ordinal(), enumC6402wr);
        sparseArray.put(NetworkInfo.DetailedState.OBTAINING_IPADDR.ordinal(), enumC6402wr);
        sparseArray.put(NetworkInfo.DetailedState.DISCONNECTING.ordinal(), EnumC6402wr.DISCONNECTING);
        int ordinal2 = NetworkInfo.DetailedState.BLOCKED.ordinal();
        EnumC6402wr enumC6402wr2 = EnumC6402wr.DISCONNECTED;
        sparseArray.put(ordinal2, enumC6402wr2);
        sparseArray.put(NetworkInfo.DetailedState.DISCONNECTED.ordinal(), enumC6402wr2);
        sparseArray.put(NetworkInfo.DetailedState.FAILED.ordinal(), enumC6402wr2);
        sparseArray.put(NetworkInfo.DetailedState.IDLE.ordinal(), enumC6402wr2);
        sparseArray.put(NetworkInfo.DetailedState.SCANNING.ordinal(), enumC6402wr2);
        sparseArray.put(NetworkInfo.DetailedState.SUSPENDED.ordinal(), EnumC6402wr.SUSPENDED);
        if (Build.VERSION.SDK_INT >= 17) {
            sparseArray.put(NetworkInfo.DetailedState.CAPTIVE_PORTAL_CHECK.ordinal(), enumC6402wr);
        }
        sparseArray.put(NetworkInfo.DetailedState.VERIFYING_POOR_LINK.ordinal(), enumC6402wr);
    }

    /* renamed from: f */
    public final void m9224f(boolean z) {
        y73.m4799p(this.f28048b.m8878a(), new m02(this, z), qm0.f30195f);
    }

    /* renamed from: c */
    public static /* synthetic */ C6069nr m9227c(n02 n02Var, Bundle bundle) {
        C5773fr m9010E = C6069nr.m9010E();
        int i = bundle.getInt("cnt", -2);
        int i2 = bundle.getInt("gnt", 0);
        int i3 = 2;
        if (i == -1) {
            n02Var.f28053g = 2;
        } else {
            n02Var.f28053g = 1;
            if (i != 0) {
                if (i != 1) {
                    m9010E.m11392v(1);
                } else {
                    m9010E.m11392v(3);
                }
            } else {
                m9010E.m11392v(2);
            }
            switch (i2) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                case 16:
                    break;
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                case 17:
                    i3 = 3;
                    break;
                case 13:
                    i3 = 5;
                    break;
                default:
                    i3 = 1;
                    break;
            }
            m9010E.m11391x(i3);
        }
        return m9010E.m9614o();
    }

    /* renamed from: e */
    public static /* synthetic */ byte[] m9225e(n02 n02Var, boolean z, ArrayList arrayList, C6069nr c6069nr, EnumC6402wr enumC6402wr) {
        boolean z2;
        C6217rr m7049P = C6254sr.m7049P();
        m7049P.m7362A(arrayList);
        boolean z3 = true;
        if (C7601t.m937f().mo26285f(n02Var.f28047a.getContentResolver()) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        m7049P.m7356J(m9223g(z2));
        m7049P.m7355K(C7601t.m937f().mo26376p(n02Var.f28047a, n02Var.f28049c));
        m7049P.m7352x(n02Var.f28050d.m11655d());
        m7049P.m7351z(n02Var.f28050d.m11651h());
        m7049P.m7360C(n02Var.f28050d.m11657b());
        m7049P.m7359D(enumC6402wr);
        m7049P.m7361B(c6069nr);
        m7049P.m7354L(n02Var.f28053g);
        m7049P.m7358E(m9223g(z));
        m7049P.m7353v(C7601t.m932k().mo24763a());
        if (C7601t.m937f().mo26286e(n02Var.f28047a.getContentResolver()) == 0) {
            z3 = false;
        }
        m7049P.m7357I(m9223g(z3));
        return m7049P.m9614o().mo6490t();
    }
}
