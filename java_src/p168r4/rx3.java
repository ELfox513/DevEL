package p168r4;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
/* renamed from: r4.rx3 */
/* loaded from: classes2.dex */
public final class rx3 {

    /* renamed from: g */
    public static final Comparator<qx3> f30744g = nx3.f28711a;

    /* renamed from: h */
    public static final Comparator<qx3> f30745h = ox3.f29267a;

    /* renamed from: d */
    public int f30749d;

    /* renamed from: e */
    public int f30750e;

    /* renamed from: f */
    public int f30751f;

    /* renamed from: b */
    public final qx3[] f30747b = new qx3[5];

    /* renamed from: a */
    public final ArrayList<qx3> f30746a = new ArrayList<>();

    /* renamed from: c */
    public int f30748c = -1;

    public rx3(int i) {
    }

    /* renamed from: a */
    public final void m7282a() {
        this.f30746a.clear();
        this.f30748c = -1;
        this.f30749d = 0;
        this.f30750e = 0;
    }

    /* renamed from: b */
    public final void m7281b(int i, float f) {
        qx3 qx3Var;
        if (this.f30748c != 1) {
            Collections.sort(this.f30746a, f30744g);
            this.f30748c = 1;
        }
        int i2 = this.f30751f;
        if (i2 > 0) {
            qx3[] qx3VarArr = this.f30747b;
            int i3 = i2 - 1;
            this.f30751f = i3;
            qx3Var = qx3VarArr[i3];
        } else {
            qx3Var = new qx3(null);
        }
        int i4 = this.f30749d;
        this.f30749d = i4 + 1;
        qx3Var.f30356a = i4;
        qx3Var.f30357b = i;
        qx3Var.f30358c = f;
        this.f30746a.add(qx3Var);
        this.f30750e += i;
        while (true) {
            int i5 = this.f30750e;
            if (i5 > 2000) {
                int i6 = i5 - 2000;
                qx3 qx3Var2 = this.f30746a.get(0);
                int i7 = qx3Var2.f30357b;
                if (i7 <= i6) {
                    this.f30750e -= i7;
                    this.f30746a.remove(0);
                    int i8 = this.f30751f;
                    if (i8 < 5) {
                        qx3[] qx3VarArr2 = this.f30747b;
                        this.f30751f = i8 + 1;
                        qx3VarArr2[i8] = qx3Var2;
                    }
                } else {
                    qx3Var2.f30357b = i7 - i6;
                    this.f30750e -= i6;
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: c */
    public final float m7280c(float f) {
        if (this.f30748c != 0) {
            Collections.sort(this.f30746a, f30745h);
            this.f30748c = 0;
        }
        float f2 = this.f30750e * 0.5f;
        int i = 0;
        for (int i2 = 0; i2 < this.f30746a.size(); i2++) {
            qx3 qx3Var = this.f30746a.get(i2);
            i += qx3Var.f30357b;
            if (i >= f2) {
                return qx3Var.f30358c;
            }
        }
        if (this.f30746a.isEmpty()) {
            return Float.NaN;
        }
        ArrayList<qx3> arrayList = this.f30746a;
        return arrayList.get(arrayList.size() - 1).f30358c;
    }
}
