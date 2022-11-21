package okio;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class Segment {

    /* renamed from: a */
    public final byte[] f19761a;

    /* renamed from: b */
    public int f19762b;

    /* renamed from: c */
    public int f19763c;

    /* renamed from: d */
    public boolean f19764d;

    /* renamed from: e */
    public boolean f19765e;

    /* renamed from: f */
    public Segment f19766f;

    /* renamed from: g */
    public Segment f19767g;

    public Segment() {
        this.f19761a = new byte[8192];
        this.f19765e = true;
        this.f19764d = false;
    }

    /* renamed from: a */
    public final Segment m13731a() {
        this.f19764d = true;
        return new Segment(this.f19761a, this.f19762b, this.f19763c, true, false);
    }

    /* renamed from: b */
    public final Segment m13730b() {
        return new Segment((byte[]) this.f19761a.clone(), this.f19762b, this.f19763c, false, true);
    }

    public final void compact() {
        int i;
        Segment segment = this.f19767g;
        if (segment != this) {
            if (!segment.f19765e) {
                return;
            }
            int i2 = this.f19763c - this.f19762b;
            int i3 = 8192 - segment.f19763c;
            if (segment.f19764d) {
                i = 0;
            } else {
                i = segment.f19762b;
            }
            if (i2 > i3 + i) {
                return;
            }
            writeTo(segment, i2);
            pop();
            SegmentPool.m13729a(this);
            return;
        }
        throw new IllegalStateException();
    }

    public final Segment pop() {
        Segment segment;
        Segment segment2 = this.f19766f;
        if (segment2 != this) {
            segment = segment2;
        } else {
            segment = null;
        }
        Segment segment3 = this.f19767g;
        segment3.f19766f = segment2;
        this.f19766f.f19767g = segment3;
        this.f19766f = null;
        this.f19767g = null;
        return segment;
    }

    public final Segment push(Segment segment) {
        segment.f19767g = this;
        segment.f19766f = this.f19766f;
        this.f19766f.f19767g = segment;
        this.f19766f = segment;
        return segment;
    }

    public final Segment split(int i) {
        Segment m13728b;
        if (i > 0 && i <= this.f19763c - this.f19762b) {
            if (i >= 1024) {
                m13728b = m13731a();
            } else {
                m13728b = SegmentPool.m13728b();
                System.arraycopy(this.f19761a, this.f19762b, m13728b.f19761a, 0, i);
            }
            m13728b.f19763c = m13728b.f19762b + i;
            this.f19762b += i;
            this.f19767g.push(m13728b);
            return m13728b;
        }
        throw new IllegalArgumentException();
    }

    public final void writeTo(Segment segment, int i) {
        if (segment.f19765e) {
            int i2 = segment.f19763c;
            if (i2 + i > 8192) {
                if (!segment.f19764d) {
                    int i3 = segment.f19762b;
                    if ((i2 + i) - i3 <= 8192) {
                        byte[] bArr = segment.f19761a;
                        System.arraycopy(bArr, i3, bArr, 0, i2 - i3);
                        segment.f19763c -= segment.f19762b;
                        segment.f19762b = 0;
                    } else {
                        throw new IllegalArgumentException();
                    }
                } else {
                    throw new IllegalArgumentException();
                }
            }
            System.arraycopy(this.f19761a, this.f19762b, segment.f19761a, segment.f19763c, i);
            segment.f19763c += i;
            this.f19762b += i;
            return;
        }
        throw new IllegalArgumentException();
    }

    public Segment(byte[] bArr, int i, int i2, boolean z, boolean z2) {
        this.f19761a = bArr;
        this.f19762b = i;
        this.f19763c = i2;
        this.f19764d = z;
        this.f19765e = z2;
    }
}
