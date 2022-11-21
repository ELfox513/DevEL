package p016b3;

import java.util.ArrayList;
import java.util.List;
/* renamed from: b3.m0 */
/* loaded from: classes.dex */
public final class C0503m0 {

    /* renamed from: a */
    public final String[] f1645a;

    /* renamed from: b */
    public final double[] f1646b;

    /* renamed from: c */
    public final double[] f1647c;

    /* renamed from: d */
    public final int[] f1648d;

    /* renamed from: e */
    public int f1649e;

    /* renamed from: a */
    public final void m26295a(double d) {
        this.f1649e++;
        int i = 0;
        while (true) {
            double[] dArr = this.f1647c;
            if (i < dArr.length) {
                double d2 = dArr[i];
                if (d2 <= d && d < this.f1646b[i]) {
                    int[] iArr = this.f1648d;
                    iArr[i] = iArr[i] + 1;
                }
                if (d >= d2) {
                    i++;
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: b */
    public final List<C0491j0> m26294b() {
        ArrayList arrayList = new ArrayList(this.f1645a.length);
        int i = 0;
        while (true) {
            String[] strArr = this.f1645a;
            if (i < strArr.length) {
                String str = strArr[i];
                double d = this.f1647c[i];
                double d2 = this.f1646b[i];
                int i2 = this.f1648d[i];
                double d3 = i2;
                double d4 = this.f1649e;
                Double.isNaN(d3);
                Double.isNaN(d4);
                arrayList.add(new C0491j0(str, d, d2, d3 / d4, i2));
                i++;
            } else {
                return arrayList;
            }
        }
    }

    public /* synthetic */ C0503m0(C0495k0 c0495k0, C0499l0 c0499l0) {
        List list;
        List list2;
        List list3;
        List list4;
        list = c0495k0.f1628b;
        int size = list.size();
        list2 = c0495k0.f1627a;
        this.f1645a = (String[]) list2.toArray(new String[size]);
        list3 = c0495k0.f1628b;
        this.f1646b = m26293c(list3);
        list4 = c0495k0.f1629c;
        this.f1647c = m26293c(list4);
        this.f1648d = new int[size];
        this.f1649e = 0;
    }

    /* renamed from: c */
    public static final double[] m26293c(List<Double> list) {
        int size = list.size();
        double[] dArr = new double[size];
        for (int i = 0; i < size; i++) {
            dArr[i] = list.get(i).doubleValue();
        }
        return dArr;
    }
}
