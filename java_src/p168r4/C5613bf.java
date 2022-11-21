package p168r4;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
/* renamed from: r4.bf */
/* loaded from: classes2.dex */
public final class C5613bf implements InterfaceC6462yd {

    /* renamed from: d */
    public C6500ze f21026d;

    /* renamed from: g */
    public ByteBuffer f21029g;

    /* renamed from: h */
    public ShortBuffer f21030h;

    /* renamed from: i */
    public ByteBuffer f21031i;

    /* renamed from: j */
    public long f21032j;

    /* renamed from: k */
    public long f21033k;

    /* renamed from: l */
    public boolean f21034l;

    /* renamed from: e */
    public float f21027e = 1.0f;

    /* renamed from: f */
    public float f21028f = 1.0f;

    /* renamed from: b */
    public int f21024b = -1;

    /* renamed from: c */
    public int f21025c = -1;

    public C5613bf() {
        ByteBuffer byteBuffer = InterfaceC6462yd.f34027a;
        this.f21029g = byteBuffer;
        this.f21030h = byteBuffer.asShortBuffer();
        this.f21031i = byteBuffer;
    }

    @Override // p168r4.InterfaceC6462yd
    /* renamed from: a */
    public final boolean mo4755a() {
        return Math.abs(this.f21027e + (-1.0f)) >= 0.01f || Math.abs(this.f21028f + (-1.0f)) >= 0.01f;
    }

    @Override // p168r4.InterfaceC6462yd
    /* renamed from: b */
    public final int mo4754b() {
        return this.f21024b;
    }

    @Override // p168r4.InterfaceC6462yd
    /* renamed from: d */
    public final void mo4752d() {
        this.f21026d.m4288e();
        this.f21034l = true;
    }

    @Override // p168r4.InterfaceC6462yd
    /* renamed from: e */
    public final int mo4751e() {
        return 2;
    }

    @Override // p168r4.InterfaceC6462yd
    /* renamed from: f */
    public final boolean mo4750f() {
        C6500ze c6500ze;
        return this.f21034l && ((c6500ze = this.f21026d) == null || c6500ze.m4287f() == 0);
    }

    @Override // p168r4.InterfaceC6462yd
    /* renamed from: g */
    public final ByteBuffer mo4749g() {
        ByteBuffer byteBuffer = this.f21031i;
        this.f21031i = InterfaceC6462yd.f34027a;
        return byteBuffer;
    }

    @Override // p168r4.InterfaceC6462yd
    /* renamed from: h */
    public final void mo4748h() {
        this.f21026d = null;
        ByteBuffer byteBuffer = InterfaceC6462yd.f34027a;
        this.f21029g = byteBuffer;
        this.f21030h = byteBuffer.asShortBuffer();
        this.f21031i = byteBuffer;
        this.f21024b = -1;
        this.f21025c = -1;
        this.f21032j = 0L;
        this.f21033k = 0L;
        this.f21034l = false;
    }

    @Override // p168r4.InterfaceC6462yd
    /* renamed from: i */
    public final boolean mo4747i(int i, int i2, int i3) {
        if (i3 == 2) {
            if (this.f21025c == i && this.f21024b == i2) {
                return false;
            }
            this.f21025c = i;
            this.f21024b = i2;
            return true;
        }
        throw new C6425xd(i, i2, i3);
    }

    /* renamed from: k */
    public final float m12785k(float f) {
        float m9647g = C5988ll.m9647g(f, 0.1f, 8.0f);
        this.f21027e = m9647g;
        return m9647g;
    }

    /* renamed from: l */
    public final float m12784l(float f) {
        this.f21028f = C5988ll.m9647g(1.0f, 0.1f, 8.0f);
        return 1.0f;
    }

    /* renamed from: m */
    public final long m12783m() {
        return this.f21032j;
    }

    /* renamed from: n */
    public final long m12782n() {
        return this.f21033k;
    }

    @Override // p168r4.InterfaceC6462yd
    /* renamed from: j */
    public final void mo4746j() {
        C6500ze c6500ze = new C6500ze(this.f21025c, this.f21024b);
        this.f21026d = c6500ze;
        c6500ze.m4292a(this.f21027e);
        this.f21026d.m4291b(this.f21028f);
        this.f21031i = InterfaceC6462yd.f34027a;
        this.f21032j = 0L;
        this.f21033k = 0L;
        this.f21034l = false;
    }

    @Override // p168r4.InterfaceC6462yd
    /* renamed from: c */
    public final void mo4753c(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
            int remaining = byteBuffer.remaining();
            this.f21032j += remaining;
            this.f21026d.m4290c(asShortBuffer);
            byteBuffer.position(byteBuffer.position() + remaining);
        }
        int m4287f = this.f21026d.m4287f() * this.f21024b;
        int i = m4287f + m4287f;
        if (i > 0) {
            if (this.f21029g.capacity() < i) {
                ByteBuffer order = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
                this.f21029g = order;
                this.f21030h = order.asShortBuffer();
            } else {
                this.f21029g.clear();
                this.f21030h.clear();
            }
            this.f21026d.m4289d(this.f21030h);
            this.f21033k += i;
            this.f21029g.limit(i);
            this.f21031i = this.f21029g;
        }
    }
}
