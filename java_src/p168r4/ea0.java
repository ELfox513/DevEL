package p168r4;

import android.content.Context;
import p016b3.InterfaceC0487i0;
/* renamed from: r4.ea0 */
/* loaded from: classes2.dex */
public final class ea0 {

    /* renamed from: b */
    public static final InterfaceC0487i0<j80> f22917b = new ca0();

    /* renamed from: c */
    public static final InterfaceC0487i0<j80> f22918c = new da0();

    /* renamed from: a */
    public final p90 f22919a;

    public ea0(Context context, im0 im0Var, String str) {
        this.f22919a = new p90(context, im0Var, str, f22917b, f22918c);
    }

    /* renamed from: a */
    public final <I, O> t90<I, O> m11838a(String str, w90<I> w90Var, v90<O> v90Var) {
        return new ia0(this.f22919a, str, w90Var, v90Var);
    }

    /* renamed from: b */
    public final na0 m11837b() {
        return new na0(this.f22919a);
    }
}
