package p168r4;

import java.util.Arrays;
/* renamed from: r4.jk */
/* loaded from: classes2.dex */
public final class C5913jk {

    /* renamed from: b */
    public int f26058b;

    /* renamed from: c */
    public int f26059c;

    /* renamed from: d */
    public int f26060d = 0;

    /* renamed from: e */
    public C5654ck[] f26061e = new C5654ck[100];

    /* renamed from: a */
    public final C5654ck[] f26057a = new C5654ck[1];

    public C5913jk(boolean z, int i) {
    }

    /* renamed from: a */
    public final synchronized void m10263a() {
        m10262b(0);
    }

    /* renamed from: b */
    public final synchronized void m10262b(int i) {
        int i2 = this.f26058b;
        this.f26058b = i;
        if (i < i2) {
            m10258f();
        }
    }

    /* renamed from: c */
    public final synchronized C5654ck m10261c() {
        C5654ck c5654ck;
        this.f26059c++;
        int i = this.f26060d;
        if (i > 0) {
            C5654ck[] c5654ckArr = this.f26061e;
            int i2 = i - 1;
            this.f26060d = i2;
            c5654ck = c5654ckArr[i2];
            c5654ckArr[i2] = null;
        } else {
            c5654ck = new C5654ck(new byte[65536], 0);
        }
        return c5654ck;
    }

    /* renamed from: d */
    public final synchronized void m10260d(C5654ck c5654ck) {
        C5654ck[] c5654ckArr = this.f26057a;
        c5654ckArr[0] = c5654ck;
        m10259e(c5654ckArr);
    }

    /* renamed from: e */
    public final synchronized void m10259e(C5654ck[] c5654ckArr) {
        int length = this.f26060d + c5654ckArr.length;
        C5654ck[] c5654ckArr2 = this.f26061e;
        int length2 = c5654ckArr2.length;
        if (length >= length2) {
            this.f26061e = (C5654ck[]) Arrays.copyOf(c5654ckArr2, Math.max(length2 + length2, length));
        }
        for (C5654ck c5654ck : c5654ckArr) {
            byte[] bArr = c5654ck.f21567a;
            C5654ck[] c5654ckArr3 = this.f26061e;
            int i = this.f26060d;
            this.f26060d = i + 1;
            c5654ckArr3[i] = c5654ck;
        }
        this.f26059c -= c5654ckArr.length;
        notifyAll();
    }

    /* renamed from: f */
    public final synchronized void m10258f() {
        int max = Math.max(0, C5988ll.m9649e(this.f26058b, 65536) - this.f26059c);
        int i = this.f26060d;
        if (max >= i) {
            return;
        }
        Arrays.fill(this.f26061e, max, i, (Object) null);
        this.f26060d = max;
    }

    /* renamed from: g */
    public final synchronized int m10257g() {
        return this.f26059c * 65536;
    }
}
