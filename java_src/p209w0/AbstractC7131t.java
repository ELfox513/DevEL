package p209w0;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.work.C0376a;
import java.util.Collections;
import java.util.List;
import p217x0.C7199i;
@SuppressLint({"AddedAbstractMethod"})
/* renamed from: w0.t */
/* loaded from: classes.dex */
public abstract class AbstractC7131t {
    /* renamed from: g */
    public static AbstractC7131t m2475g(Context context) {
        return C7199i.m2163n(context);
    }

    /* renamed from: h */
    public static void m2474h(Context context, C0376a c0376a) {
        C7199i.m2169h(context, c0376a);
    }

    /* renamed from: a */
    public abstract AbstractC7129r mo2173a(String str, EnumC7107d enumC7107d, List<C7117l> list);

    /* renamed from: b */
    public final AbstractC7129r m2477b(String str, EnumC7107d enumC7107d, C7117l c7117l) {
        return mo2173a(str, enumC7107d, Collections.singletonList(c7117l));
    }

    /* renamed from: c */
    public abstract InterfaceC7119m mo2172c(String str);

    /* renamed from: d */
    public abstract InterfaceC7119m mo2171d(String str);

    /* renamed from: e */
    public abstract InterfaceC7119m mo2170e(List<? extends AbstractC7132u> list);

    /* renamed from: f */
    public final InterfaceC7119m m2476f(AbstractC7132u abstractC7132u) {
        return mo2170e(Collections.singletonList(abstractC7132u));
    }
}
