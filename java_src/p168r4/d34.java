package p168r4;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* renamed from: r4.d34 */
/* loaded from: classes2.dex */
public final class d34 extends f34 {

    /* renamed from: b */
    public final long f22067b;

    /* renamed from: c */
    public final List<e34> f22068c;

    /* renamed from: d */
    public final List<d34> f22069d;

    /* renamed from: c */
    public final void m12230c(e34 e34Var) {
        this.f22068c.add(e34Var);
    }

    /* renamed from: d */
    public final void m12229d(d34 d34Var) {
        this.f22069d.add(d34Var);
    }

    /* renamed from: e */
    public final e34 m12228e(int i) {
        int size = this.f22068c.size();
        for (int i2 = 0; i2 < size; i2++) {
            e34 e34Var = this.f22068c.get(i2);
            if (e34Var.f23269a == i) {
                return e34Var;
            }
        }
        return null;
    }

    /* renamed from: f */
    public final d34 m12227f(int i) {
        int size = this.f22069d.size();
        for (int i2 = 0; i2 < size; i2++) {
            d34 d34Var = this.f22069d.get(i2);
            if (d34Var.f23269a == i) {
                return d34Var;
            }
        }
        return null;
    }

    @Override // p168r4.f34
    public final String toString() {
        String m11641b = f34.m11641b(this.f23269a);
        String arrays = Arrays.toString(this.f22068c.toArray());
        String arrays2 = Arrays.toString(this.f22069d.toArray());
        int length = String.valueOf(arrays).length();
        StringBuilder sb = new StringBuilder(m11641b.length() + 22 + length + String.valueOf(arrays2).length());
        sb.append(m11641b);
        sb.append(" leaves: ");
        sb.append(arrays);
        sb.append(" containers: ");
        sb.append(arrays2);
        return sb.toString();
    }

    public d34(int i, long j) {
        super(i);
        this.f22067b = j;
        this.f22068c = new ArrayList();
        this.f22069d = new ArrayList();
    }
}
