package p070g5;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import p018b5.C0560a5;
import p018b5.C0578b5;
import p018b5.C0628e4;
import p018b5.C0645f4;
import p018b5.C0662g4;
import p018b5.C0679h4;
import p018b5.C0705id;
import p018b5.C0968y4;
import p018b5.C0985z4;
import p145p.C5270a;
/* renamed from: g5.ta */
/* loaded from: classes2.dex */
public final class C3832ta {

    /* renamed from: a */
    public String f16962a;

    /* renamed from: b */
    public boolean f16963b;

    /* renamed from: c */
    public C0985z4 f16964c;

    /* renamed from: d */
    public BitSet f16965d;

    /* renamed from: e */
    public BitSet f16966e;

    /* renamed from: f */
    public Map<Integer, Long> f16967f;

    /* renamed from: g */
    public Map<Integer, List<Long>> f16968g;

    /* renamed from: h */
    public final /* synthetic */ C3904za f16969h;

    public /* synthetic */ C3832ta(C3904za c3904za, String str, C3820sa c3820sa) {
        this.f16969h = c3904za;
        this.f16962a = str;
        this.f16963b = true;
        this.f16965d = new BitSet();
        this.f16966e = new BitSet();
        this.f16967f = new C5270a();
        this.f16968g = new C5270a();
    }

    /* renamed from: b */
    public static /* bridge */ /* synthetic */ BitSet m17963b(C3832ta c3832ta) {
        return c3832ta.f16965d;
    }

    /* renamed from: a */
    public final C0645f4 m17964a(int i) {
        ArrayList arrayList;
        List list;
        C0628e4 m25990t = C0645f4.m25990t();
        m25990t.m26033t(i);
        m25990t.m26031v(this.f16963b);
        C0985z4 c0985z4 = this.f16964c;
        if (c0985z4 != null) {
            m25990t.m26030x(c0985z4);
        }
        C0968y4 m24871x = C0985z4.m24871x();
        m24871x.m24919u(C3640da.m18415E(this.f16965d));
        m24871x.m24917x(C3640da.m18415E(this.f16966e));
        Map<Integer, Long> map = this.f16967f;
        if (map == null) {
            arrayList = null;
        } else {
            ArrayList arrayList2 = new ArrayList(map.size());
            for (Integer num : this.f16967f.keySet()) {
                int intValue = num.intValue();
                Long l = this.f16967f.get(Integer.valueOf(intValue));
                if (l != null) {
                    C0662g4 m25875u = C0679h4.m25875u();
                    m25875u.m25935u(intValue);
                    m25875u.m25936t(l.longValue());
                    arrayList2.add(m25875u.m25101i());
                }
            }
            arrayList = arrayList2;
        }
        if (arrayList != null) {
            m24871x.m24920t(arrayList);
        }
        Map<Integer, List<Long>> map2 = this.f16968g;
        if (map2 == null) {
            list = Collections.emptyList();
        } else {
            ArrayList arrayList3 = new ArrayList(map2.size());
            for (Integer num2 : this.f16968g.keySet()) {
                C0560a5 m26134v = C0578b5.m26134v();
                m26134v.m26174u(num2.intValue());
                List<Long> list2 = this.f16968g.get(num2);
                if (list2 != null) {
                    Collections.sort(list2);
                    m26134v.m26175t(list2);
                }
                arrayList3.add((C0578b5) m26134v.m25101i());
            }
            list = arrayList3;
        }
        m24871x.m24918v(list);
        m25990t.m26032u(m24871x);
        return m25990t.m25101i();
    }

    /* renamed from: c */
    public final void m17962c(AbstractC3880xa abstractC3880xa) {
        int mo17818a = abstractC3880xa.mo17818a();
        Boolean bool = abstractC3880xa.f17086c;
        if (bool != null) {
            this.f16966e.set(mo17818a, bool.booleanValue());
        }
        Boolean bool2 = abstractC3880xa.f17087d;
        if (bool2 != null) {
            this.f16965d.set(mo17818a, bool2.booleanValue());
        }
        if (abstractC3880xa.f17088e != null) {
            Map<Integer, Long> map = this.f16967f;
            Integer valueOf = Integer.valueOf(mo17818a);
            Long l = map.get(valueOf);
            long longValue = abstractC3880xa.f17088e.longValue() / 1000;
            if (l == null || longValue > l.longValue()) {
                this.f16967f.put(valueOf, Long.valueOf(longValue));
            }
        }
        if (abstractC3880xa.f17089f != null) {
            Map<Integer, List<Long>> map2 = this.f16968g;
            Integer valueOf2 = Integer.valueOf(mo17818a);
            List<Long> list = map2.get(valueOf2);
            if (list == null) {
                list = new ArrayList<>();
                this.f16968g.put(valueOf2, list);
            }
            if (abstractC3880xa.mo17816c()) {
                list.clear();
            }
            C0705id.m25784b();
            C3665g m18513u = this.f16969h.f17008a.m18513u();
            String str = this.f16962a;
            C3609b3<Boolean> c3609b3 = C3621c3.f16356a0;
            if (m18513u.m18356w(str, c3609b3) && abstractC3880xa.mo17817b()) {
                list.clear();
            }
            C0705id.m25784b();
            if (this.f16969h.f17008a.m18513u().m18356w(this.f16962a, c3609b3)) {
                Long valueOf3 = Long.valueOf(abstractC3880xa.f17089f.longValue() / 1000);
                if (!list.contains(valueOf3)) {
                    list.add(valueOf3);
                    return;
                }
                return;
            }
            list.add(Long.valueOf(abstractC3880xa.f17089f.longValue() / 1000));
        }
    }

    public /* synthetic */ C3832ta(C3904za c3904za, String str, C0985z4 c0985z4, BitSet bitSet, BitSet bitSet2, Map map, Map map2, C3820sa c3820sa) {
        this.f16969h = c3904za;
        this.f16962a = str;
        this.f16965d = bitSet;
        this.f16966e = bitSet2;
        this.f16967f = map;
        this.f16968g = new C5270a();
        for (Integer num : map2.keySet()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add((Long) map2.get(num));
            this.f16968g.put(num, arrayList);
        }
        this.f16963b = false;
        this.f16964c = c0985z4;
    }
}
