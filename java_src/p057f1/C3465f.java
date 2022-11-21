package p057f1;

import android.database.Cursor;
import p128n0.AbstractC4673b;
import p128n0.AbstractC4676e;
import p128n0.C4686i;
import p146p0.C5287c;
import p155q0.InterfaceC5390f;
/* renamed from: f1.f */
/* loaded from: classes.dex */
public final class C3465f implements InterfaceC3464e {

    /* renamed from: a */
    public final AbstractC4676e f15895a;

    /* renamed from: b */
    public final AbstractC4673b<C3463d> f15896b;

    /* renamed from: f1.f$a */
    /* loaded from: classes.dex */
    public class C3466a extends AbstractC4673b<C3463d> {
        public C3466a(AbstractC4676e abstractC4676e) {
            super(abstractC4676e);
        }

        @Override // p128n0.AbstractC4689l
        /* renamed from: d */
        public String mo15772d() {
            return "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)";
        }

        @Override // p128n0.AbstractC4673b
        /* renamed from: i */
        public void mo15835g(InterfaceC5390f interfaceC5390f, C3463d c3463d) {
            String str = c3463d.f15893a;
            if (str == null) {
                interfaceC5390f.mo13122A0(1);
            } else {
                interfaceC5390f.mo13121E(1, str);
            }
            Long l = c3463d.f15894b;
            if (l == null) {
                interfaceC5390f.mo13122A0(2);
            } else {
                interfaceC5390f.mo13119c0(2, l.longValue());
            }
        }
    }

    @Override // p057f1.InterfaceC3464e
    /* renamed from: a */
    public Long mo18803a(String str) {
        C4686i m15782e = C4686i.m15782e("SELECT long_value FROM Preference where `key`=?", 1);
        if (str == null) {
            m15782e.mo13122A0(1);
        } else {
            m15782e.mo13121E(1, str);
        }
        this.f15895a.m15829b();
        Long l = null;
        Cursor m13637b = C5287c.m13637b(this.f15895a, m15782e, false, null);
        try {
            if (m13637b.moveToFirst() && !m13637b.isNull(0)) {
                l = Long.valueOf(m13637b.getLong(0));
            }
            return l;
        } finally {
            m13637b.close();
            m15782e.m15779h();
        }
    }

    @Override // p057f1.InterfaceC3464e
    /* renamed from: b */
    public void mo18802b(C3463d c3463d) {
        this.f15895a.m15829b();
        this.f15895a.m15828c();
        try {
            this.f15896b.m15834h(c3463d);
            this.f15895a.m15813r();
        } finally {
            this.f15895a.m15824g();
        }
    }

    public C3465f(AbstractC4676e abstractC4676e) {
        this.f15895a = abstractC4676e;
        this.f15896b = new C3466a(abstractC4676e);
    }
}
