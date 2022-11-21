package p168r4;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* renamed from: r4.kg */
/* loaded from: classes2.dex */
public final class C5946kg extends C6020mg {

    /* renamed from: P0 */
    public final long f26391P0;

    /* renamed from: Q0 */
    public final List<C5983lg> f26392Q0;

    /* renamed from: R0 */
    public final List<C5946kg> f26393R0;

    /* renamed from: d */
    public final void m10045d(C5983lg c5983lg) {
        this.f26392Q0.add(c5983lg);
    }

    /* renamed from: e */
    public final void m10044e(C5946kg c5946kg) {
        this.f26393R0.add(c5946kg);
    }

    /* renamed from: f */
    public final C5983lg m10043f(int i) {
        int size = this.f26392Q0.size();
        for (int i2 = 0; i2 < size; i2++) {
            C5983lg c5983lg = this.f26392Q0.get(i2);
            if (c5983lg.f27683a == i) {
                return c5983lg;
            }
        }
        return null;
    }

    /* renamed from: g */
    public final C5946kg m10042g(int i) {
        int size = this.f26393R0.size();
        for (int i2 = 0; i2 < size; i2++) {
            C5946kg c5946kg = this.f26393R0.get(i2);
            if (c5946kg.f27683a == i) {
                return c5946kg;
            }
        }
        return null;
    }

    @Override // p168r4.C6020mg
    public final String toString() {
        String m9399c = C6020mg.m9399c(this.f27683a);
        String arrays = Arrays.toString(this.f26392Q0.toArray());
        String arrays2 = Arrays.toString(this.f26393R0.toArray());
        int length = String.valueOf(arrays).length();
        StringBuilder sb = new StringBuilder(m9399c.length() + 22 + length + String.valueOf(arrays2).length());
        sb.append(m9399c);
        sb.append(" leaves: ");
        sb.append(arrays);
        sb.append(" containers: ");
        sb.append(arrays2);
        return sb.toString();
    }

    public C5946kg(int i, long j) {
        super(i);
        this.f26391P0 = j;
        this.f26392Q0 = new ArrayList();
        this.f26393R0 = new ArrayList();
    }
}
