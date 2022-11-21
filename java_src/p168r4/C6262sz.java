package p168r4;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
/* renamed from: r4.sz */
/* loaded from: classes2.dex */
public final class C6262sz {
    /* renamed from: a */
    public static List<String> m6948a() {
        ArrayList arrayList = new ArrayList();
        m6946c(arrayList, u00.m6674d("gad:dynamite_module:experiment_id", ""));
        m6946c(arrayList, d10.f22020a);
        m6946c(arrayList, d10.f22021b);
        m6946c(arrayList, d10.f22022c);
        m6946c(arrayList, d10.f22023d);
        m6946c(arrayList, d10.f22024e);
        m6946c(arrayList, d10.f22030k);
        m6946c(arrayList, d10.f22025f);
        m6946c(arrayList, d10.f22026g);
        m6946c(arrayList, d10.f22027h);
        m6946c(arrayList, d10.f22028i);
        m6946c(arrayList, d10.f22029j);
        return arrayList;
    }

    /* renamed from: b */
    public static List<String> m6947b() {
        ArrayList arrayList = new ArrayList();
        m6946c(arrayList, p10.f29308a);
        return arrayList;
    }

    /* renamed from: c */
    public static void m6946c(List<String> list, u00<String> u00Var) {
        String m6673e = u00Var.m6673e();
        if (!TextUtils.isEmpty(m6673e)) {
            list.add(m6673e);
        }
    }
}
