package p016b3;

import java.util.ArrayList;
import java.util.List;
/* renamed from: b3.k0 */
/* loaded from: classes.dex */
public final class C0495k0 {

    /* renamed from: a */
    public final List<String> f1627a = new ArrayList();

    /* renamed from: b */
    public final List<Double> f1628b = new ArrayList();

    /* renamed from: c */
    public final List<Double> f1629c = new ArrayList();

    /* renamed from: d */
    public final C0495k0 m26357d(String str, double d, double d2) {
        int i = 0;
        while (i < this.f1627a.size()) {
            double doubleValue = this.f1629c.get(i).doubleValue();
            double doubleValue2 = this.f1628b.get(i).doubleValue();
            if (d < doubleValue || (doubleValue == d && d2 < doubleValue2)) {
                break;
            }
            i++;
        }
        this.f1627a.add(i, str);
        this.f1629c.add(i, Double.valueOf(d));
        this.f1628b.add(i, Double.valueOf(d2));
        return this;
    }

    /* renamed from: e */
    public final C0503m0 m26356e() {
        return new C0503m0(this, null);
    }
}
