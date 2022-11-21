package p168r4;

import java.util.ArrayList;
import p145p.C5283g;
/* renamed from: r4.pj1 */
/* loaded from: classes2.dex */
public final class pj1 {

    /* renamed from: h */
    public static final pj1 f29477h = new pj1(new nj1());

    /* renamed from: a */
    public final n30 f29478a;

    /* renamed from: b */
    public final k30 f29479b;

    /* renamed from: c */
    public final a40 f29480c;

    /* renamed from: d */
    public final x30 f29481d;

    /* renamed from: e */
    public final c80 f29482e;

    /* renamed from: f */
    public final C5283g<String, t30> f29483f;

    /* renamed from: g */
    public final C5283g<String, q30> f29484g;

    public pj1(nj1 nj1Var) {
        this.f29478a = nj1Var.f28303a;
        this.f29479b = nj1Var.f28304b;
        this.f29480c = nj1Var.f28305c;
        this.f29483f = new C5283g<>(nj1Var.f28308f);
        this.f29484g = new C5283g<>(nj1Var.f28309g);
        this.f29481d = nj1Var.f28306d;
        this.f29482e = nj1Var.f28307e;
    }

    /* renamed from: a */
    public final n30 m8309a() {
        return this.f29478a;
    }

    /* renamed from: b */
    public final k30 m8308b() {
        return this.f29479b;
    }

    /* renamed from: c */
    public final a40 m8307c() {
        return this.f29480c;
    }

    /* renamed from: d */
    public final x30 m8306d() {
        return this.f29481d;
    }

    /* renamed from: e */
    public final c80 m8305e() {
        return this.f29482e;
    }

    /* renamed from: f */
    public final t30 m8304f(String str) {
        return this.f29483f.get(str);
    }

    /* renamed from: g */
    public final q30 m8303g(String str) {
        return this.f29484g.get(str);
    }

    /* renamed from: h */
    public final ArrayList<String> m8302h() {
        ArrayList<String> arrayList = new ArrayList<>();
        if (this.f29480c != null) {
            arrayList.add(Integer.toString(6));
        }
        if (this.f29478a != null) {
            arrayList.add(Integer.toString(1));
        }
        if (this.f29479b != null) {
            arrayList.add(Integer.toString(2));
        }
        if (this.f29483f.size() > 0) {
            arrayList.add(Integer.toString(3));
        }
        if (this.f29482e != null) {
            arrayList.add(Integer.toString(7));
        }
        return arrayList;
    }

    /* renamed from: i */
    public final ArrayList<String> m8301i() {
        ArrayList<String> arrayList = new ArrayList<>(this.f29483f.size());
        for (int i = 0; i < this.f29483f.size(); i++) {
            arrayList.add(this.f29483f.m13660i(i));
        }
        return arrayList;
    }
}
