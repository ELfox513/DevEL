package p168r4;

import java.nio.ByteBuffer;
/* renamed from: r4.ye */
/* loaded from: classes2.dex */
public final class C6463ye implements InterfaceC6462yd {

    /* renamed from: b */
    public int f34031b = -1;

    /* renamed from: c */
    public int f34032c = -1;

    /* renamed from: d */
    public int f34033d = 0;

    /* renamed from: e */
    public ByteBuffer f34034e;

    /* renamed from: f */
    public ByteBuffer f34035f;

    /* renamed from: g */
    public boolean f34036g;

    public C6463ye() {
        ByteBuffer byteBuffer = InterfaceC6462yd.f34027a;
        this.f34034e = byteBuffer;
        this.f34035f = byteBuffer;
    }

    @Override // p168r4.InterfaceC6462yd
    /* renamed from: a */
    public final boolean mo4755a() {
        int i = this.f34033d;
        return (i == 0 || i == 2) ? false : true;
    }

    @Override // p168r4.InterfaceC6462yd
    /* renamed from: b */
    public final int mo4754b() {
        return this.f34032c;
    }

    @Override // p168r4.InterfaceC6462yd
    /* renamed from: d */
    public final void mo4752d() {
        this.f34036g = true;
    }

    @Override // p168r4.InterfaceC6462yd
    /* renamed from: e */
    public final int mo4751e() {
        return 2;
    }

    @Override // p168r4.InterfaceC6462yd
    /* renamed from: f */
    public final boolean mo4750f() {
        return this.f34036g && this.f34035f == InterfaceC6462yd.f34027a;
    }

    @Override // p168r4.InterfaceC6462yd
    /* renamed from: g */
    public final ByteBuffer mo4749g() {
        ByteBuffer byteBuffer = this.f34035f;
        this.f34035f = InterfaceC6462yd.f34027a;
        return byteBuffer;
    }

    @Override // p168r4.InterfaceC6462yd
    /* renamed from: h */
    public final void mo4748h() {
        mo4746j();
        this.f34034e = InterfaceC6462yd.f34027a;
        this.f34031b = -1;
        this.f34032c = -1;
        this.f34033d = 0;
    }

    @Override // p168r4.InterfaceC6462yd
    /* renamed from: i */
    public final boolean mo4747i(int i, int i2, int i3) {
        if (i3 == 3 || i3 == 2 || i3 == Integer.MIN_VALUE || i3 == 1073741824) {
            if (this.f34031b == i && this.f34032c == i2 && this.f34033d == i3) {
                return false;
            }
            this.f34031b = i;
            this.f34032c = i2;
            this.f34033d = i3;
            if (i3 == 2) {
                this.f34034e = InterfaceC6462yd.f34027a;
                return true;
            }
            return true;
        }
        throw new C6425xd(i, i2, i3);
    }

    @Override // p168r4.InterfaceC6462yd
    /* renamed from: j */
    public final void mo4746j() {
        this.f34035f = InterfaceC6462yd.f34027a;
        this.f34036g = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0080 A[LOOP:2: B:25:0x0080->B:26:0x0082, LOOP_START, PHI: r0 
      PHI: (r0v1 int) = (r0v0 int), (r0v2 int) binds: [B:16:0x0040, B:26:0x0082] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // p168r4.InterfaceC6462yd
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo4753c(java.nio.ByteBuffer r8) {
        /*
            r7 = this;
            int r0 = r8.position()
            int r1 = r8.limit()
            int r2 = r1 - r0
            int r3 = r7.f34033d
            r4 = 1073741824(0x40000000, float:2.0)
            r5 = -2147483648(0xffffffff80000000, float:-0.0)
            r6 = 3
            if (r3 == r5) goto L20
            if (r3 == r6) goto L21
            if (r3 != r4) goto L1a
            int r2 = r2 / 2
            goto L22
        L1a:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            r8.<init>()
            throw r8
        L20:
            int r2 = r2 / r6
        L21:
            int r2 = r2 + r2
        L22:
            java.nio.ByteBuffer r3 = r7.f34034e
            int r3 = r3.capacity()
            if (r3 >= r2) goto L39
            java.nio.ByteBuffer r2 = java.nio.ByteBuffer.allocateDirect(r2)
            java.nio.ByteOrder r3 = java.nio.ByteOrder.nativeOrder()
            java.nio.ByteBuffer r2 = r2.order(r3)
            r7.f34034e = r2
            goto L3e
        L39:
            java.nio.ByteBuffer r2 = r7.f34034e
            r2.clear()
        L3e:
            int r2 = r7.f34033d
            if (r2 == r5) goto L80
            if (r2 == r6) goto L67
            if (r2 != r4) goto L61
        L46:
            if (r0 >= r1) goto L9b
            java.nio.ByteBuffer r2 = r7.f34034e
            int r3 = r0 + 2
            byte r3 = r8.get(r3)
            r2.put(r3)
            java.nio.ByteBuffer r2 = r7.f34034e
            int r3 = r0 + 3
            byte r3 = r8.get(r3)
            r2.put(r3)
            int r0 = r0 + 4
            goto L46
        L61:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            r8.<init>()
            throw r8
        L67:
            if (r0 >= r1) goto L9b
            java.nio.ByteBuffer r2 = r7.f34034e
            r3 = 0
            r2.put(r3)
            java.nio.ByteBuffer r2 = r7.f34034e
            byte r3 = r8.get(r0)
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r3 = r3 + (-128)
            byte r3 = (byte) r3
            r2.put(r3)
            int r0 = r0 + 1
            goto L67
        L80:
            if (r0 >= r1) goto L9b
            java.nio.ByteBuffer r2 = r7.f34034e
            int r3 = r0 + 1
            byte r3 = r8.get(r3)
            r2.put(r3)
            java.nio.ByteBuffer r2 = r7.f34034e
            int r3 = r0 + 2
            byte r3 = r8.get(r3)
            r2.put(r3)
            int r0 = r0 + 3
            goto L80
        L9b:
            int r0 = r8.limit()
            r8.position(r0)
            java.nio.ByteBuffer r8 = r7.f34034e
            r8.flip()
            java.nio.ByteBuffer r8 = r7.f34034e
            r7.f34035f = r8
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.C6463ye.mo4753c(java.nio.ByteBuffer):void");
    }
}
