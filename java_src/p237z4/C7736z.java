package p237z4;

import java.util.List;
import java.util.Map;
import p237z4.AbstractC7673m0;
/* renamed from: z4.z */
/* loaded from: classes2.dex */
public final class C7736z implements InterfaceC7705r3 {

    /* renamed from: a */
    public final AbstractC7726x f37931a;

    @Override // p237z4.InterfaceC7705r3
    /* renamed from: A */
    public final void mo448A(int i, int i2) {
        this.f37931a.mo472i0(i, i2);
    }

    @Override // p237z4.InterfaceC7705r3
    /* renamed from: B */
    public final void mo447B(int i, List<Long> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f37931a.mo483J(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += AbstractC7726x.m489y0(list.get(i4).longValue());
            }
            this.f37931a.mo485D0(i3);
            while (i2 < list.size()) {
                this.f37931a.m496u0(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f37931a.m534K(i, list.get(i2).longValue());
            i2++;
        }
    }

    @Override // p237z4.InterfaceC7705r3
    /* renamed from: C */
    public final void mo446C(int i, List<Long> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f37931a.mo483J(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += AbstractC7726x.m491x0(list.get(i4).longValue());
            }
            this.f37931a.mo485D0(i3);
            while (i2 < list.size()) {
                this.f37931a.mo465r0(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f37931a.mo473i(i, list.get(i2).longValue());
            i2++;
        }
    }

    @Override // p237z4.InterfaceC7705r3
    /* renamed from: E */
    public final void mo444E(int i, List<?> list, InterfaceC7640f2 interfaceC7640f2) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            mo420m(i, list.get(i2), interfaceC7640f2);
        }
    }

    @Override // p237z4.InterfaceC7705r3
    /* renamed from: F */
    public final void mo443F(int i, List<Integer> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f37931a.mo483J(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += AbstractC7726x.m499t(list.get(i4).intValue());
            }
            this.f37931a.mo485D0(i3);
            while (i2 < list.size()) {
                this.f37931a.m539E0(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f37931a.m514g0(i, list.get(i2).intValue());
            i2++;
        }
    }

    @Override // p237z4.InterfaceC7705r3
    /* renamed from: G */
    public final void mo442G(int i, List<Double> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f37931a.mo483J(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += AbstractC7726x.m488z(list.get(i4).doubleValue());
            }
            this.f37931a.mo485D0(i3);
            while (i2 < list.size()) {
                this.f37931a.m518e(list.get(i2).doubleValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f37931a.m515g(i, list.get(i2).doubleValue());
            i2++;
        }
    }

    @Override // p237z4.InterfaceC7705r3
    /* renamed from: H */
    public final void mo441H(int i, List<?> list, InterfaceC7640f2 interfaceC7640f2) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            mo445D(i, list.get(i2), interfaceC7640f2);
        }
    }

