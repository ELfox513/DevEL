package p004a3;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import net.bytebuddy.jar.asm.Opcodes;
import p016b3.C0497k2;
import p026c4.C1054o;
import p168r4.InterfaceC5812gt;
import p168r4.cf1;
import p235z2.C7601t;
/* renamed from: a3.o */
/* loaded from: classes.dex */
public final class C0074o {
    /* renamed from: a */
    public static final void m27689a(Context context, AdOverlayInfoParcel adOverlayInfoParcel, boolean z) {
        InterfaceC0081v interfaceC0081v;
        if (adOverlayInfoParcel.f7641v == 4 && adOverlayInfoParcel.f7633d == null) {
            InterfaceC5812gt interfaceC5812gt = adOverlayInfoParcel.f7632b;
            if (interfaceC5812gt != null) {
                interfaceC5812gt.mo3609F0();
            }
            cf1 cf1Var = adOverlayInfoParcel.f7630J;
            if (cf1Var != null) {
                cf1Var.mo5096a();
            }
            Activity mo5078h = adOverlayInfoParcel.f7634k.mo5078h();
            C0064e c0064e = adOverlayInfoParcel.f7631a;
            if (c0064e != null && c0064e.f109u && mo5078h != null) {
                context = mo5078h;
            }
            C7601t.m941b();
            C0064e c0064e2 = adOverlayInfoParcel.f7631a;
            InterfaceC0083x interfaceC0083x = adOverlayInfoParcel.f7639t;
            if (c0064e2 != null) {
                interfaceC0081v = c0064e2.f108t;
            } else {
                interfaceC0081v = null;
            }
            C0058a.m27708b(context, c0064e2, interfaceC0083x, interfaceC0081v);
            return;
        }
        Intent intent = new Intent();
        intent.setClassName(context, "com.google.android.gms.ads.AdActivity");
        intent.putExtra("com.google.android.gms.ads.internal.overlay.useClientJar", adOverlayInfoParcel.f7643x.f25174k);
        intent.putExtra("shouldCallOnOverlayOpened", z);
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", adOverlayInfoParcel);
        intent.putExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", bundle);
        if (!C1054o.m24733h()) {
            intent.addFlags(Opcodes.ASM8);
        }
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        C7601t.m939d();
        C0497k2.m26306p(context, intent);
    }
}
