package p057f1;

import android.database.Cursor;
import java.util.ArrayList;
import java.util.List;
import p128n0.AbstractC4673b;
import p128n0.AbstractC4676e;
import p128n0.AbstractC4689l;
import p128n0.C4686i;
import p146p0.C5286b;
import p146p0.C5287c;
import p155q0.InterfaceC5390f;
/* renamed from: f1.i */
/* loaded from: classes.dex */
public final class C3469i implements InterfaceC3468h {

    /* renamed from: a */
    public final AbstractC4676e f15900a;

    /* renamed from: b */
    public final AbstractC4673b<C3467g> f15901b;

    /* renamed from: c */
    public final AbstractC4689l f15902c;

    /* renamed from: f1.i$a */
    /* loaded from: classes.dex */
    public class C3470a extends AbstractC4673b<C3467g> {
        public C3470a(AbstractC4676e abstractC4676e) {
            super(abstractC4676e);
        }

        @Override // p128n0.AbstractC4689l
        /* renamed from: d */
        public String mo15772d() {
            return "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`system_id`) VALUES (?,?)";
        }

        @Override // p128n0.AbstractC4673b
        /* renamed from: i */
        public void mo15835g(InterfaceC5390f interfaceC5390f, C3467g c3467g) {
            String str = c3467g.f15898a;
            if (str == null) {
                interfaceC5390f.mo13122A0(1);
            } else {
                interfaceC5390f.mo13121E(1, str);
            }
            interfaceC5390f.mo13119c0(2, c3467g.f15899b);
        }
    }

    /* renamed from: f1.i$b */
    /* loaded from: classes.dex */
    public class C3471b extends AbstractC4689l {
        public C3471b(AbstractC4676e abstractC4676e) {
            super(abstractC4676e);
        }

        @Override // p128n0.AbstractC4689l
        /* renamed from: d */
        public String mo15772d() {
            return "DELETE FROM SystemIdInfo where work_spec_id=?";
        }
    }

    @Override // p057f1.InterfaceC3468h
    /* renamed from: a */
    public List<String> mo18800a() {
        C4686i m15782e = C4686i.m15782e("SELECT DISTINCT work_spec_id FROM SystemIdInfo", 0);
        this.f15900a.m15829b();
        Cursor m13637b = C5287c.m13637b(this.f15900a, m15782e, false, null);
        try {
            ArrayList arrayList = new ArrayList(m13637b.getCount());
            while (m13637b.moveToNext()) {
                arrayList.add(m13637b.getString(0));
            }
            return arrayList;
        } finally {
            m13637b.close();
            m15782e.m15779h();
        }
    }

    @Override // p057f1.InterfaceC3468h
    /* renamed from: b */
    public void mo18799b(C3467g c3467g) {
        this.f15900a.m15829b();
        this.f15900a.m15828c();
        try {
            this.f15901b.m15834h(c3467g);
            this.f15900a.m15813r();
        } finally {
            this.f15900a.m15824g();
        }
    }

    @Override // p057f1.InterfaceC3468h
    /* renamed from: c */
    public C3467g mo18798c(String str) {
        C4686i m15782e = C4686i.m15782e("SELECT `SystemIdInfo`.`work_spec_id` AS `work_spec_id`, `SystemIdInfo`.`system_id` AS `system_id` FROM SystemIdInfo WHERE work_spec_id=?", 1);
        if (str == null) {
            m15782e.mo13122A0(1);
        } else {
            m15782e.mo13121E(1, str);
        }
        this.f15900a.m15829b();
        C3467g c3467g = null;
        Cursor m13637b = C5287c.m13637b(this.f15900a, m15782e, false, null);
        try {
            int m13639b = C5286b.m13639b(m13637b, "work_spec_id");
            int m13639b2 = C5286b.m13639b(m13637b, "system_id");
            if (m13637b.moveToFirst()) {
                c3467g = new C3467g(m13637b.getString(m13639b), m13637b.getInt(m13639b2));
            }
            return c3467g;
        } finally {
            m13637b.close();
            m15782e.m15779h();
        }
    }

    @Override // p057f1.InterfaceC3468h
    /* renamed from: d */
    public void mo18797d(String str) {
        this.f15900a.m15829b();
        InterfaceC5390f m15775a = this.f15902c.m15775a();
        if (str == null) {
            m15775a.mo13122A0(1);
        } else {
            m15775a.mo13121E(1, str);
        }
        this.f15900a.m15828c();
        try {
            m15775a.mo13117I();
            this.f15900a.m15813r();
        } finally {
            this.f15900a.m15824g();
            this.f15902c.m15770f(m15775a);
        }
    }

    public C3469i(AbstractC4676e abstractC4676e) {
        this.f15900a = abstractC4676e;
        this.f15901b = new C3470a(abstractC4676e);
        this.f15902c = new C3471b(abstractC4676e);
    }
}
