package p168r4;
/* renamed from: r4.ys3 */
/* loaded from: classes2.dex */
public final class ys3 extends ts3 {

    /* renamed from: f */
    public static final Object f34194f = new Object();

    /* renamed from: d */
    public final Object f34195d;

    /* renamed from: e */
    public final Object f34196e;

    public ys3(AbstractC5717e8 abstractC5717e8, Object obj, Object obj2) {
        super(abstractC5717e8);
        this.f34195d = obj;
        this.f34196e = obj2;
    }

    /* renamed from: p */
    public static /* synthetic */ Object m4580p(ys3 ys3Var) {
        return ys3Var.f34196e;
    }

    /* renamed from: q */
    public static ys3 m4579q(C6306u5 c6306u5) {
        return new ys3(new at3(c6306u5), C5679d8.f22142o, f34194f);
    }

    /* renamed from: r */
    public static ys3 m4578r(AbstractC5717e8 abstractC5717e8, Object obj, Object obj2) {
        return new ys3(abstractC5717e8, obj, obj2);
    }

    /* renamed from: s */
    public final ys3 m4577s(AbstractC5717e8 abstractC5717e8) {
        return new ys3(abstractC5717e8, this.f34195d, this.f34196e);
    }

    @Override // p168r4.AbstractC5717e8
    /* renamed from: f */
    public final C5679d8 mo4075f(int i, C5679d8 c5679d8, long j) {
        this.f31984c.mo4075f(i, c5679d8, j);
        if (C5979lc.m9729H(c5679d8.f22146a, this.f34195d)) {
            c5679d8.f22146a = C5679d8.f22142o;
        }
        return c5679d8;
    }

    @Override // p168r4.AbstractC5717e8
    /* renamed from: h */
    public final C5606b8 mo4073h(int i, C5606b8 c5606b8, boolean z) {
        this.f31984c.mo4073h(i, c5606b8, z);
        if (C5979lc.m9729H(c5606b8.f20894b, this.f34196e) && z) {
            c5606b8.f20894b = f34194f;
        }
        return c5606b8;
    }

    @Override // p168r4.ts3, p168r4.AbstractC5717e8
    /* renamed from: i */
    public final int mo4072i(Object obj) {
        Object obj2;
        AbstractC5717e8 abstractC5717e8 = this.f31984c;
        if (f34194f.equals(obj) && (obj2 = this.f34196e) != null) {
            obj = obj2;
        }
        return abstractC5717e8.mo4072i(obj);
    }

    @Override // p168r4.ts3, p168r4.AbstractC5717e8
    /* renamed from: j */
    public final Object mo4071j(int i) {
        Object mo4071j = this.f31984c.mo4071j(i);
        if (C5979lc.m9729H(mo4071j, this.f34196e)) {
            return f34194f;
        }
        return mo4071j;
    }
}
