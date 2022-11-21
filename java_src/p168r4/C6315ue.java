package p168r4;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
/* renamed from: r4.ue */
/* loaded from: classes2.dex */
public final class C6315ue implements InterfaceC6462yd {

    /* renamed from: b */
    public int f32251b;

    /* renamed from: c */
    public int f32252c;

    /* renamed from: d */
    public int[] f32253d;

    /* renamed from: e */
    public boolean f32254e;

    /* renamed from: f */
    public int[] f32255f;

    /* renamed from: g */
    public ByteBuffer f32256g;

    /* renamed from: h */
    public ByteBuffer f32257h;

    /* renamed from: i */
    public boolean f32258i;

    public C6315ue() {
        ByteBuffer byteBuffer = InterfaceC6462yd.f34027a;
        this.f32256g = byteBuffer;
        this.f32257h = byteBuffer;
        this.f32251b = -1;
        this.f32252c = -1;
    }

    @Override // p168r4.InterfaceC6462yd
    /* renamed from: a */
    public final boolean mo4755a() {
        return this.f32254e;
    }

    @Override // p168r4.InterfaceC6462yd
    /* renamed from: b */
    public final int mo4754b() {
        int[] iArr = this.f32255f;
        return iArr == null ? this.f32251b : iArr.length;
    }

    @Override // p168r4.InterfaceC6462yd
    /* renamed from: d */
    public final void mo4752d() {
        this.f32258i = true;
    }

    @Override // p168r4.InterfaceC6462yd
    /* renamed from: e */
    public final int mo4751e() {
        return 2;
    }

    @Override // p168r4.InterfaceC6462yd
    /* renamed from: f */
    public final boolean mo4750f() {
        return this.f32258i && this.f32257h == InterfaceC6462yd.f34027a;
    }

    @Override // p168r4.InterfaceC6462yd
    /* renamed from: g */
    public final ByteBuffer mo4749g() {
        ByteBuffer byteBuffer = this.f32257h;
        this.f32257h = InterfaceC6462yd.f34027a;
        return byteBuffer;
    }

    @Override // p168r4.InterfaceC6462yd
    /* renamed from: h */
    public final void mo4748h() {
        mo4746j();
        this.f32256g = InterfaceC6462yd.f34027a;
        this.f32251b = -1;
        this.f32252c = -1;
        this.f32255f = null;
        this.f32254e = false;
    }

    @Override // p168r4.InterfaceC6462yd
    /* renamed from: j */
    public final void mo4746j() {
        this.f32257h = InterfaceC6462yd.f34027a;
        this.f32258i = false;
    }

    /* renamed from: k */
    public final void m6535k(int[] iArr) {
        this.f32253d = iArr;
    }

    @Override // p168r4.InterfaceC6462yd
    /* renamed from: i */
    public final boolean mo4747i(int i, int i2, int i3) {
        boolean z;
        boolean z2;
        boolean z3 = !Arrays.equals(this.f32253d, this.f32255f);
        int[] iArr = this.f32253d;
        this.f32255f = iArr;
        if (iArr == null) {
            this.f32254e = false;
            return z3;
        } else if (i3 == 2) {
            if (!z3 && this.f32252c == i && this.f32251b == i2) {
                return false;
            }
            this.f32252c = i;
            this.f32251b = i2;
            if (i2 != iArr.length) {
                z = true;
            } else {
                z = false;
            }
            this.f32254e = z;
            int i4 = 0;
            while (true) {
                int[] iArr2 = this.f32255f;
                if (i4 >= iArr2.length) {
                    return true;
                }
                int i5 = iArr2[i4];
                if (i5 < i2) {
                    boolean z4 = this.f32254e;
                    if (i5 != i4) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    this.f32254e = z2 | z4;
                    i4++;
                } else {
                    throw new C6425xd(i, i2, 2);
                }
            }
        } else {
            throw new C6425xd(i, i2, i3);
        }
    }

    @Override // p168r4.InterfaceC6462yd
    /* renamed from: c */
    public final void mo4753c(ByteBuffer byteBuffer) {
        int[] iArr;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i = this.f32251b;
        int length = ((limit - position) / (i + i)) * this.f32255f.length;
        int i2 = length + length;
        if (this.f32256g.capacity() < i2) {
            this.f32256g = ByteBuffer.allocateDirect(i2).order(ByteOrder.nativeOrder());
        } else {
            this.f32256g.clear();
        }
        while (position < limit) {
            for (int i3 : this.f32255f) {
                this.f32256g.putShort(byteBuffer.getShort(i3 + i3 + position));
            }
            int i4 = this.f32251b;
            position += i4 + i4;
        }
        byteBuffer.position(limit);
        this.f32256g.flip();
        this.f32257h = this.f32256g;
    }
}
