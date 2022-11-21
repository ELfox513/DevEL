package p168r4;
/* renamed from: r4.ku3 */
/* loaded from: classes2.dex */
public final class ku3 implements qt3 {

    /* renamed from: a */
    public final InterfaceC5974l7 f26563a;

    /* renamed from: b */
    public final wt3 f26564b;

    /* renamed from: c */
    public int f26565c;

    /* renamed from: d */
    public final ww3 f26566d;

    /* renamed from: e */
    public final ll2 f26567e;

    /* renamed from: a */
    public final ku3 m9948a(int i) {
        this.f26565c = i;
        return this;
    }

    public ku3(InterfaceC5974l7 interfaceC5974l7, final g04 g04Var) {
        wt3 wt3Var = new wt3(g04Var) { // from class: r4.ju3

            /* renamed from: a */
            public final g04 f26154a;

            {
                this.f26154a = g04Var;
            }

            @Override // p168r4.wt3
            public final xt3 zza() {
                return new tq3(this.f26154a);
            }
        };
        this.f26563a = interfaceC5974l7;
        this.f26564b = wt3Var;
        this.f26567e = new ll2();
        this.f26566d = new ww3(-1);
        this.f26565c = 1048576;
    }

    /* renamed from: b */
    public final mu3 m9947b(C6306u5 c6306u5) {
        c6306u5.f32176b.getClass();
        return new mu3(c6306u5, this.f26563a, this.f26564b, ut2.f32389a, this.f26566d, this.f26565c, null, null);
    }
}
