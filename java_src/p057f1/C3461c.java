package p057f1;

import android.database.Cursor;
import java.util.ArrayList;
import java.util.List;
import p128n0.AbstractC4673b;
import p128n0.AbstractC4676e;
import p128n0.C4686i;
import p146p0.C5287c;
import p155q0.InterfaceC5390f;
/* renamed from: f1.c */
/* loaded from: classes.dex */
public final class C3461c implements InterfaceC3460b {

    /* renamed from: a */
    public final AbstractC4676e f15890a;

    /* renamed from: b */
    public final AbstractC4673b<C3459a> f15891b;

    /* renamed from: f1.c$a */
    /* loaded from: classes.dex */
    public class C3462a extends AbstractC4673b<C3459a> {
        public C3462a(AbstractC4676e abstractC4676e) {
            super(abstractC4676e);
        }

        @Override // p128n0.AbstractC4689l
        /* renamed from: d */
        public String mo15772d() {
            return "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)";
        }

        @Override // p128n0.AbstractC4673b
        /* renamed from: i */
        public void mo15835g(InterfaceC5390f interfaceC5390f, C3459a c3459a) {
            String str = c3459a.f15888a;
            if (str == null) {
                interfaceC5390f.mo13122A0(1);
            } else {
                interfaceC5390f.mo13121E(1, str);
            }
            String str2 = c3459a.f15889b;
            if (str2 == null) {
                interfaceC5390f.mo13122A0(2);
            } else {
                interfaceC5390f.mo13121E(2, str2);
            }
        }
    }

    @Override // p057f1.InterfaceC3460b
    /* renamed from: a */
    public List<String> mo18808a(String str) {
        C4686i m15782e = C4686i.m15782e("SELECT work_spec_id FROM dependency WHERE prerequisite_id=?", 1);
        if (str == null) {
            m15782e.mo13122A0(1);
        } else {
            m15782e.mo13121E(1, str);
        }
        this.f15890a.m15829b();
        Cursor m13637b = C5287c.m13637b(this.f15890a, m15782e, false, null);
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

    @Override // p057f1.InterfaceC3460b
    /* renamed from: b */
    public boolean mo18807b(String str) {
        boolean z = true;
        C4686i m15782e = C4686i.m15782e("SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)", 1);
        if (str == null) {
            m15782e.mo13122A0(1);
        } else {
            m15782e.mo13121E(1, str);
        }
        this.f15890a.m15829b();
        boolean z2 = false;
        Cursor m13637b = C5287c.m13637b(this.f15890a, m15782e, false, null);
        try {
            if (m13637b.moveToFirst()) {
                if (m13637b.getInt(0) == 0) {
                    z = false;
                }
                z2 = z;
            }
            return z2;
        } finally {
            m13637b.close();
            m15782e.m15779h();
        }
    }

    @Override // p057f1.InterfaceC3460b
    /* renamed from: c */
    public boolean mo18806c(String str) {
        boolean z = true;
        C4686i m15782e = C4686i.m15782e("SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?", 1);
        if (str == null) {
            m15782e.mo13122A0(1);
        } else {
            m15782e.mo13121E(1, str);
        }
        this.f15890a.m15829b();
        boolean z2 = false;
        Cursor m13637b = C5287c.m13637b(this.f15890a, m15782e, false, null);
        try {
            if (m13637b.moveToFirst()) {
                if (m13637b.getInt(0) == 0) {
                    z = false;
                }
                z2 = z;
            }
            return z2;
        } finally {
            m13637b.close();
            m15782e.m15779h();
        }
    }

    @Override // p057f1.InterfaceC3460b
    /* renamed from: d */
    public void mo18805d(C3459a c3459a) {
        this.f15890a.m15829b();
        this.f15890a.m15828c();
        try {
            this.f15891b.m15834h(c3459a);
            this.f15890a.m15813r();
        } finally {
            this.f15890a.m15824g();
        }
    }

    public C3461c(AbstractC4676e abstractC4676e) {
        this.f15890a = abstractC4676e;
        this.f15891b = new C3462a(abstractC4676e);
    }
}
