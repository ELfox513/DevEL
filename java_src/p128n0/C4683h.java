package p128n0;

import android.database.Cursor;
import java.util.List;
import p137o0.AbstractC5062a;
import p155q0.C5381a;
import p155q0.InterfaceC5382b;
import p155q0.InterfaceC5383c;
/* renamed from: n0.h */
/* loaded from: classes.dex */
public class C4683h extends InterfaceC5383c.AbstractC5384a {

    /* renamed from: b */
    public C4672a f18791b;

    /* renamed from: c */
    public final AbstractC4684a f18792c;

    /* renamed from: d */
    public final String f18793d;

    /* renamed from: e */
    public final String f18794e;

    @Override // p155q0.InterfaceC5383c.AbstractC5384a
    /* renamed from: b */
    public void mo13361b(InterfaceC5382b interfaceC5382b) {
        super.mo13361b(interfaceC5382b);
    }

    @Override // p155q0.InterfaceC5383c.AbstractC5384a
    /* renamed from: e */
    public void mo13358e(InterfaceC5382b interfaceC5382b, int i, int i2) {
        mo13356g(interfaceC5382b, i, i2);
    }

    /* renamed from: i */
    public final void m15793i(InterfaceC5382b interfaceC5382b) {
        interfaceC5382b.mo13140B("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
    }

    /* renamed from: n0.h$a */
    /* loaded from: classes.dex */
    public static abstract class AbstractC4684a {

        /* renamed from: a */
        public final int f18795a;

        /* renamed from: a */
        public abstract void mo15789a(InterfaceC5382b interfaceC5382b);

        /* renamed from: b */
        public abstract void mo15788b(InterfaceC5382b interfaceC5382b);

        /* renamed from: c */
        public abstract void mo15787c(InterfaceC5382b interfaceC5382b);

        /* renamed from: d */
        public abstract void mo15786d(InterfaceC5382b interfaceC5382b);

        /* renamed from: e */
        public abstract void mo15785e(InterfaceC5382b interfaceC5382b);

        /* renamed from: f */
        public abstract void mo15784f(InterfaceC5382b interfaceC5382b);

        /* renamed from: g */
        public abstract C4685b mo15783g(InterfaceC5382b interfaceC5382b);

        public AbstractC4684a(int i) {
            this.f18795a = i;
        }
    }

    /* renamed from: n0.h$b */
    /* loaded from: classes.dex */
    public static class C4685b {

        /* renamed from: a */
        public final boolean f18796a;

        /* renamed from: b */
        public final String f18797b;

        public C4685b(boolean z, String str) {
            this.f18796a = z;
            this.f18797b = str;
        }
    }

    public C4683h(C4672a c4672a, AbstractC4684a abstractC4684a, String str, String str2) {
        super(abstractC4684a.f18795a);
        this.f18791b = c4672a;
        this.f18792c = abstractC4684a;
        this.f18793d = str;
        this.f18794e = str2;
    }

    /* renamed from: j */
    public static boolean m15792j(InterfaceC5382b interfaceC5382b) {
        Cursor mo13132o0 = interfaceC5382b.mo13132o0("SELECT count(*) FROM sqlite_master WHERE name != 'android_metadata'");
        try {
            boolean z = false;
            if (mo13132o0.moveToFirst()) {
                if (mo13132o0.getInt(0) == 0) {
                    z = true;
                }
            }
            return z;
        } finally {
            mo13132o0.close();
        }
    }

    /* renamed from: k */
    public static boolean m15791k(InterfaceC5382b interfaceC5382b) {
        Cursor mo13132o0 = interfaceC5382b.mo13132o0("SELECT 1 FROM sqlite_master WHERE type = 'table' AND name='room_master_table'");
        try {
            boolean z = false;
            if (mo13132o0.moveToFirst()) {
                if (mo13132o0.getInt(0) != 0) {
                    z = true;
                }
            }
            return z;
        } finally {
            mo13132o0.close();
        }
    }

    @Override // p155q0.InterfaceC5383c.AbstractC5384a
    /* renamed from: g */
    public void mo13356g(InterfaceC5382b interfaceC5382b, int i, int i2) {
        boolean z;
        List<AbstractC5062a> m15798c;
        C4672a c4672a = this.f18791b;
        if (c4672a != null && (m15798c = c4672a.f18744d.m15798c(i, i2)) != null) {
            this.f18792c.mo15784f(interfaceC5382b);
            for (AbstractC5062a abstractC5062a : m15798c) {
                abstractC5062a.mo14736a(interfaceC5382b);
            }
            C4685b mo15783g = this.f18792c.mo15783g(interfaceC5382b);
            if (mo15783g.f18796a) {
                this.f18792c.mo15785e(interfaceC5382b);
                m15790l(interfaceC5382b);
                z = true;
            } else {
                throw new IllegalStateException("Migration didn't properly handle: " + mo15783g.f18797b);
            }
        } else {
            z = false;
        }
        if (!z) {
            C4672a c4672a2 = this.f18791b;
            if (c4672a2 != null && !c4672a2.m15836a(i, i2)) {
                this.f18792c.mo15788b(interfaceC5382b);
                this.f18792c.mo15789a(interfaceC5382b);
                return;
            }
            throw new IllegalStateException("A migration from " + i + " to " + i2 + " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods.");
        }
    }

    @Override // p155q0.InterfaceC5383c.AbstractC5384a
    /* renamed from: d */
    public void mo13359d(InterfaceC5382b interfaceC5382b) {
        boolean m15792j = m15792j(interfaceC5382b);
        this.f18792c.mo15789a(interfaceC5382b);
        if (!m15792j) {
            C4685b mo15783g = this.f18792c.mo15783g(interfaceC5382b);
            if (!mo15783g.f18796a) {
                throw new IllegalStateException("Pre-packaged database has an invalid schema: " + mo15783g.f18797b);
            }
        }
        m15790l(interfaceC5382b);
        this.f18792c.mo15787c(interfaceC5382b);
    }

    @Override // p155q0.InterfaceC5383c.AbstractC5384a
    /* renamed from: f */
    public void mo13357f(InterfaceC5382b interfaceC5382b) {
        super.mo13357f(interfaceC5382b);
        m15794h(interfaceC5382b);
        this.f18792c.mo15786d(interfaceC5382b);
        this.f18791b = null;
    }

    /* renamed from: h */
    public final void m15794h(InterfaceC5382b interfaceC5382b) {
        if (m15791k(interfaceC5382b)) {
            String str = null;
            Cursor mo13139C0 = interfaceC5382b.mo13139C0(new C5381a("SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"));
            try {
                if (mo13139C0.moveToFirst()) {
                    str = mo13139C0.getString(0);
                }
                mo13139C0.close();
                if (!this.f18793d.equals(str) && !this.f18794e.equals(str)) {
                    throw new IllegalStateException("Room cannot verify the data integrity. Looks like you've changed schema but forgot to update the version number. You can simply fix this by increasing the version number.");
                }
                return;
            } catch (Throwable th) {
                mo13139C0.close();
                throw th;
            }
        }
        C4685b mo15783g = this.f18792c.mo15783g(interfaceC5382b);
        if (mo15783g.f18796a) {
            this.f18792c.mo15785e(interfaceC5382b);
            m15790l(interfaceC5382b);
            return;
        }
        throw new IllegalStateException("Pre-packaged database has an invalid schema: " + mo15783g.f18797b);
    }

    /* renamed from: l */
    public final void m15790l(InterfaceC5382b interfaceC5382b) {
        m15793i(interfaceC5382b);
        interfaceC5382b.mo13140B(C4682g.m15795a(this.f18793d));
    }
}
