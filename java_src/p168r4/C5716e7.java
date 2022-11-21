package p168r4;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* renamed from: r4.e7 */
/* loaded from: classes2.dex */
public final class C5716e7 extends AbstractC6266t2 {

    /* renamed from: e */
    public final int f22873e;

    /* renamed from: f */
    public final int f22874f;

    /* renamed from: g */
    public final int[] f22875g;

    /* renamed from: h */
    public final int[] f22876h;

    /* renamed from: i */
    public final AbstractC5717e8[] f22877i;

    /* renamed from: j */
    public final Object[] f22878j;

    /* renamed from: k */
    public final HashMap<Object, Integer> f22879k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public C5716e7(Collection collection, Collection<? extends InterfaceC5677d6> collection2, yu3 yu3Var) {
        super(false, collection2, null);
        int i = 0;
        int size = collection.size();
        this.f22875g = new int[size];
        this.f22876h = new int[size];
        this.f22877i = new AbstractC5717e8[size];
        this.f22878j = new Object[size];
        this.f22879k = new HashMap<>();
        Iterator it = collection.iterator();
        int i2 = 0;
        int i3 = 0;
        while (it.hasNext()) {
            InterfaceC5677d6 interfaceC5677d6 = (InterfaceC5677d6) it.next();
            this.f22877i[i3] = interfaceC5677d6.mo9506b();
            this.f22876h[i3] = i;
            this.f22875g[i3] = i2;
            i += this.f22877i[i3].mo4076a();
            i2 += this.f22877i[i3].mo4074g();
            this.f22878j[i3] = interfaceC5677d6.mo9507a();
            this.f22879k.put(this.f22878j[i3], Integer.valueOf(i3));
            i3++;
        }
        this.f22873e = i;
        this.f22874f = i2;
    }

    @Override // p168r4.AbstractC5717e8
    /* renamed from: a */
    public final int mo4076a() {
        return this.f22873e;
    }

    @Override // p168r4.AbstractC5717e8
    /* renamed from: g */
    public final int mo4074g() {
        return this.f22874f;
    }

    @Override // p168r4.AbstractC6266t2
    /* renamed from: p */
    public final int mo6931p(int i) {
        return C5979lc.m9706c(this.f22875g, i + 1, false, false);
    }

    @Override // p168r4.AbstractC6266t2
    /* renamed from: q */
    public final int mo6930q(int i) {
        return C5979lc.m9706c(this.f22876h, i + 1, false, false);
    }

    @Override // p168r4.AbstractC6266t2
    /* renamed from: s */
    public final AbstractC5717e8 mo6928s(int i) {
        return this.f22877i[i];
    }

    @Override // p168r4.AbstractC6266t2
    /* renamed from: t */
    public final int mo6927t(int i) {
        return this.f22875g[i];
    }

    @Override // p168r4.AbstractC6266t2
    /* renamed from: u */
    public final int mo6926u(int i) {
        return this.f22876h[i];
    }

    @Override // p168r4.AbstractC6266t2
    /* renamed from: v */
    public final Object mo6925v(int i) {
        return this.f22878j[i];
    }

    /* renamed from: y */
    public final List<AbstractC5717e8> m11847y() {
        return Arrays.asList(this.f22877i);
    }

    @Override // p168r4.AbstractC6266t2
    /* renamed from: r */
    public final int mo6929r(Object obj) {
        Integer num = this.f22879k.get(obj);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }
}
