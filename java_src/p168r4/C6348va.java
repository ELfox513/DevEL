package p168r4;

import android.util.SparseBooleanArray;
/* renamed from: r4.va */
/* loaded from: classes2.dex */
public final class C6348va {

    /* renamed from: a */
    public final SparseBooleanArray f32658a;

    /* renamed from: a */
    public final int m6195a() {
        return this.f32658a.size();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C6348va)) {
            return false;
        }
        C6348va c6348va = (C6348va) obj;
        if (C5979lc.f27164a < 24) {
            if (this.f32658a.size() != c6348va.f32658a.size()) {
                return false;
            }
            for (int i = 0; i < this.f32658a.size(); i++) {
                if (m6194b(i) != c6348va.m6194b(i)) {
                    return false;
                }
            }
            return true;
        }
        return this.f32658a.equals(c6348va.f32658a);
    }

    /* renamed from: b */
    public final int m6194b(int i) {
        C5903ja.m10372c(i, 0, this.f32658a.size());
        return this.f32658a.keyAt(i);
    }

    public final int hashCode() {
        if (C5979lc.f27164a < 24) {
            int size = this.f32658a.size();
            for (int i = 0; i < this.f32658a.size(); i++) {
                size = (size * 31) + m6194b(i);
            }
            return size;
        }
        return this.f32658a.hashCode();
    }
}
