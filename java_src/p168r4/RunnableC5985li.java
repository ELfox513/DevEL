package p168r4;

import android.util.SparseArray;
/* renamed from: r4.li */
/* loaded from: classes2.dex */
public final class RunnableC5985li implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C6097oi f27223a;

    /* renamed from: b */
    public final /* synthetic */ C6171qi f27224b;

    public RunnableC5985li(C6171qi c6171qi, C6097oi c6097oi) {
        this.f27224b = c6171qi;
        this.f27223a = c6097oi;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SparseArray sparseArray;
        SparseArray sparseArray2;
        this.f27223a.m8794a();
        sparseArray = this.f27224b.f30149y;
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            sparseArray2 = this.f27224b.f30149y;
            ((C5802gj) sparseArray2.valueAt(i)).m11145g();
        }
    }
}
