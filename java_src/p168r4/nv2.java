package p168r4;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
/* renamed from: r4.nv2 */
/* loaded from: classes2.dex */
public final class nv2 {

    /* renamed from: c */
    public static final nv2 f28609c = new nv2();

    /* renamed from: a */
    public final ArrayList<cv2> f28610a = new ArrayList<>();

    /* renamed from: b */
    public final ArrayList<cv2> f28611b = new ArrayList<>();

    /* renamed from: a */
    public static nv2 m8988a() {
        return f28609c;
    }

    /* renamed from: b */
    public final void m8987b(cv2 cv2Var) {
        this.f28610a.add(cv2Var);
    }

    /* renamed from: e */
    public final Collection<cv2> m8984e() {
        return Collections.unmodifiableCollection(this.f28610a);
    }

    /* renamed from: f */
    public final Collection<cv2> m8983f() {
        return Collections.unmodifiableCollection(this.f28611b);
    }

    /* renamed from: g */
    public final boolean m8982g() {
        return this.f28611b.size() > 0;
    }

    /* renamed from: c */
    public final void m8986c(cv2 cv2Var) {
        boolean m8982g = m8982g();
        this.f28611b.add(cv2Var);
        if (!m8982g) {
            uv2.m6337a().m6335c();
        }
    }

    /* renamed from: d */
    public final void m8985d(cv2 cv2Var) {
        boolean m8982g = m8982g();
        this.f28610a.remove(cv2Var);
        this.f28611b.remove(cv2Var);
        if (m8982g && !m8982g()) {
            uv2.m6337a().m6334d();
        }
    }
}
