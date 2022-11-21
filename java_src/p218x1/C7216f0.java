package p218x1;

import p015b2.C0438g;
import p015b2.C0447o;
import p111l1.C4557d;
/* renamed from: x1.f0 */
/* loaded from: classes.dex */
public final class C7216f0 extends C0447o implements InterfaceC7206b {

    /* renamed from: a */
    public final AbstractC7204a[] f36587a;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C7216f0(int r3) {
        /*
            r2 = this;
            r0 = 1
            if (r3 <= r0) goto L5
            r1 = 1
            goto L6
        L5:
            r1 = 0
        L6:
            r2.<init>(r1)
            if (r3 < r0) goto L10
            x1.a[] r3 = new p218x1.AbstractC7204a[r3]
            r2.f36587a = r3
            return
        L10:
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "size < 1"
            r3.<init>(r0)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: p218x1.C7216f0.<init>(int):void");
    }

    @Override // p218x1.InterfaceC7206b
    public int size() {
        return this.f36587a.length;
    }

    @Override // p218x1.InterfaceC7206b
    /* renamed from: u */
    public AbstractC7204a mo2092u(int i) {
        if (i == 0) {
            return null;
        }
        return get(i);
    }

    /* renamed from: z */
    public static AbstractC7204a m2090z(int i) {
        throw new C4557d("invalid constant pool index " + C0438g.m26478g(i));
    }

    @Override // p218x1.InterfaceC7206b
    public AbstractC7204a get(int i) {
        try {
            AbstractC7204a abstractC7204a = this.f36587a[i];
            if (abstractC7204a == null) {
                m2090z(i);
            }
            return abstractC7204a;
        } catch (IndexOutOfBoundsException unused) {
            return m2090z(i);
        }
    }

    @Override // p218x1.InterfaceC7206b
    /* renamed from: h */
    public AbstractC7204a mo2093h(int i) {
        try {
            return this.f36587a[i];
        } catch (IndexOutOfBoundsException unused) {
            return m2090z(i);
        }
    }

    /* renamed from: x */
    public void m2091x(int i, AbstractC7204a abstractC7204a) {
        boolean z;
        int i2;
        AbstractC7204a abstractC7204a2;
        throwIfImmutable();
        if (abstractC7204a != null && abstractC7204a.mo2047h()) {
            z = true;
        } else {
            z = false;
        }
        if (i >= 1) {
            if (z) {
                AbstractC7204a[] abstractC7204aArr = this.f36587a;
                if (i != abstractC7204aArr.length - 1) {
                    abstractC7204aArr[i + 1] = null;
                } else {
                    throw new IllegalArgumentException("(n == size - 1) && cst.isCategory2()");
                }
            }
            if (abstractC7204a != null) {
                AbstractC7204a[] abstractC7204aArr2 = this.f36587a;
                if (abstractC7204aArr2[i] == null && (abstractC7204a2 = abstractC7204aArr2[i - 1]) != null && abstractC7204a2.mo2047h()) {
                    this.f36587a[i2] = null;
                }
            }
            this.f36587a[i] = abstractC7204a;
            return;
        }
        throw new IllegalArgumentException("n < 1");
    }
}