    @Override // p237z4.InterfaceC7705r3
    /* renamed from: I */
    public final void mo440I(int i, List<AbstractC7652i> list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.f37931a.mo470k(i, list.get(i2));
        }
    }

    @Override // p237z4.InterfaceC7705r3
    /* renamed from: J */
    public final void mo439J(int i, int i2) {
        this.f37931a.mo474e0(i, i2);
    }

    @Override // p237z4.InterfaceC7705r3
    /* renamed from: L */
    public final void mo437L(int i, List<Float> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f37931a.mo483J(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += AbstractC7726x.m546A(list.get(i4).floatValue());
            }
            this.f37931a.mo485D0(i3);
            while (i2 < list.size()) {
                this.f37931a.m517f(list.get(i2).floatValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f37931a.m513h(i, list.get(i2).floatValue());
            i2++;
        }
    }

    @Override // p237z4.InterfaceC7705r3
    /* renamed from: M */
    public final void mo436M(int i, int i2) {
        this.f37931a.m514g0(i, i2);
    }

    @Override // p237z4.InterfaceC7705r3
    /* renamed from: a */
    public final void mo433a(int i, long j) {
        this.f37931a.m534K(i, j);
    }

    @Override // p237z4.InterfaceC7705r3
    /* renamed from: b */
    public final void mo432b(int i, int i2) {
        this.f37931a.mo478U(i, i2);
    }

    @Override // p237z4.InterfaceC7705r3
    /* renamed from: c */
    public final void mo431c(int i, long j) {
        this.f37931a.mo473i(i, j);
    }

    @Override // p237z4.InterfaceC7705r3
    /* renamed from: e */
    public final void mo429e(int i, List<Boolean> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f37931a.mo483J(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += AbstractC7726x.m519d0(list.get(i4).booleanValue());
            }
            this.f37931a.mo485D0(i3);
            while (i2 < list.size()) {
                this.f37931a.m528W(list.get(i2).booleanValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f37931a.mo481M(i, list.get(i2).booleanValue());
            i2++;
        }
    }

    @Override // p237z4.InterfaceC7705r3
    /* renamed from: f0 */
    public final void mo427f0(int i, String str) {
        this.f37931a.mo471j(i, str);
    }

    @Override // p237z4.InterfaceC7705r3
    /* renamed from: g */
    public final void mo426g(int i, List<Integer> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f37931a.mo483J(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += AbstractC7726x.m501r(list.get(i4).intValue());
            }
            this.f37931a.mo485D0(i3);
            while (i2 < list.size()) {
                this.f37931a.mo486C0(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f37931a.mo478U(i, list.get(i2).intValue());
            i2++;
        }
    }

    @Override // p237z4.InterfaceC7705r3
    /* renamed from: h */
    public final void mo425h(int i, List<Integer> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f37931a.mo483J(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += AbstractC7726x.m494w(list.get(i4).intValue());
            }
            this.f37931a.mo485D0(i3);
            while (i2 < list.size()) {
                this.f37931a.mo486C0(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f37931a.mo478U(i, list.get(i2).intValue());
            i2++;
        }
    }

    @Override // p237z4.InterfaceC7705r3
    /* renamed from: i */
    public final void mo424i(int i, boolean z) {
        this.f37931a.mo481M(i, z);
    }

    @Override // p237z4.InterfaceC7705r3
    /* renamed from: j */
    public final void mo423j(int i, long j) {
        this.f37931a.mo477V(i, j);
    }

    @Override // p237z4.InterfaceC7705r3
    /* renamed from: l */
    public final void mo421l(int i, List<Long> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f37931a.mo483J(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += AbstractC7726x.m493w0(list.get(i4).longValue());
            }
            this.f37931a.mo485D0(i3);
            while (i2 < list.size()) {
                this.f37931a.mo465r0(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f37931a.mo473i(i, list.get(i2).longValue());
            i2++;
        }
    }

    @Override // p237z4.InterfaceC7705r3
    /* renamed from: m */
    public final void mo420m(int i, Object obj, InterfaceC7640f2 interfaceC7640f2) {
        this.f37931a.mo468m(i, (InterfaceC7703r1) obj, interfaceC7640f2);
    }

    @Override // p237z4.InterfaceC7705r3
    /* renamed from: n */
    public final void mo419n(int i, List<Long> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f37931a.mo483J(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += AbstractC7726x.m545A0(list.get(i4).longValue());
            }
            this.f37931a.mo485D0(i3);
            while (i2 < list.size()) {
                this.f37931a.mo463v0(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f37931a.mo477V(i, list.get(i2).longValue());
            i2++;
        }
    }

    @Override // p237z4.InterfaceC7705r3
    /* renamed from: o */
    public final void mo418o(int i, List<Integer> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f37931a.mo483J(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += AbstractC7726x.m497u(list.get(i4).intValue());
            }
            this.f37931a.mo485D0(i3);
            while (i2 < list.size()) {
                this.f37931a.mo466p(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f37931a.mo472i0(i, list.get(i2).intValue());
            i2++;
        }
    }

    @Override // p237z4.InterfaceC7705r3
    /* renamed from: q */
    public final void mo416q(int i, List<Integer> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f37931a.mo483J(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += AbstractC7726x.m500s(list.get(i4).intValue());
            }
            this.f37931a.mo485D0(i3);
            while (i2 < list.size()) {
                this.f37931a.mo485D0(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f37931a.mo474e0(i, list.get(i2).intValue());
            i2++;
        }
    }

    @Override // p237z4.InterfaceC7705r3
    /* renamed from: r */
    public final int mo415r() {
        return AbstractC7673m0.C7677d.f37823l;
    }

    @Override // p237z4.InterfaceC7705r3
    /* renamed from: s */
    public final void mo414s(int i, List<Integer> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f37931a.mo483J(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += AbstractC7726x.m495v(list.get(i4).intValue());
            }
            this.f37931a.mo485D0(i3);
            while (i2 < list.size()) {
                this.f37931a.mo466p(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f37931a.mo472i0(i, list.get(i2).intValue());
            i2++;
        }
    }

    @Override // p237z4.InterfaceC7705r3
    /* renamed from: t */
    public final void mo413t(int i) {
        this.f37931a.mo483J(i, 3);
    }

    @Override // p237z4.InterfaceC7705r3
    /* renamed from: u */
    public final void mo412u(int i, double d) {
        this.f37931a.m515g(i, d);
    }

    @Override // p237z4.InterfaceC7705r3
    /* renamed from: v */
    public final void mo411v(int i, float f) {
        this.f37931a.m513h(i, f);
    }

    @Override // p237z4.InterfaceC7705r3
    /* renamed from: w */
    public final void mo410w(int i) {
        this.f37931a.mo483J(i, 4);
    }

    @Override // p237z4.InterfaceC7705r3
    /* renamed from: y */
    public final void mo408y(int i, List<Long> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f37931a.mo483J(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += AbstractC7726x.m487z0(list.get(i4).longValue());
            }
            this.f37931a.mo485D0(i3);
            while (i2 < list.size()) {
                this.f37931a.mo463v0(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f37931a.mo477V(i, list.get(i2).longValue());
            i2++;
        }
    }

    @Override // p237z4.InterfaceC7705r3
    /* renamed from: z */
    public final void mo407z(int i, AbstractC7652i abstractC7652i) {
        this.f37931a.mo470k(i, abstractC7652i);
    }

    /* renamed from: O */
    public static C7736z m434O(AbstractC7726x abstractC7726x) {
        C7736z c7736z = abstractC7726x.f37915a;
        if (c7736z != null) {
            return c7736z;
        }
        return new C7736z(abstractC7726x);
    }

    @Override // p237z4.InterfaceC7705r3
    /* renamed from: D */
    public final void mo445D(int i, Object obj, InterfaceC7640f2 interfaceC7640f2) {
        AbstractC7726x abstractC7726x = this.f37931a;
        abstractC7726x.mo483J(i, 3);
        interfaceC7640f2.mo549d((InterfaceC7703r1) obj, abstractC7726x.f37915a);
        abstractC7726x.mo483J(i, 4);
    }

    @Override // p237z4.InterfaceC7705r3
    /* renamed from: K */
    public final void mo438K(int i, int i2) {
        this.f37931a.mo472i0(i, i2);
    }

    @Override // p237z4.InterfaceC7705r3
    /* renamed from: N */
    public final void mo435N(int i, List<String> list) {
        int i2 = 0;
        if (list instanceof InterfaceC7610a1) {
            InterfaceC7610a1 interfaceC7610a1 = (InterfaceC7610a1) list;
            while (i2 < list.size()) {
                Object mo406G0 = interfaceC7610a1.mo406G0(i2);
                if (mo406G0 instanceof String) {
                    this.f37931a.mo471j(i, (String) mo406G0);
                } else {
                    this.f37931a.mo470k(i, (AbstractC7652i) mo406G0);
                }
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f37931a.mo471j(i, list.get(i2));
            i2++;
        }
    }

    @Override // p237z4.InterfaceC7705r3
    /* renamed from: d */
    public final void mo430d(int i, long j) {
        this.f37931a.mo477V(i, j);
    }

    @Override // p237z4.InterfaceC7705r3
    /* renamed from: k */
    public final void mo422k(int i, Object obj) {
        if (obj instanceof AbstractC7652i) {
            this.f37931a.mo482L(i, (AbstractC7652i) obj);
        } else {
            this.f37931a.mo469l(i, (InterfaceC7703r1) obj);
        }
    }

    @Override // p237z4.InterfaceC7705r3
    /* renamed from: p */
    public final void mo417p(int i, long j) {
        this.f37931a.mo473i(i, j);
    }

    @Override // p237z4.InterfaceC7705r3
    /* renamed from: x */
    public final void mo409x(int i, int i2) {
        this.f37931a.mo478U(i, i2);
    }

    public C7736z(AbstractC7726x abstractC7726x) {
        AbstractC7726x abstractC7726x2 = (AbstractC7726x) C7687o0.m632e(abstractC7726x, "output");
        this.f37931a = abstractC7726x2;
        abstractC7726x2.f37915a = this;
    }

    @Override // p237z4.InterfaceC7705r3
    /* renamed from: f */
    public final <K, V> void mo428f(int i, C7664k1<K, V> c7664k1, Map<K, V> map) {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.f37931a.mo483J(i, 2);
            this.f37931a.mo485D0(C7659j1.m679a(c7664k1, entry.getKey(), entry.getValue()));
            C7659j1.m678b(this.f37931a, c7664k1, entry.getKey(), entry.getValue());
        }
    }
}
