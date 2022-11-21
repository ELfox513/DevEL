package p168r4;

import java.lang.ref.WeakReference;
import java.util.Map;
/* renamed from: r4.eo1 */
/* loaded from: classes2.dex */
public final class eo1<T> implements u50<Object> {

    /* renamed from: a */
    public final WeakReference<T> f23094a;

    /* renamed from: b */
    public final String f23095b;

    /* renamed from: c */
    public final u50<T> f23096c;

    /* renamed from: d */
    public final /* synthetic */ fo1 f23097d;

    public /* synthetic */ eo1(fo1 fo1Var, WeakReference weakReference, String str, u50 u50Var, co1 co1Var) {
        this.f23097d = fo1Var;
        this.f23094a = weakReference;
        this.f23095b = str;
        this.f23096c = u50Var;
    }

    @Override // p168r4.u50
    /* renamed from: a */
    public final void mo4240a(Object obj, Map<String, String> map) {
        T t = this.f23094a.get();
        if (t == null) {
            this.f23097d.m11451f(this.f23095b, this);
        } else {
            this.f23096c.mo4240a(t, map);
        }
    }
}
