package p168r4;

import android.util.Pair;
/* renamed from: r4.t2 */
/* loaded from: classes2.dex */
public abstract class AbstractC6266t2 extends AbstractC5717e8 {

    /* renamed from: c */
    public final int f31622c;

    /* renamed from: d */
    public final yu3 f31623d;

    public AbstractC6266t2(boolean z, yu3 yu3Var, byte[] bArr) {
        this.f31623d = yu3Var;
        this.f31622c = yu3Var.m4557a();
    }

    @Override // p168r4.AbstractC5717e8
    /* renamed from: o */
    public final C5606b8 mo6932o(Object obj, C5606b8 c5606b8) {
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = pair.second;
        int mo6929r = mo6929r(obj2);
        int mo6926u = mo6926u(mo6929r);
        mo6928s(mo6929r).mo6932o(obj3, c5606b8);
        c5606b8.f20895c += mo6926u;
        c5606b8.f20894b = obj;
        return c5606b8;
    }

    /* renamed from: p */
    public abstract int mo6931p(int i);

    /* renamed from: q */
    public abstract int mo6930q(int i);

    /* renamed from: r */
    public abstract int mo6929r(Object obj);

    /* renamed from: s */
    public abstract AbstractC5717e8 mo6928s(int i);

    /* renamed from: t */
    public abstract int mo6927t(int i);

    /* renamed from: u */
    public abstract int mo6926u(int i);

    /* renamed from: v */
    public abstract Object mo6925v(int i);

    /* renamed from: w */
    public final int m6924w(int i, boolean z) {
        if (z) {
            return this.f31623d.m4556b(i);
        }
        if (i >= this.f31622c - 1) {
            return -1;
        }
        return i + 1;
    }

    /* renamed from: x */
    public final int m6923x(int i, boolean z) {
        if (z) {
            return this.f31623d.m4555c(i);
        }
        if (i <= 0) {
            return -1;
        }
        return i - 1;
    }

    @Override // p168r4.AbstractC5717e8
    /* renamed from: d */
    public final int mo6724d(boolean z) {
        int i;
        int i2 = this.f31622c;
        if (i2 == 0) {
            return -1;
        }
        if (z) {
            i = this.f31623d.m4554d();
        } else {
            i = i2 - 1;
        }
        while (mo6928s(i).m11843k()) {
            i = m6923x(i, z);
            if (i == -1) {
                return -1;
            }
        }
        return mo6926u(i) + mo6928s(i).mo6724d(z);
    }

    @Override // p168r4.AbstractC5717e8
    /* renamed from: e */
    public final int mo6723e(boolean z) {
        int i;
        if (this.f31622c == 0) {
            return -1;
        }
        if (z) {
            i = this.f31623d.m4553e();
        } else {
            i = 0;
        }
        while (mo6928s(i).m11843k()) {
            i = m6924w(i, z);
            if (i == -1) {
                return -1;
            }
        }
        return mo6926u(i) + mo6928s(i).mo6723e(z);
    }

    @Override // p168r4.AbstractC5717e8
    /* renamed from: i */
    public final int mo4072i(Object obj) {
        int mo4072i;
        if (!(obj instanceof Pair)) {
            return -1;
        }
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = pair.second;
        int mo6929r = mo6929r(obj2);
        if (mo6929r == -1 || (mo4072i = mo6928s(mo6929r).mo4072i(obj3)) == -1) {
            return -1;
        }
        return mo6927t(mo6929r) + mo4072i;
    }

    @Override // p168r4.AbstractC5717e8
    /* renamed from: b */
    public final int mo6726b(int i, int i2, boolean z) {
        int i3;
        int mo6930q = mo6930q(i);
        int mo6926u = mo6926u(mo6930q);
        AbstractC5717e8 mo6928s = mo6928s(mo6930q);
        int i4 = i - mo6926u;
        if (i2 == 2) {
            i3 = 0;
        } else {
            i3 = i2;
        }
        int mo6726b = mo6928s.mo6726b(i4, i3, z);
        if (mo6726b != -1) {
            return mo6926u + mo6726b;
        }
        int m6924w = m6924w(mo6930q, z);
        while (m6924w != -1 && mo6928s(m6924w).m11843k()) {
            m6924w = m6924w(m6924w, z);
        }
        if (m6924w != -1) {
            return mo6926u(m6924w) + mo6928s(m6924w).mo6723e(z);
        }
        if (i2 != 2) {
            return -1;
        }
        return mo6723e(z);
    }

    @Override // p168r4.AbstractC5717e8
    /* renamed from: c */
    public final int mo6725c(int i, int i2, boolean z) {
        int mo6930q = mo6930q(i);
        int mo6926u = mo6926u(mo6930q);
        int mo6725c = mo6928s(mo6930q).mo6725c(i - mo6926u, 0, false);
        if (mo6725c != -1) {
            return mo6926u + mo6725c;
        }
        int m6923x = m6923x(mo6930q, false);
        while (m6923x != -1 && mo6928s(m6923x).m11843k()) {
            m6923x = m6923x(m6923x, false);
        }
        if (m6923x == -1) {
            return -1;
        }
        return mo6926u(m6923x) + mo6928s(m6923x).mo6724d(false);
    }

    @Override // p168r4.AbstractC5717e8
    /* renamed from: f */
    public final C5679d8 mo4075f(int i, C5679d8 c5679d8, long j) {
        int mo6930q = mo6930q(i);
        int mo6926u = mo6926u(mo6930q);
        int mo6927t = mo6927t(mo6930q);
        mo6928s(mo6930q).mo4075f(i - mo6926u, c5679d8, j);
        Object mo6925v = mo6925v(mo6930q);
        if (!C5679d8.f22142o.equals(c5679d8.f22146a)) {
            mo6925v = Pair.create(mo6925v, c5679d8.f22146a);
        }
        c5679d8.f22146a = mo6925v;
        c5679d8.f22158m += mo6927t;
        c5679d8.f22159n += mo6927t;
        return c5679d8;
    }

    @Override // p168r4.AbstractC5717e8
    /* renamed from: h */
    public final C5606b8 mo4073h(int i, C5606b8 c5606b8, boolean z) {
        int mo6931p = mo6931p(i);
        int mo6926u = mo6926u(mo6931p);
        mo6928s(mo6931p).mo4073h(i - mo6927t(mo6931p), c5606b8, z);
        c5606b8.f20895c += mo6926u;
        if (z) {
            Object mo6925v = mo6925v(mo6931p);
            Object obj = c5606b8.f20894b;
            obj.getClass();
            c5606b8.f20894b = Pair.create(mo6925v, obj);
        }
        return c5606b8;
    }

    @Override // p168r4.AbstractC5717e8
    /* renamed from: j */
    public final Object mo4071j(int i) {
        int mo6931p = mo6931p(i);
        return Pair.create(mo6925v(mo6931p), mo6928s(mo6931p).mo4071j(i - mo6927t(mo6931p)));
    }
}
