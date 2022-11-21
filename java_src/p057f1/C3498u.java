package p057f1;

import android.database.Cursor;
import java.util.ArrayList;
import java.util.List;
import p128n0.AbstractC4673b;
import p128n0.AbstractC4676e;
import p128n0.C4686i;
import p146p0.C5287c;
import p155q0.InterfaceC5390f;
/* renamed from: f1.u */
/* loaded from: classes.dex */
public final class C3498u implements InterfaceC3497t {

    /* renamed from: a */
    public final AbstractC4676e f15962a;

    /* renamed from: b */
    public final AbstractC4673b<C3496s> f15963b;

    /* renamed from: f1.u$a */
    /* loaded from: classes.dex */
    public class C3499a extends AbstractC4673b<C3496s> {
        public C3499a(AbstractC4676e abstractC4676e) {
            super(abstractC4676e);
        }

        @Override // p128n0.AbstractC4689l
        /* renamed from: d */
        public String mo15772d() {
            return "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)";
        }

        @Override // p128n0.AbstractC4673b
        /* renamed from: i */
        public void mo15835g(InterfaceC5390f interfaceC5390f, C3496s c3496s) {
            String str = c3496s.f15960a;
            if (str == null) {
                interfaceC5390f.mo13122A0(1);
            } else {
                interfaceC5390f.mo13121E(1, str);
            }
            String str2 = c3496s.f15961b;
            if (str2 == null) {
                interfaceC5390f.mo13122A0(2);
            } else {
                interfaceC5390f.mo13121E(2, str2);
            }
        }
    }

    @Override // p057f1.InterfaceC3497t
    /* renamed from: a */
    public List<String> mo18762a(String str) {
        C4686i m15782e = C4686i.m15782e("SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?", 1);
        if (str == null) {
            m15782e.mo13122A0(1);
        } else {
            m15782e.mo13121E(1, str);
        }
        this.f15962a.m15829b();
        Cursor m13637b = C5287c.m13637b(this.f15962a, m15782e, false, null);
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

    @Override // p057f1.InterfaceC3497t
    /* renamed from: b */
    public void mo18761b(C3496s c3496s) {
        this.f15962a.m15829b();
        this.f15962a.m15828c();
        try {
            this.f15963b.m15834h(c3496s);
            this.f15962a.m15813r();
        } finally {
            this.f15962a.m15824g();
        }
    }

    public C3498u(AbstractC4676e abstractC4676e) {
        this.f15962a = abstractC4676e;
        this.f15963b = new C3499a(abstractC4676e);
    }
}
