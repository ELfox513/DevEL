package p130n2;

import android.content.Context;
import android.os.Build;
import p139o2.AbstractC5072g;
import p139o2.C5064a;
import p139o2.C5070e;
import p139o2.InterfaceC5091v;
import p148p2.InterfaceC5321c;
import p166r2.InterfaceC5525a;
/* renamed from: n2.h */
/* loaded from: classes.dex */
public abstract class AbstractC4741h {
    /* renamed from: a */
    public static InterfaceC5091v m15489a(Context context, InterfaceC5321c interfaceC5321c, AbstractC5072g abstractC5072g, InterfaceC5525a interfaceC5525a) {
        if (Build.VERSION.SDK_INT >= 21) {
            return new C5070e(context, interfaceC5321c, abstractC5072g);
        }
        return new C5064a(context, interfaceC5321c, interfaceC5525a, abstractC5072g);
    }
}
