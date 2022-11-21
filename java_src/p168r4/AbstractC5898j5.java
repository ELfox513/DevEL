package p168r4;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
/* renamed from: r4.j5 */
/* loaded from: classes2.dex */
public abstract class AbstractC5898j5 implements InterfaceC6087o8 {

    /* renamed from: a */
    public final boolean f25895a;

    /* renamed from: b */
    public final ArrayList<InterfaceC5844ho> f25896b = new ArrayList<>(1);

    /* renamed from: c */
    public int f25897c;

    /* renamed from: d */
    public C6350vc f25898d;

    public AbstractC5898j5(boolean z) {
        this.f25895a = z;
    }

    @Override // p168r4.InterfaceC6087o8, p168r4.InterfaceC5915jm
    /* renamed from: d */
    public Map mo5983d() {
        return Collections.emptyMap();
    }

    /* renamed from: n */
    public final void m10422n(C6350vc c6350vc) {
        for (int i = 0; i < this.f25897c; i++) {
            this.f25896b.get(i).mo6688y(this, c6350vc, this.f25895a);
        }
    }

    /* renamed from: o */
    public final void m10421o(C6350vc c6350vc) {
        this.f25898d = c6350vc;
        for (int i = 0; i < this.f25897c; i++) {
            this.f25896b.get(i).mo6689s(this, c6350vc, this.f25895a);
        }
    }

    /* renamed from: r */
    public final void m10420r(int i) {
        C6350vc c6350vc = this.f25898d;
        int i2 = C5979lc.f27164a;
        for (int i3 = 0; i3 < this.f25897c; i3++) {
            this.f25896b.get(i3).mo6694f(this, c6350vc, this.f25895a, i);
        }
    }

    /* renamed from: s */
    public final void m10419s() {
        C6350vc c6350vc = this.f25898d;
        int i = C5979lc.f27164a;
        for (int i2 = 0; i2 < this.f25897c; i2++) {
            this.f25896b.get(i2).mo6699a(this, c6350vc, this.f25895a);
        }
        this.f25898d = null;
    }

    @Override // p168r4.InterfaceC6087o8
    /* renamed from: c */
    public final void mo5984c(InterfaceC5844ho interfaceC5844ho) {
        interfaceC5844ho.getClass();
        if (!this.f25896b.contains(interfaceC5844ho)) {
            this.f25896b.add(interfaceC5844ho);
            this.f25897c++;
        }
    }
}
