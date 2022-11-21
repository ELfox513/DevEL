package p093j1;

import com.android.billingclient.api.SkuDetails;
import java.util.ArrayList;
/* renamed from: j1.d */
/* loaded from: classes.dex */
public class C4279d {

    /* renamed from: a */
    public boolean f18121a;

    /* renamed from: b */
    public String f18122b;

    /* renamed from: c */
    public String f18123c;

    /* renamed from: d */
    public String f18124d;

    /* renamed from: e */
    public String f18125e;

    /* renamed from: f */
    public String f18126f;

    /* renamed from: g */
    public int f18127g;

    /* renamed from: h */
    public ArrayList<SkuDetails> f18128h;

    /* renamed from: i */
    public boolean f18129i;

    /* renamed from: j1.d$a */
    /* loaded from: classes.dex */
    public static class C4280a {

        /* renamed from: a */
        public String f18130a;

        /* renamed from: b */
        public String f18131b;

        /* renamed from: c */
        public String f18132c;

        /* renamed from: d */
        public String f18133d;

        /* renamed from: e */
        public int f18134e;

        /* renamed from: f */
        public ArrayList<SkuDetails> f18135f;

        /* renamed from: g */
        public boolean f18136g;

        public C4280a() {
            this.f18134e = 0;
        }

        /* renamed from: a */
        public C4279d m16856a() {
            ArrayList<SkuDetails> arrayList = this.f18135f;
            if (arrayList != null && !arrayList.isEmpty()) {
                ArrayList<SkuDetails> arrayList2 = this.f18135f;
                int size = arrayList2.size();
                int i = 0;
                while (i < size) {
                    SkuDetails skuDetails = arrayList2.get(i);
                    i++;
                    if (skuDetails == null) {
                        throw new IllegalArgumentException("SKU cannot be null.");
                    }
                }
                if (this.f18135f.size() > 1) {
                    SkuDetails skuDetails2 = this.f18135f.get(0);
                    String m24604i = skuDetails2.m24604i();
                    ArrayList<SkuDetails> arrayList3 = this.f18135f;
                    int size2 = arrayList3.size();
                    int i2 = 0;
                    while (i2 < size2) {
                        SkuDetails skuDetails3 = arrayList3.get(i2);
                        i2++;
                        if (!m24604i.equals(skuDetails3.m24604i())) {
                            throw new IllegalArgumentException("SKUs should have the same type.");
                        }
                    }
                    String m24603j = skuDetails2.m24603j();
                    ArrayList<SkuDetails> arrayList4 = this.f18135f;
                    int size3 = arrayList4.size();
                    int i3 = 0;
                    while (i3 < size3) {
                        SkuDetails skuDetails4 = arrayList4.get(i3);
                        i3++;
                        if (!m24603j.equals(skuDetails4.m24603j())) {
                            throw new IllegalArgumentException("All SKUs must have the same package name.");
                        }
                    }
                }
                C4279d c4279d = new C4279d();
                c4279d.f18121a = true ^ this.f18135f.get(0).m24603j().isEmpty();
                c4279d.f18122b = null;
                c4279d.f18123c = this.f18130a;
                c4279d.f18126f = this.f18133d;
                c4279d.f18124d = this.f18131b;
                c4279d.f18125e = this.f18132c;
                c4279d.f18127g = this.f18134e;
                c4279d.f18128h = this.f18135f;
                c4279d.f18129i = this.f18136g;
                return c4279d;
            }
            throw new IllegalArgumentException("SkuDetails must be provided.");
        }

        /* renamed from: b */
        public C4280a m16855b(SkuDetails skuDetails) {
            ArrayList<SkuDetails> arrayList = new ArrayList<>();
            arrayList.add(skuDetails);
            this.f18135f = arrayList;
            return this;
        }
    }

    public C4279d() {
        this.f18127g = 0;
    }

    /* renamed from: e */
    public static C4280a m16870e() {
        return new C4280a();
    }

    /* renamed from: a */
    public String m16874a() {
        return this.f18124d;
    }

    /* renamed from: b */
    public String m16873b() {
        return this.f18125e;
    }

    /* renamed from: c */
    public int m16872c() {
        return this.f18127g;
    }

    /* renamed from: d */
    public boolean m16871d() {
        return this.f18129i;
    }

    /* renamed from: k */
    public final String m16864k() {
        return this.f18123c;
    }

    /* renamed from: o */
    public final boolean m16860o() {
        return (!this.f18129i && this.f18123c == null && this.f18126f == null && this.f18127g == 0 && !this.f18121a) ? false : true;
    }

    /* renamed from: p */
    public final String m16859p() {
        return this.f18126f;
    }

    /* renamed from: h */
    public final ArrayList<SkuDetails> m16867h() {
        ArrayList<SkuDetails> arrayList = new ArrayList<>();
        arrayList.addAll(this.f18128h);
        return arrayList;
    }
}
