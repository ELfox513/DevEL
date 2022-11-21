package p168r4;

import java.nio.ByteBuffer;
/* renamed from: r4.wq0 */
/* loaded from: classes2.dex */
public final class wq0 extends qq0 implements InterfaceC6321uk<InterfaceC5766fk> {

    /* renamed from: k */
    public String f33278k;

    /* renamed from: p */
    public final oo0 f33279p;

    /* renamed from: q */
    public boolean f33280q;

    /* renamed from: r */
    public final vq0 f33281r;

    /* renamed from: s */
    public final aq0 f33282s;

    /* renamed from: t */
    public ByteBuffer f33283t;

    /* renamed from: u */
    public boolean f33284u;

    /* renamed from: v */
    public final Object f33285v;

    /* renamed from: w */
    public final String f33286w;

    /* renamed from: x */
    public final int f33287x;

    /* renamed from: y */
    public boolean f33288y;

    @Override // p168r4.InterfaceC6321uk
    /* renamed from: l */
    public final /* bridge */ /* synthetic */ void mo5195l(InterfaceC5766fk interfaceC5766fk, C5877ik c5877ik) {
        this.f33281r.m6038b((C5950kk) interfaceC5766fk);
    }

    @Override // p168r4.qq0
    /* renamed from: m */
    public final void mo4105m() {
        this.f33280q = true;
    }

    /* renamed from: t */
    public final String m5616t() {
        return this.f33278k;
    }

    /* renamed from: u */
    public final boolean m5615u() {
        return this.f33288y;
    }

    @Override // p168r4.InterfaceC6321uk
    /* renamed from: w */
    public final /* bridge */ /* synthetic */ void mo5188w(InterfaceC5766fk interfaceC5766fk, int i) {
    }

    /* renamed from: A */
    public final void m5617A() {
        boolean z;
        int m6039a = (int) this.f33281r.m6039a();
        int m12972a = (int) this.f33282s.m12972a(this.f33283t);
        int position = this.f33283t.position();
        int round = Math.round(m12972a * (position / m6039a));
        if (round > 0) {
            z = true;
        } else {
            z = false;
        }
        int m11458P = fo0.m11458P();
        int m11457Q = fo0.m11457Q();
        String str = this.f33278k;
        m7703o(str, m5613z(str), position, m6039a, round, m12972a, z, m11458P, m11457Q);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x00a5, code lost:
        r26.f33288y = true;
        m7701q(r27, r11, (int) r26.f33282s.m12972a(r26.f33283t));
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00d6, code lost:
        return true;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:? -> B:45:0x0143). Please submit an issue!!! */
    @Override // p168r4.qq0
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo4112e(java.lang.String r27) {
        /*
            Method dump skipped, instructions count: 434
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.wq0.mo4112e(java.lang.String):boolean");
    }

    /* renamed from: v */
    public final ByteBuffer m5614v() {
        synchronized (this.f33285v) {
            ByteBuffer byteBuffer = this.f33283t;
            if (byteBuffer != null && !this.f33284u) {
                byteBuffer.flip();
                this.f33284u = true;
            }
            this.f33280q = true;
        }
        return this.f33283t;
    }

    public wq0(po0 po0Var, oo0 oo0Var) {
        super(po0Var);
        String str;
        int i;
        this.f33279p = oo0Var;
        this.f33281r = new vq0();
        this.f33282s = new aq0();
        this.f33285v = new Object();
        if (po0Var != null) {
            str = po0Var.mo5055p();
        } else {
            str = "";
        }
        this.f33286w = str;
        if (po0Var != null) {
            i = po0Var.mo5058o();
        } else {
            i = 0;
        }
        this.f33287x = i;
    }

    /* renamed from: z */
    public static final String m5613z(String str) {
        String valueOf = String.valueOf(vl0.m6124d(str));
        if (valueOf.length() != 0) {
            return "cache:".concat(valueOf);
        }
        return new String("cache:");
    }
}
