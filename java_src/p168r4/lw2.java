package p168r4;

import android.view.View;
import android.view.ViewParent;
import java.util.HashMap;
import java.util.HashSet;
/* renamed from: r4.lw2 */
/* loaded from: classes2.dex */
public final class lw2 {

    /* renamed from: a */
    public final HashMap<View, String> f27399a = new HashMap<>();

    /* renamed from: b */
    public final HashMap<View, kw2> f27400b = new HashMap<>();

    /* renamed from: c */
    public final HashMap<String, View> f27401c = new HashMap<>();

    /* renamed from: d */
    public final HashSet<View> f27402d = new HashSet<>();

    /* renamed from: e */
    public final HashSet<String> f27403e = new HashSet<>();

    /* renamed from: f */
    public final HashSet<String> f27404f = new HashSet<>();

    /* renamed from: g */
    public final HashMap<String, String> f27405g = new HashMap<>();

    /* renamed from: h */
    public boolean f27406h;

    /* renamed from: a */
    public final HashSet<String> m9552a() {
        return this.f27403e;
    }

    /* renamed from: b */
    public final HashSet<String> m9551b() {
        return this.f27404f;
    }

    /* renamed from: c */
    public final String m9550c(String str) {
        return this.f27405g.get(str);
    }

    /* renamed from: f */
    public final void m9547f() {
        this.f27406h = true;
    }

    /* renamed from: h */
    public final View m9545h(String str) {
        return this.f27401c.get(str);
    }

    /* renamed from: j */
    public final int m9543j(View view) {
        if (this.f27402d.contains(view)) {
            return 1;
        }
        return this.f27406h ? 2 : 3;
    }

    /* renamed from: e */
    public final void m9548e() {
        this.f27399a.clear();
        this.f27400b.clear();
        this.f27401c.clear();
        this.f27402d.clear();
        this.f27403e.clear();
        this.f27404f.clear();
        this.f27405g.clear();
        this.f27406h = false;
    }

    /* renamed from: g */
    public final String m9546g(View view) {
        if (this.f27399a.size() == 0) {
            return null;
        }
        String str = this.f27399a.get(view);
        if (str != null) {
            this.f27399a.remove(view);
        }
        return str;
    }

    /* renamed from: i */
    public final kw2 m9544i(View view) {
        kw2 kw2Var = this.f27400b.get(view);
        if (kw2Var != null) {
            this.f27400b.remove(view);
        }
        return kw2Var;
    }

    /* renamed from: d */
    public final void m9549d() {
        nv2 m8988a = nv2.m8988a();
        if (m8988a != null) {
            for (cv2 cv2Var : m8988a.m8983f()) {
                View m12340i = cv2Var.m12340i();
                if (cv2Var.m12339j()) {
                    String m12341h = cv2Var.m12341h();
                    if (m12340i != null) {
                        String str = null;
                        if (!m12340i.hasWindowFocus()) {
                            str = "noWindowFocus";
                        } else {
                            HashSet hashSet = new HashSet();
                            View view = m12340i;
                            while (true) {
                                if (view != null) {
                                    String m10162b = jw2.m10162b(view);
                                    if (m10162b != null) {
                                        str = m10162b;
                                        break;
                                    }
                                    hashSet.add(view);
                                    ViewParent parent = view.getParent();
                                    if (parent instanceof View) {
                                        view = (View) parent;
                                    } else {
                                        view = null;
                                    }
                                } else {
                                    this.f27402d.addAll(hashSet);
                                    break;
                                }
                            }
                        }
                        if (str == null) {
                            this.f27403e.add(m12341h);
                            this.f27399a.put(m12340i, m12341h);
                            for (qv2 qv2Var : cv2Var.m12343f()) {
                                View view2 = qv2Var.m7660a().get();
                                if (view2 != null) {
                                    kw2 kw2Var = this.f27400b.get(view2);
                                    if (kw2Var != null) {
                                        kw2Var.m9856a(cv2Var.m12341h());
                                    } else {
                                        this.f27400b.put(view2, new kw2(qv2Var, cv2Var.m12341h()));
                                    }
                                }
                            }
                        } else {
                            this.f27404f.add(m12341h);
                            this.f27401c.put(m12341h, m12340i);
                            this.f27405g.put(m12341h, str);
                        }
                    } else {
                        this.f27404f.add(m12341h);
                        this.f27405g.put(m12341h, "noAdView");
                    }
                }
            }
        }
    }
}
