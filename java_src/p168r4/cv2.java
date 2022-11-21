package p168r4;

import android.view.View;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.regex.Pattern;
/* renamed from: r4.cv2 */
/* loaded from: classes2.dex */
public final class cv2 extends yu2 {

    /* renamed from: i */
    public static final Pattern f21712i = Pattern.compile("^[a-zA-Z0-9 ]+$");

    /* renamed from: a */
    public final av2 f21713a;

    /* renamed from: b */
    public final zu2 f21714b;

    /* renamed from: d */
    public ax2 f21716d;

    /* renamed from: e */
    public cw2 f21717e;

    /* renamed from: c */
    public final List<qv2> f21715c = new ArrayList();

    /* renamed from: f */
    public boolean f21718f = false;

    /* renamed from: g */
    public boolean f21719g = false;

    /* renamed from: h */
    public final String f21720h = UUID.randomUUID().toString();

    /* renamed from: f */
    public final List<qv2> m12343f() {
        return this.f21715c;
    }

    /* renamed from: g */
    public final cw2 m12342g() {
        return this.f21717e;
    }

    /* renamed from: h */
    public final String m12341h() {
        return this.f21720h;
    }

    /* renamed from: i */
    public final View m12340i() {
        return this.f21716d.get();
    }

    /* renamed from: j */
    public final boolean m12339j() {
        return this.f21718f && !this.f21719g;
    }

    /* renamed from: k */
    public final void m12338k(View view) {
        this.f21716d = new ax2(view);
    }

    @Override // p168r4.yu2
    /* renamed from: a */
    public final void mo4562a() {
        if (this.f21718f) {
            return;
        }
        this.f21718f = true;
        nv2.m8988a().m8986c(this);
        this.f21717e.m12290j(uv2.m6337a().m6332f());
        this.f21717e.mo11335h(this, this.f21713a);
    }

    @Override // p168r4.yu2
    /* renamed from: b */
    public final void mo4561b(View view) {
        if (this.f21719g || m12340i() == view) {
            return;
        }
        m12338k(view);
        this.f21717e.m12289k();
        Collection<cv2> m8984e = nv2.m8988a().m8984e();
        if (m8984e != null && m8984e.size() > 0) {
            for (cv2 cv2Var : m8984e) {
                if (cv2Var != this && cv2Var.m12340i() == view) {
                    cv2Var.f21716d.clear();
                }
            }
        }
    }

    @Override // p168r4.yu2
    /* renamed from: c */
    public final void mo4560c() {
        if (this.f21719g) {
            return;
        }
        this.f21716d.clear();
        if (!this.f21719g) {
            this.f21715c.clear();
        }
        this.f21719g = true;
        tv2.m6708a().m6705d(this.f21717e.m12295d());
        nv2.m8988a().m8985d(this);
        this.f21717e.mo11336b();
        this.f21717e = null;
    }

    @Override // p168r4.yu2
    /* renamed from: d */
    public final void mo4559d(View view, ev2 ev2Var, String str) {
        qv2 qv2Var;
        if (!this.f21719g) {
            if (f21712i.matcher("Ad overlay").matches()) {
                Iterator<qv2> it = this.f21715c.iterator();
                while (true) {
                    if (it.hasNext()) {
                        qv2Var = it.next();
                        if (qv2Var.m7660a().get() == view) {
                            break;
                        }
                    } else {
                        qv2Var = null;
                        break;
                    }
                }
                if (qv2Var == null) {
                    this.f21715c.add(new qv2(view, ev2Var, "Ad overlay"));
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("FriendlyObstruction has improperly formatted detailed reason");
        }
    }

    public cv2(zu2 zu2Var, av2 av2Var) {
        this.f21714b = zu2Var;
        this.f21713a = av2Var;
        m12338k(null);
        if (av2Var.m12926i() != bv2.HTML && av2Var.m12926i() != bv2.JAVASCRIPT) {
            this.f21717e = new fw2(av2Var.m12930e(), null);
        } else {
            this.f21717e = new dw2(av2Var.m12929f());
        }
        this.f21717e.mo11337a();
        nv2.m8988a().m8987b(this);
        tv2.m6708a().m6707b(this.f21717e.m12295d(), zu2Var.m4077b());
    }
}
