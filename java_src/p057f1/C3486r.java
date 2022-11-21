package p057f1;

import android.database.Cursor;
import androidx.work.C0380b;
import java.util.ArrayList;
import java.util.List;
import net.bytebuddy.description.type.TypeDescription;
import p057f1.C3482p;
import p128n0.AbstractC4673b;
import p128n0.AbstractC4676e;
import p128n0.AbstractC4689l;
import p128n0.C4686i;
import p146p0.C5286b;
import p146p0.C5287c;
import p146p0.C5289e;
import p155q0.InterfaceC5390f;
import p209w0.C7103b;
import p209w0.EnumC7130s;
/* renamed from: f1.r */
/* loaded from: classes.dex */
public final class C3486r implements InterfaceC3485q {

    /* renamed from: a */
    public final AbstractC4676e f15941a;

    /* renamed from: b */
    public final AbstractC4673b<C3482p> f15942b;

    /* renamed from: c */
    public final AbstractC4689l f15943c;

    /* renamed from: d */
    public final AbstractC4689l f15944d;

    /* renamed from: e */
    public final AbstractC4689l f15945e;

    /* renamed from: f */
    public final AbstractC4689l f15946f;

    /* renamed from: g */
    public final AbstractC4689l f15947g;

    /* renamed from: h */
    public final AbstractC4689l f15948h;

    /* renamed from: i */
    public final AbstractC4689l f15949i;

    /* renamed from: j */
    public final AbstractC4689l f15950j;

    /* renamed from: f1.r$a */
    /* loaded from: classes.dex */
    public class C3487a extends AbstractC4673b<C3482p> {
        public C3487a(AbstractC4676e abstractC4676e) {
            super(abstractC4676e);
        }

        @Override // p128n0.AbstractC4689l
        /* renamed from: d */
        public String mo15772d() {
            return "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        @Override // p128n0.AbstractC4673b
        /* renamed from: i */
        public void mo15835g(InterfaceC5390f interfaceC5390f, C3482p c3482p) {
            String str = c3482p.f15921a;
            if (str == null) {
                interfaceC5390f.mo13122A0(1);
            } else {
                interfaceC5390f.mo13121E(1, str);
            }
            interfaceC5390f.mo13119c0(2, C3500v.m18750j(c3482p.f15922b));
            String str2 = c3482p.f15923c;
            if (str2 == null) {
                interfaceC5390f.mo13122A0(3);
            } else {
                interfaceC5390f.mo13121E(3, str2);
            }
            String str3 = c3482p.f15924d;
            if (str3 == null) {
                interfaceC5390f.mo13122A0(4);
            } else {
                interfaceC5390f.mo13121E(4, str3);
            }
            byte[] m26656l = C0380b.m26656l(c3482p.f15925e);
            if (m26656l == null) {
                interfaceC5390f.mo13122A0(5);
            } else {
                interfaceC5390f.mo13118k0(5, m26656l);
            }
            byte[] m26656l2 = C0380b.m26656l(c3482p.f15926f);
            if (m26656l2 == null) {
                interfaceC5390f.mo13122A0(6);
            } else {
                interfaceC5390f.mo13118k0(6, m26656l2);
            }
            interfaceC5390f.mo13119c0(7, c3482p.f15927g);
            interfaceC5390f.mo13119c0(8, c3482p.f15928h);
            interfaceC5390f.mo13119c0(9, c3482p.f15929i);
            interfaceC5390f.mo13119c0(10, c3482p.f15931k);
            interfaceC5390f.mo13119c0(11, C3500v.m18759a(c3482p.f15932l));
            interfaceC5390f.mo13119c0(12, c3482p.f15933m);
            interfaceC5390f.mo13119c0(13, c3482p.f15934n);
            interfaceC5390f.mo13119c0(14, c3482p.f15935o);
            interfaceC5390f.mo13119c0(15, c3482p.f15936p);
            interfaceC5390f.mo13119c0(16, c3482p.f15937q ? 1L : 0L);
            interfaceC5390f.mo13119c0(17, C3500v.m18751i(c3482p.f15938r));
            C7103b c7103b = c3482p.f15930j;
            if (c7103b != null) {
                interfaceC5390f.mo13119c0(18, C3500v.m18752h(c7103b.m2524b()));
                interfaceC5390f.mo13119c0(19, c7103b.m2519g() ? 1L : 0L);
                interfaceC5390f.mo13119c0(20, c7103b.m2518h() ? 1L : 0L);
                interfaceC5390f.mo13119c0(21, c7103b.m2520f() ? 1L : 0L);
                interfaceC5390f.mo13119c0(22, c7103b.m2517i() ? 1L : 0L);
                interfaceC5390f.mo13119c0(23, c7103b.m2523c());
                interfaceC5390f.mo13119c0(24, c7103b.m2522d());
                byte[] m18757c = C3500v.m18757c(c7103b.m2525a());
                if (m18757c == null) {
                    interfaceC5390f.mo13122A0(25);
                    return;
                } else {
                    interfaceC5390f.mo13118k0(25, m18757c);
                    return;
                }
            }
            interfaceC5390f.mo13122A0(18);
            interfaceC5390f.mo13122A0(19);
            interfaceC5390f.mo13122A0(20);
            interfaceC5390f.mo13122A0(21);
            interfaceC5390f.mo13122A0(22);
            interfaceC5390f.mo13122A0(23);
            interfaceC5390f.mo13122A0(24);
            interfaceC5390f.mo13122A0(25);
        }
    }

    /* renamed from: f1.r$b */
    /* loaded from: classes.dex */
    public class C3488b extends AbstractC4689l {
        public C3488b(AbstractC4676e abstractC4676e) {
            super(abstractC4676e);
        }

        @Override // p128n0.AbstractC4689l
        /* renamed from: d */
        public String mo15772d() {
            return "DELETE FROM workspec WHERE id=?";
        }
    }

    /* renamed from: f1.r$c */
    /* loaded from: classes.dex */
    public class C3489c extends AbstractC4689l {
        public C3489c(AbstractC4676e abstractC4676e) {
            super(abstractC4676e);
        }

        @Override // p128n0.AbstractC4689l
        /* renamed from: d */
        public String mo15772d() {
            return "UPDATE workspec SET output=? WHERE id=?";
        }
    }

    /* renamed from: f1.r$d */
    /* loaded from: classes.dex */
    public class C3490d extends AbstractC4689l {
        public C3490d(AbstractC4676e abstractC4676e) {
            super(abstractC4676e);
        }

        @Override // p128n0.AbstractC4689l
        /* renamed from: d */
        public String mo15772d() {
            return "UPDATE workspec SET period_start_time=? WHERE id=?";
        }
    }

    /* renamed from: f1.r$e */
    /* loaded from: classes.dex */
    public class C3491e extends AbstractC4689l {
        public C3491e(AbstractC4676e abstractC4676e) {
            super(abstractC4676e);
        }

        @Override // p128n0.AbstractC4689l
        /* renamed from: d */
        public String mo15772d() {
            return "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?";
        }
    }

    /* renamed from: f1.r$f */
    /* loaded from: classes.dex */
    public class C3492f extends AbstractC4689l {
        public C3492f(AbstractC4676e abstractC4676e) {
            super(abstractC4676e);
        }

        @Override // p128n0.AbstractC4689l
        /* renamed from: d */
        public String mo15772d() {
            return "UPDATE workspec SET run_attempt_count=0 WHERE id=?";
        }
    }

    /* renamed from: f1.r$g */
    /* loaded from: classes.dex */
    public class C3493g extends AbstractC4689l {
        public C3493g(AbstractC4676e abstractC4676e) {
            super(abstractC4676e);
        }

        @Override // p128n0.AbstractC4689l
        /* renamed from: d */
        public String mo15772d() {
            return "UPDATE workspec SET schedule_requested_at=? WHERE id=?";
        }
    }

    /* renamed from: f1.r$h */
    /* loaded from: classes.dex */
    public class C3494h extends AbstractC4689l {
        public C3494h(AbstractC4676e abstractC4676e) {
            super(abstractC4676e);
        }

        @Override // p128n0.AbstractC4689l
        /* renamed from: d */
        public String mo15772d() {
            return "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)";
        }
    }

    /* renamed from: f1.r$i */
    /* loaded from: classes.dex */
    public class C3495i extends AbstractC4689l {
        public C3495i(AbstractC4676e abstractC4676e) {
            super(abstractC4676e);
        }

        @Override // p128n0.AbstractC4689l
        /* renamed from: d */
        public String mo15772d() {
            return "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))";
        }
    }

    @Override // p057f1.InterfaceC3485q
    /* renamed from: a */
    public void mo18784a(String str) {
        this.f15941a.m15829b();
        InterfaceC5390f m15775a = this.f15943c.m15775a();
        if (str == null) {
            m15775a.mo13122A0(1);
        } else {
            m15775a.mo13121E(1, str);
        }
        this.f15941a.m15828c();
        try {
            m15775a.mo13117I();
            this.f15941a.m15813r();
        } finally {
            this.f15941a.m15824g();
            this.f15943c.m15770f(m15775a);
        }
    }

    @Override // p057f1.InterfaceC3485q
    /* renamed from: b */
    public int mo18783b(EnumC7130s enumC7130s, String... strArr) {
        this.f15941a.m15829b();
        StringBuilder m13633b = C5289e.m13633b();
        m13633b.append("UPDATE workspec SET state=");
        m13633b.append(TypeDescription.Generic.OfWildcardType.SYMBOL);
        m13633b.append(" WHERE id IN (");
        C5289e.m13634a(m13633b, strArr.length);
        m13633b.append(")");
        InterfaceC5390f m15827d = this.f15941a.m15827d(m13633b.toString());
        m15827d.mo13119c0(1, C3500v.m18750j(enumC7130s));
        int i = 2;
        for (String str : strArr) {
            if (str == null) {
                m15827d.mo13122A0(i);
            } else {
                m15827d.mo13121E(i, str);
            }
            i++;
        }
        this.f15941a.m15828c();
        try {
            int mo13117I = m15827d.mo13117I();
            this.f15941a.m15813r();
            return mo13117I;
        } finally {
            this.f15941a.m15824g();
        }
    }

    @Override // p057f1.InterfaceC3485q
    /* renamed from: c */
    public int mo18782c(String str, long j) {
        this.f15941a.m15829b();
        InterfaceC5390f m15775a = this.f15948h.m15775a();
        m15775a.mo13119c0(1, j);
        if (str == null) {
            m15775a.mo13122A0(2);
        } else {
            m15775a.mo13121E(2, str);
        }
        this.f15941a.m15828c();
        try {
            int mo13117I = m15775a.mo13117I();
            this.f15941a.m15813r();
            return mo13117I;
        } finally {
            this.f15941a.m15824g();
            this.f15948h.m15770f(m15775a);
        }
    }

    @Override // p057f1.InterfaceC3485q
    /* renamed from: d */
    public List<C3482p.C3484b> mo18781d(String str) {
        C4686i m15782e = C4686i.m15782e("SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            m15782e.mo13122A0(1);
        } else {
            m15782e.mo13121E(1, str);
        }
        this.f15941a.m15829b();
        Cursor m13637b = C5287c.m13637b(this.f15941a, m15782e, false, null);
        try {
            int m13639b = C5286b.m13639b(m13637b, "id");
            int m13639b2 = C5286b.m13639b(m13637b, "state");
            ArrayList arrayList = new ArrayList(m13637b.getCount());
            while (m13637b.moveToNext()) {
                C3482p.C3484b c3484b = new C3482p.C3484b();
                c3484b.f15939a = m13637b.getString(m13639b);
                c3484b.f15940b = C3500v.m18753g(m13637b.getInt(m13639b2));
                arrayList.add(c3484b);
            }
            return arrayList;
        } finally {
            m13637b.close();
            m15782e.m15779h();
        }
    }

    @Override // p057f1.InterfaceC3485q
    /* renamed from: e */
    public List<C3482p> mo18780e(long j) {
        C4686i c4686i;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        C4686i m15782e = C4686i.m15782e("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE period_start_time >= ? AND state IN (2, 3, 5) ORDER BY period_start_time DESC", 1);
        m15782e.mo13119c0(1, j);
        this.f15941a.m15829b();
        Cursor m13637b = C5287c.m13637b(this.f15941a, m15782e, false, null);
        try {
            int m13639b = C5286b.m13639b(m13637b, "required_network_type");
            int m13639b2 = C5286b.m13639b(m13637b, "requires_charging");
            int m13639b3 = C5286b.m13639b(m13637b, "requires_device_idle");
            int m13639b4 = C5286b.m13639b(m13637b, "requires_battery_not_low");
            int m13639b5 = C5286b.m13639b(m13637b, "requires_storage_not_low");
            int m13639b6 = C5286b.m13639b(m13637b, "trigger_content_update_delay");
            int m13639b7 = C5286b.m13639b(m13637b, "trigger_max_content_delay");
            int m13639b8 = C5286b.m13639b(m13637b, "content_uri_triggers");
            int m13639b9 = C5286b.m13639b(m13637b, "id");
            int m13639b10 = C5286b.m13639b(m13637b, "state");
            int m13639b11 = C5286b.m13639b(m13637b, "worker_class_name");
            int m13639b12 = C5286b.m13639b(m13637b, "input_merger_class_name");
            int m13639b13 = C5286b.m13639b(m13637b, "input");
            int m13639b14 = C5286b.m13639b(m13637b, "output");
            c4686i = m15782e;
            try {
                int m13639b15 = C5286b.m13639b(m13637b, "initial_delay");
                int m13639b16 = C5286b.m13639b(m13637b, "interval_duration");
                int m13639b17 = C5286b.m13639b(m13637b, "flex_duration");
                int m13639b18 = C5286b.m13639b(m13637b, "run_attempt_count");
                int m13639b19 = C5286b.m13639b(m13637b, "backoff_policy");
                int m13639b20 = C5286b.m13639b(m13637b, "backoff_delay_duration");
                int m13639b21 = C5286b.m13639b(m13637b, "period_start_time");
                int m13639b22 = C5286b.m13639b(m13637b, "minimum_retention_duration");
                int m13639b23 = C5286b.m13639b(m13637b, "schedule_requested_at");
                int m13639b24 = C5286b.m13639b(m13637b, "run_in_foreground");
                int m13639b25 = C5286b.m13639b(m13637b, "out_of_quota_policy");
                int i = m13639b14;
                ArrayList arrayList = new ArrayList(m13637b.getCount());
                while (m13637b.moveToNext()) {
                    String string = m13637b.getString(m13639b9);
                    int i2 = m13639b9;
                    String string2 = m13637b.getString(m13639b11);
                    int i3 = m13639b11;
                    C7103b c7103b = new C7103b();
                    int i4 = m13639b;
                    c7103b.m2515k(C3500v.m18755e(m13637b.getInt(m13639b)));
                    if (m13637b.getInt(m13639b2) != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    c7103b.m2513m(z);
                    if (m13637b.getInt(m13639b3) != 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    c7103b.m2512n(z2);
                    if (m13637b.getInt(m13639b4) != 0) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    c7103b.m2514l(z3);
                    if (m13637b.getInt(m13639b5) != 0) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    c7103b.m2511o(z4);
                    int i5 = m13639b2;
                    int i6 = m13639b3;
                    c7103b.m2510p(m13637b.getLong(m13639b6));
                    c7103b.m2509q(m13637b.getLong(m13639b7));
                    c7103b.m2516j(C3500v.m18758b(m13637b.getBlob(m13639b8)));
                    C3482p c3482p = new C3482p(string, string2);
                    c3482p.f15922b = C3500v.m18753g(m13637b.getInt(m13639b10));
                    c3482p.f15924d = m13637b.getString(m13639b12);
                    c3482p.f15925e = C0380b.m26661g(m13637b.getBlob(m13639b13));
                    int i7 = i;
                    c3482p.f15926f = C0380b.m26661g(m13637b.getBlob(i7));
                    int i8 = m13639b15;
                    i = i7;
                    c3482p.f15927g = m13637b.getLong(i8);
                    int i9 = m13639b12;
                    int i10 = m13639b16;
                    c3482p.f15928h = m13637b.getLong(i10);
                    int i11 = m13639b4;
                    int i12 = m13639b17;
                    c3482p.f15929i = m13637b.getLong(i12);
                    int i13 = m13639b18;
                    c3482p.f15931k = m13637b.getInt(i13);
                    int i14 = m13639b19;
                    c3482p.f15932l = C3500v.m18756d(m13637b.getInt(i14));
                    m13639b17 = i12;
                    int i15 = m13639b20;
                    c3482p.f15933m = m13637b.getLong(i15);
                    int i16 = m13639b21;
                    c3482p.f15934n = m13637b.getLong(i16);
                    m13639b21 = i16;
                    int i17 = m13639b22;
                    c3482p.f15935o = m13637b.getLong(i17);
                    int i18 = m13639b23;
                    c3482p.f15936p = m13637b.getLong(i18);
                    int i19 = m13639b24;
                    if (m13637b.getInt(i19) != 0) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    c3482p.f15937q = z5;
                    int i20 = m13639b25;
                    c3482p.f15938r = C3500v.m18754f(m13637b.getInt(i20));
                    c3482p.f15930j = c7103b;
                    arrayList.add(c3482p);
                    m13639b2 = i5;
                    m13639b25 = i20;
                    m13639b12 = i9;
                    m13639b15 = i8;
                    m13639b16 = i10;
                    m13639b18 = i13;
                    m13639b23 = i18;
                    m13639b9 = i2;
                    m13639b11 = i3;
                    m13639b = i4;
                    m13639b24 = i19;
                    m13639b22 = i17;
                    m13639b3 = i6;
                    m13639b20 = i15;
                    m13639b4 = i11;
                    m13639b19 = i14;
                }
                m13637b.close();
                c4686i.m15779h();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                m13637b.close();
                c4686i.m15779h();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            c4686i = m15782e;
        }
    }

    @Override // p057f1.InterfaceC3485q
    /* renamed from: f */
    public List<C3482p> mo18779f(int i) {
        C4686i c4686i;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        C4686i m15782e = C4686i.m15782e("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY period_start_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))", 1);
        m15782e.mo13119c0(1, i);
        this.f15941a.m15829b();
        Cursor m13637b = C5287c.m13637b(this.f15941a, m15782e, false, null);
        try {
            int m13639b = C5286b.m13639b(m13637b, "required_network_type");
            int m13639b2 = C5286b.m13639b(m13637b, "requires_charging");
            int m13639b3 = C5286b.m13639b(m13637b, "requires_device_idle");
            int m13639b4 = C5286b.m13639b(m13637b, "requires_battery_not_low");
            int m13639b5 = C5286b.m13639b(m13637b, "requires_storage_not_low");
            int m13639b6 = C5286b.m13639b(m13637b, "trigger_content_update_delay");
            int m13639b7 = C5286b.m13639b(m13637b, "trigger_max_content_delay");
            int m13639b8 = C5286b.m13639b(m13637b, "content_uri_triggers");
            int m13639b9 = C5286b.m13639b(m13637b, "id");
            int m13639b10 = C5286b.m13639b(m13637b, "state");
            int m13639b11 = C5286b.m13639b(m13637b, "worker_class_name");
            int m13639b12 = C5286b.m13639b(m13637b, "input_merger_class_name");
            int m13639b13 = C5286b.m13639b(m13637b, "input");
            int m13639b14 = C5286b.m13639b(m13637b, "output");
            c4686i = m15782e;
            try {
                int m13639b15 = C5286b.m13639b(m13637b, "initial_delay");
                int m13639b16 = C5286b.m13639b(m13637b, "interval_duration");
                int m13639b17 = C5286b.m13639b(m13637b, "flex_duration");
                int m13639b18 = C5286b.m13639b(m13637b, "run_attempt_count");
                int m13639b19 = C5286b.m13639b(m13637b, "backoff_policy");
                int m13639b20 = C5286b.m13639b(m13637b, "backoff_delay_duration");
                int m13639b21 = C5286b.m13639b(m13637b, "period_start_time");
                int m13639b22 = C5286b.m13639b(m13637b, "minimum_retention_duration");
                int m13639b23 = C5286b.m13639b(m13637b, "schedule_requested_at");
                int m13639b24 = C5286b.m13639b(m13637b, "run_in_foreground");
                int m13639b25 = C5286b.m13639b(m13637b, "out_of_quota_policy");
                int i2 = m13639b14;
                ArrayList arrayList = new ArrayList(m13637b.getCount());
                while (m13637b.moveToNext()) {
                    String string = m13637b.getString(m13639b9);
                    int i3 = m13639b9;
                    String string2 = m13637b.getString(m13639b11);
                    int i4 = m13639b11;
                    C7103b c7103b = new C7103b();
                    int i5 = m13639b;
                    c7103b.m2515k(C3500v.m18755e(m13637b.getInt(m13639b)));
                    if (m13637b.getInt(m13639b2) != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    c7103b.m2513m(z);
                    if (m13637b.getInt(m13639b3) != 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    c7103b.m2512n(z2);
                    if (m13637b.getInt(m13639b4) != 0) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    c7103b.m2514l(z3);
                    if (m13637b.getInt(m13639b5) != 0) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    c7103b.m2511o(z4);
                    int i6 = m13639b2;
                    int i7 = m13639b3;
                    c7103b.m2510p(m13637b.getLong(m13639b6));
                    c7103b.m2509q(m13637b.getLong(m13639b7));
                    c7103b.m2516j(C3500v.m18758b(m13637b.getBlob(m13639b8)));
                    C3482p c3482p = new C3482p(string, string2);
                    c3482p.f15922b = C3500v.m18753g(m13637b.getInt(m13639b10));
                    c3482p.f15924d = m13637b.getString(m13639b12);
                    c3482p.f15925e = C0380b.m26661g(m13637b.getBlob(m13639b13));
                    int i8 = i2;
                    c3482p.f15926f = C0380b.m26661g(m13637b.getBlob(i8));
                    i2 = i8;
                    int i9 = m13639b15;
                    c3482p.f15927g = m13637b.getLong(i9);
                    int i10 = m13639b12;
                    int i11 = m13639b16;
                    c3482p.f15928h = m13637b.getLong(i11);
                    int i12 = m13639b4;
                    int i13 = m13639b17;
                    c3482p.f15929i = m13637b.getLong(i13);
                    int i14 = m13639b18;
                    c3482p.f15931k = m13637b.getInt(i14);
                    int i15 = m13639b19;
                    c3482p.f15932l = C3500v.m18756d(m13637b.getInt(i15));
                    m13639b17 = i13;
                    int i16 = m13639b20;
                    c3482p.f15933m = m13637b.getLong(i16);
                    int i17 = m13639b21;
                    c3482p.f15934n = m13637b.getLong(i17);
                    m13639b21 = i17;
                    int i18 = m13639b22;
                    c3482p.f15935o = m13637b.getLong(i18);
                    int i19 = m13639b23;
                    c3482p.f15936p = m13637b.getLong(i19);
                    int i20 = m13639b24;
                    if (m13637b.getInt(i20) != 0) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    c3482p.f15937q = z5;
                    int i21 = m13639b25;
                    c3482p.f15938r = C3500v.m18754f(m13637b.getInt(i21));
                    c3482p.f15930j = c7103b;
                    arrayList.add(c3482p);
                    m13639b25 = i21;
                    m13639b2 = i6;
                    m13639b12 = i10;
                    m13639b15 = i9;
                    m13639b16 = i11;
                    m13639b18 = i14;
                    m13639b23 = i19;
                    m13639b9 = i3;
                    m13639b11 = i4;
                    m13639b = i5;
                    m13639b24 = i20;
                    m13639b22 = i18;
                    m13639b3 = i7;
                    m13639b20 = i16;
                    m13639b4 = i12;
                    m13639b19 = i15;
                }
                m13637b.close();
                c4686i.m15779h();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                m13637b.close();
                c4686i.m15779h();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            c4686i = m15782e;
        }
    }

    @Override // p057f1.InterfaceC3485q
    /* renamed from: g */
    public List<C3482p> mo18778g() {
        C4686i c4686i;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        C4686i m15782e = C4686i.m15782e("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 AND schedule_requested_at<>-1", 0);
        this.f15941a.m15829b();
        Cursor m13637b = C5287c.m13637b(this.f15941a, m15782e, false, null);
        try {
            int m13639b = C5286b.m13639b(m13637b, "required_network_type");
            int m13639b2 = C5286b.m13639b(m13637b, "requires_charging");
            int m13639b3 = C5286b.m13639b(m13637b, "requires_device_idle");
            int m13639b4 = C5286b.m13639b(m13637b, "requires_battery_not_low");
            int m13639b5 = C5286b.m13639b(m13637b, "requires_storage_not_low");
            int m13639b6 = C5286b.m13639b(m13637b, "trigger_content_update_delay");
            int m13639b7 = C5286b.m13639b(m13637b, "trigger_max_content_delay");
            int m13639b8 = C5286b.m13639b(m13637b, "content_uri_triggers");
            int m13639b9 = C5286b.m13639b(m13637b, "id");
            int m13639b10 = C5286b.m13639b(m13637b, "state");
            int m13639b11 = C5286b.m13639b(m13637b, "worker_class_name");
            int m13639b12 = C5286b.m13639b(m13637b, "input_merger_class_name");
            int m13639b13 = C5286b.m13639b(m13637b, "input");
            int m13639b14 = C5286b.m13639b(m13637b, "output");
            c4686i = m15782e;
            try {
                int m13639b15 = C5286b.m13639b(m13637b, "initial_delay");
                int m13639b16 = C5286b.m13639b(m13637b, "interval_duration");
                int m13639b17 = C5286b.m13639b(m13637b, "flex_duration");
                int m13639b18 = C5286b.m13639b(m13637b, "run_attempt_count");
                int m13639b19 = C5286b.m13639b(m13637b, "backoff_policy");
                int m13639b20 = C5286b.m13639b(m13637b, "backoff_delay_duration");
                int m13639b21 = C5286b.m13639b(m13637b, "period_start_time");
                int m13639b22 = C5286b.m13639b(m13637b, "minimum_retention_duration");
                int m13639b23 = C5286b.m13639b(m13637b, "schedule_requested_at");
                int m13639b24 = C5286b.m13639b(m13637b, "run_in_foreground");
                int m13639b25 = C5286b.m13639b(m13637b, "out_of_quota_policy");
                int i = m13639b14;
                ArrayList arrayList = new ArrayList(m13637b.getCount());
                while (m13637b.moveToNext()) {
                    String string = m13637b.getString(m13639b9);
                    int i2 = m13639b9;
                    String string2 = m13637b.getString(m13639b11);
                    int i3 = m13639b11;
                    C7103b c7103b = new C7103b();
                    int i4 = m13639b;
                    c7103b.m2515k(C3500v.m18755e(m13637b.getInt(m13639b)));
                    if (m13637b.getInt(m13639b2) != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    c7103b.m2513m(z);
                    if (m13637b.getInt(m13639b3) != 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    c7103b.m2512n(z2);
                    if (m13637b.getInt(m13639b4) != 0) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    c7103b.m2514l(z3);
                    if (m13637b.getInt(m13639b5) != 0) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    c7103b.m2511o(z4);
                    int i5 = m13639b2;
                    int i6 = m13639b3;
                    c7103b.m2510p(m13637b.getLong(m13639b6));
                    c7103b.m2509q(m13637b.getLong(m13639b7));
                    c7103b.m2516j(C3500v.m18758b(m13637b.getBlob(m13639b8)));
                    C3482p c3482p = new C3482p(string, string2);
                    c3482p.f15922b = C3500v.m18753g(m13637b.getInt(m13639b10));
                    c3482p.f15924d = m13637b.getString(m13639b12);
                    c3482p.f15925e = C0380b.m26661g(m13637b.getBlob(m13639b13));
                    int i7 = i;
                    c3482p.f15926f = C0380b.m26661g(m13637b.getBlob(i7));
                    i = i7;
                    int i8 = m13639b15;
                    c3482p.f15927g = m13637b.getLong(i8);
                    int i9 = m13639b13;
                    int i10 = m13639b16;
                    c3482p.f15928h = m13637b.getLong(i10);
                    int i11 = m13639b4;
                    int i12 = m13639b17;
                    c3482p.f15929i = m13637b.getLong(i12);
                    int i13 = m13639b18;
                    c3482p.f15931k = m13637b.getInt(i13);
                    int i14 = m13639b19;
                    c3482p.f15932l = C3500v.m18756d(m13637b.getInt(i14));
                    m13639b17 = i12;
                    int i15 = m13639b20;
                    c3482p.f15933m = m13637b.getLong(i15);
                    int i16 = m13639b21;
                    c3482p.f15934n = m13637b.getLong(i16);
                    m13639b21 = i16;
                    int i17 = m13639b22;
                    c3482p.f15935o = m13637b.getLong(i17);
                    int i18 = m13639b23;
                    c3482p.f15936p = m13637b.getLong(i18);
                    int i19 = m13639b24;
                    if (m13637b.getInt(i19) != 0) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    c3482p.f15937q = z5;
                    int i20 = m13639b25;
                    c3482p.f15938r = C3500v.m18754f(m13637b.getInt(i20));
                    c3482p.f15930j = c7103b;
                    arrayList.add(c3482p);
                    m13639b25 = i20;
                    m13639b2 = i5;
                    m13639b13 = i9;
                    m13639b15 = i8;
                    m13639b16 = i10;
                    m13639b18 = i13;
                    m13639b23 = i18;
                    m13639b9 = i2;
                    m13639b11 = i3;
                    m13639b = i4;
                    m13639b24 = i19;
                    m13639b22 = i17;
                    m13639b3 = i6;
                    m13639b20 = i15;
                    m13639b4 = i11;
                    m13639b19 = i14;
                }
                m13637b.close();
                c4686i.m15779h();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                m13637b.close();
                c4686i.m15779h();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            c4686i = m15782e;
        }
    }

    @Override // p057f1.InterfaceC3485q
    /* renamed from: h */
    public void mo18777h(String str, C0380b c0380b) {
        this.f15941a.m15829b();
        InterfaceC5390f m15775a = this.f15944d.m15775a();
        byte[] m26656l = C0380b.m26656l(c0380b);
        if (m26656l == null) {
            m15775a.mo13122A0(1);
        } else {
            m15775a.mo13118k0(1, m26656l);
        }
        if (str == null) {
            m15775a.mo13122A0(2);
        } else {
            m15775a.mo13121E(2, str);
        }
        this.f15941a.m15828c();
        try {
            m15775a.mo13117I();
            this.f15941a.m15813r();
        } finally {
            this.f15941a.m15824g();
            this.f15944d.m15770f(m15775a);
        }
    }

    @Override // p057f1.InterfaceC3485q
    /* renamed from: i */
    public List<C3482p> mo18776i() {
        C4686i c4686i;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        C4686i m15782e = C4686i.m15782e("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=1", 0);
        this.f15941a.m15829b();
        Cursor m13637b = C5287c.m13637b(this.f15941a, m15782e, false, null);
        try {
            int m13639b = C5286b.m13639b(m13637b, "required_network_type");
            int m13639b2 = C5286b.m13639b(m13637b, "requires_charging");
            int m13639b3 = C5286b.m13639b(m13637b, "requires_device_idle");
            int m13639b4 = C5286b.m13639b(m13637b, "requires_battery_not_low");
            int m13639b5 = C5286b.m13639b(m13637b, "requires_storage_not_low");
            int m13639b6 = C5286b.m13639b(m13637b, "trigger_content_update_delay");
            int m13639b7 = C5286b.m13639b(m13637b, "trigger_max_content_delay");
            int m13639b8 = C5286b.m13639b(m13637b, "content_uri_triggers");
            int m13639b9 = C5286b.m13639b(m13637b, "id");
            int m13639b10 = C5286b.m13639b(m13637b, "state");
            int m13639b11 = C5286b.m13639b(m13637b, "worker_class_name");
            int m13639b12 = C5286b.m13639b(m13637b, "input_merger_class_name");
            int m13639b13 = C5286b.m13639b(m13637b, "input");
            int m13639b14 = C5286b.m13639b(m13637b, "output");
            c4686i = m15782e;
            try {
                int m13639b15 = C5286b.m13639b(m13637b, "initial_delay");
                int m13639b16 = C5286b.m13639b(m13637b, "interval_duration");
                int m13639b17 = C5286b.m13639b(m13637b, "flex_duration");
                int m13639b18 = C5286b.m13639b(m13637b, "run_attempt_count");
                int m13639b19 = C5286b.m13639b(m13637b, "backoff_policy");
                int m13639b20 = C5286b.m13639b(m13637b, "backoff_delay_duration");
                int m13639b21 = C5286b.m13639b(m13637b, "period_start_time");
                int m13639b22 = C5286b.m13639b(m13637b, "minimum_retention_duration");
                int m13639b23 = C5286b.m13639b(m13637b, "schedule_requested_at");
                int m13639b24 = C5286b.m13639b(m13637b, "run_in_foreground");
                int m13639b25 = C5286b.m13639b(m13637b, "out_of_quota_policy");
                int i = m13639b14;
                ArrayList arrayList = new ArrayList(m13637b.getCount());
                while (m13637b.moveToNext()) {
                    String string = m13637b.getString(m13639b9);
                    int i2 = m13639b9;
                    String string2 = m13637b.getString(m13639b11);
                    int i3 = m13639b11;
                    C7103b c7103b = new C7103b();
                    int i4 = m13639b;
                    c7103b.m2515k(C3500v.m18755e(m13637b.getInt(m13639b)));
                    if (m13637b.getInt(m13639b2) != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    c7103b.m2513m(z);
                    if (m13637b.getInt(m13639b3) != 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    c7103b.m2512n(z2);
                    if (m13637b.getInt(m13639b4) != 0) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    c7103b.m2514l(z3);
                    if (m13637b.getInt(m13639b5) != 0) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    c7103b.m2511o(z4);
                    int i5 = m13639b2;
                    int i6 = m13639b3;
                    c7103b.m2510p(m13637b.getLong(m13639b6));
                    c7103b.m2509q(m13637b.getLong(m13639b7));
                    c7103b.m2516j(C3500v.m18758b(m13637b.getBlob(m13639b8)));
                    C3482p c3482p = new C3482p(string, string2);
                    c3482p.f15922b = C3500v.m18753g(m13637b.getInt(m13639b10));
                    c3482p.f15924d = m13637b.getString(m13639b12);
                    c3482p.f15925e = C0380b.m26661g(m13637b.getBlob(m13639b13));
                    int i7 = i;
                    c3482p.f15926f = C0380b.m26661g(m13637b.getBlob(i7));
                    i = i7;
                    int i8 = m13639b15;
                    c3482p.f15927g = m13637b.getLong(i8);
                    int i9 = m13639b13;
                    int i10 = m13639b16;
                    c3482p.f15928h = m13637b.getLong(i10);
                    int i11 = m13639b4;
                    int i12 = m13639b17;
                    c3482p.f15929i = m13637b.getLong(i12);
                    int i13 = m13639b18;
                    c3482p.f15931k = m13637b.getInt(i13);
                    int i14 = m13639b19;
                    c3482p.f15932l = C3500v.m18756d(m13637b.getInt(i14));
                    m13639b17 = i12;
                    int i15 = m13639b20;
                    c3482p.f15933m = m13637b.getLong(i15);
                    int i16 = m13639b21;
                    c3482p.f15934n = m13637b.getLong(i16);
                    m13639b21 = i16;
                    int i17 = m13639b22;
                    c3482p.f15935o = m13637b.getLong(i17);
                    int i18 = m13639b23;
                    c3482p.f15936p = m13637b.getLong(i18);
                    int i19 = m13639b24;
                    if (m13637b.getInt(i19) != 0) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    c3482p.f15937q = z5;
                    int i20 = m13639b25;
                    c3482p.f15938r = C3500v.m18754f(m13637b.getInt(i20));
                    c3482p.f15930j = c7103b;
                    arrayList.add(c3482p);
                    m13639b25 = i20;
                    m13639b2 = i5;
                    m13639b13 = i9;
                    m13639b15 = i8;
                    m13639b16 = i10;
                    m13639b18 = i13;
                    m13639b23 = i18;
                    m13639b9 = i2;
                    m13639b11 = i3;
                    m13639b = i4;
                    m13639b24 = i19;
                    m13639b22 = i17;
                    m13639b3 = i6;
                    m13639b20 = i15;
                    m13639b4 = i11;
                    m13639b19 = i14;
                }
                m13637b.close();
                c4686i.m15779h();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                m13637b.close();
                c4686i.m15779h();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            c4686i = m15782e;
        }
    }

    @Override // p057f1.InterfaceC3485q
    /* renamed from: j */
    public boolean mo18775j() {
        boolean z = false;
        C4686i m15782e = C4686i.m15782e("SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1", 0);
        this.f15941a.m15829b();
        Cursor m13637b = C5287c.m13637b(this.f15941a, m15782e, false, null);
        try {
            if (m13637b.moveToFirst()) {
                if (m13637b.getInt(0) != 0) {
                    z = true;
                }
            }
            return z;
        } finally {
            m13637b.close();
            m15782e.m15779h();
        }
    }

    @Override // p057f1.InterfaceC3485q
    /* renamed from: k */
    public List<String> mo18774k(String str) {
        C4686i m15782e = C4686i.m15782e("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            m15782e.mo13122A0(1);
        } else {
            m15782e.mo13121E(1, str);
        }
        this.f15941a.m15829b();
        Cursor m13637b = C5287c.m13637b(this.f15941a, m15782e, false, null);
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

    @Override // p057f1.InterfaceC3485q
    /* renamed from: l */
    public EnumC7130s mo18773l(String str) {
        C4686i m15782e = C4686i.m15782e("SELECT state FROM workspec WHERE id=?", 1);
        if (str == null) {
            m15782e.mo13122A0(1);
        } else {
            m15782e.mo13121E(1, str);
        }
        this.f15941a.m15829b();
        EnumC7130s enumC7130s = null;
        Cursor m13637b = C5287c.m13637b(this.f15941a, m15782e, false, null);
        try {
            if (m13637b.moveToFirst()) {
                enumC7130s = C3500v.m18753g(m13637b.getInt(0));
            }
            return enumC7130s;
        } finally {
            m13637b.close();
            m15782e.m15779h();
        }
    }

    @Override // p057f1.InterfaceC3485q
    /* renamed from: m */
    public C3482p mo18772m(String str) {
        C4686i c4686i;
        C3482p c3482p;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        C4686i m15782e = C4686i.m15782e("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE id=?", 1);
        if (str == null) {
            m15782e.mo13122A0(1);
        } else {
            m15782e.mo13121E(1, str);
        }
        this.f15941a.m15829b();
        Cursor m13637b = C5287c.m13637b(this.f15941a, m15782e, false, null);
        try {
            int m13639b = C5286b.m13639b(m13637b, "required_network_type");
            int m13639b2 = C5286b.m13639b(m13637b, "requires_charging");
            int m13639b3 = C5286b.m13639b(m13637b, "requires_device_idle");
            int m13639b4 = C5286b.m13639b(m13637b, "requires_battery_not_low");
            int m13639b5 = C5286b.m13639b(m13637b, "requires_storage_not_low");
            int m13639b6 = C5286b.m13639b(m13637b, "trigger_content_update_delay");
            int m13639b7 = C5286b.m13639b(m13637b, "trigger_max_content_delay");
            int m13639b8 = C5286b.m13639b(m13637b, "content_uri_triggers");
            int m13639b9 = C5286b.m13639b(m13637b, "id");
            int m13639b10 = C5286b.m13639b(m13637b, "state");
            int m13639b11 = C5286b.m13639b(m13637b, "worker_class_name");
            int m13639b12 = C5286b.m13639b(m13637b, "input_merger_class_name");
            int m13639b13 = C5286b.m13639b(m13637b, "input");
            int m13639b14 = C5286b.m13639b(m13637b, "output");
            c4686i = m15782e;
            try {
                int m13639b15 = C5286b.m13639b(m13637b, "initial_delay");
                int m13639b16 = C5286b.m13639b(m13637b, "interval_duration");
                int m13639b17 = C5286b.m13639b(m13637b, "flex_duration");
                int m13639b18 = C5286b.m13639b(m13637b, "run_attempt_count");
                int m13639b19 = C5286b.m13639b(m13637b, "backoff_policy");
                int m13639b20 = C5286b.m13639b(m13637b, "backoff_delay_duration");
                int m13639b21 = C5286b.m13639b(m13637b, "period_start_time");
                int m13639b22 = C5286b.m13639b(m13637b, "minimum_retention_duration");
                int m13639b23 = C5286b.m13639b(m13637b, "schedule_requested_at");
                int m13639b24 = C5286b.m13639b(m13637b, "run_in_foreground");
                int m13639b25 = C5286b.m13639b(m13637b, "out_of_quota_policy");
                if (m13637b.moveToFirst()) {
                    String string = m13637b.getString(m13639b9);
                    String string2 = m13637b.getString(m13639b11);
                    C7103b c7103b = new C7103b();
                    c7103b.m2515k(C3500v.m18755e(m13637b.getInt(m13639b)));
                    if (m13637b.getInt(m13639b2) != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    c7103b.m2513m(z);
                    if (m13637b.getInt(m13639b3) != 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    c7103b.m2512n(z2);
                    if (m13637b.getInt(m13639b4) != 0) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    c7103b.m2514l(z3);
                    if (m13637b.getInt(m13639b5) != 0) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    c7103b.m2511o(z4);
                    c7103b.m2510p(m13637b.getLong(m13639b6));
                    c7103b.m2509q(m13637b.getLong(m13639b7));
                    c7103b.m2516j(C3500v.m18758b(m13637b.getBlob(m13639b8)));
                    C3482p c3482p2 = new C3482p(string, string2);
                    c3482p2.f15922b = C3500v.m18753g(m13637b.getInt(m13639b10));
                    c3482p2.f15924d = m13637b.getString(m13639b12);
                    c3482p2.f15925e = C0380b.m26661g(m13637b.getBlob(m13639b13));
                    c3482p2.f15926f = C0380b.m26661g(m13637b.getBlob(m13639b14));
                    c3482p2.f15927g = m13637b.getLong(m13639b15);
                    c3482p2.f15928h = m13637b.getLong(m13639b16);
                    c3482p2.f15929i = m13637b.getLong(m13639b17);
                    c3482p2.f15931k = m13637b.getInt(m13639b18);
                    c3482p2.f15932l = C3500v.m18756d(m13637b.getInt(m13639b19));
                    c3482p2.f15933m = m13637b.getLong(m13639b20);
                    c3482p2.f15934n = m13637b.getLong(m13639b21);
                    c3482p2.f15935o = m13637b.getLong(m13639b22);
                    c3482p2.f15936p = m13637b.getLong(m13639b23);
                    if (m13637b.getInt(m13639b24) != 0) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    c3482p2.f15937q = z5;
                    c3482p2.f15938r = C3500v.m18754f(m13637b.getInt(m13639b25));
                    c3482p2.f15930j = c7103b;
                    c3482p = c3482p2;
                } else {
                    c3482p = null;
                }
                m13637b.close();
                c4686i.m15779h();
                return c3482p;
            } catch (Throwable th) {
                th = th;
                m13637b.close();
                c4686i.m15779h();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            c4686i = m15782e;
        }
    }

    @Override // p057f1.InterfaceC3485q
    /* renamed from: n */
    public int mo18771n(String str) {
        this.f15941a.m15829b();
        InterfaceC5390f m15775a = this.f15947g.m15775a();
        if (str == null) {
            m15775a.mo13122A0(1);
        } else {
            m15775a.mo13121E(1, str);
        }
        this.f15941a.m15828c();
        try {
            int mo13117I = m15775a.mo13117I();
            this.f15941a.m15813r();
            return mo13117I;
        } finally {
            this.f15941a.m15824g();
            this.f15947g.m15770f(m15775a);
        }
    }

    @Override // p057f1.InterfaceC3485q
    /* renamed from: o */
    public void mo18770o(C3482p c3482p) {
        this.f15941a.m15829b();
        this.f15941a.m15828c();
        try {
            this.f15942b.m15834h(c3482p);
            this.f15941a.m15813r();
        } finally {
            this.f15941a.m15824g();
        }
    }

    @Override // p057f1.InterfaceC3485q
    /* renamed from: p */
    public List<String> mo18769p(String str) {
        C4686i m15782e = C4686i.m15782e("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)", 1);
        if (str == null) {
            m15782e.mo13122A0(1);
        } else {
            m15782e.mo13121E(1, str);
        }
        this.f15941a.m15829b();
        Cursor m13637b = C5287c.m13637b(this.f15941a, m15782e, false, null);
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

    @Override // p057f1.InterfaceC3485q
    /* renamed from: q */
    public List<C0380b> mo18768q(String str) {
        C4686i m15782e = C4686i.m15782e("SELECT output FROM workspec WHERE id IN (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)", 1);
        if (str == null) {
            m15782e.mo13122A0(1);
        } else {
            m15782e.mo13121E(1, str);
        }
        this.f15941a.m15829b();
        Cursor m13637b = C5287c.m13637b(this.f15941a, m15782e, false, null);
        try {
            ArrayList arrayList = new ArrayList(m13637b.getCount());
            while (m13637b.moveToNext()) {
                arrayList.add(C0380b.m26661g(m13637b.getBlob(0)));
            }
            return arrayList;
        } finally {
            m13637b.close();
            m15782e.m15779h();
        }
    }

    @Override // p057f1.InterfaceC3485q
    /* renamed from: r */
    public int mo18767r(String str) {
        this.f15941a.m15829b();
        InterfaceC5390f m15775a = this.f15946f.m15775a();
        if (str == null) {
            m15775a.mo13122A0(1);
        } else {
            m15775a.mo13121E(1, str);
        }
        this.f15941a.m15828c();
        try {
            int mo13117I = m15775a.mo13117I();
            this.f15941a.m15813r();
            return mo13117I;
        } finally {
            this.f15941a.m15824g();
            this.f15946f.m15770f(m15775a);
        }
    }

    @Override // p057f1.InterfaceC3485q
    /* renamed from: s */
    public void mo18766s(String str, long j) {
        this.f15941a.m15829b();
        InterfaceC5390f m15775a = this.f15945e.m15775a();
        m15775a.mo13119c0(1, j);
        if (str == null) {
            m15775a.mo13122A0(2);
        } else {
            m15775a.mo13121E(2, str);
        }
        this.f15941a.m15828c();
        try {
            m15775a.mo13117I();
            this.f15941a.m15813r();
        } finally {
            this.f15941a.m15824g();
            this.f15945e.m15770f(m15775a);
        }
    }

    @Override // p057f1.InterfaceC3485q
    /* renamed from: t */
    public List<C3482p> mo18765t(int i) {
        C4686i c4686i;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        C4686i m15782e = C4686i.m15782e("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 ORDER BY period_start_time LIMIT ?", 1);
        m15782e.mo13119c0(1, i);
        this.f15941a.m15829b();
        Cursor m13637b = C5287c.m13637b(this.f15941a, m15782e, false, null);
        try {
            int m13639b = C5286b.m13639b(m13637b, "required_network_type");
            int m13639b2 = C5286b.m13639b(m13637b, "requires_charging");
            int m13639b3 = C5286b.m13639b(m13637b, "requires_device_idle");
            int m13639b4 = C5286b.m13639b(m13637b, "requires_battery_not_low");
            int m13639b5 = C5286b.m13639b(m13637b, "requires_storage_not_low");
            int m13639b6 = C5286b.m13639b(m13637b, "trigger_content_update_delay");
            int m13639b7 = C5286b.m13639b(m13637b, "trigger_max_content_delay");
            int m13639b8 = C5286b.m13639b(m13637b, "content_uri_triggers");
            int m13639b9 = C5286b.m13639b(m13637b, "id");
            int m13639b10 = C5286b.m13639b(m13637b, "state");
            int m13639b11 = C5286b.m13639b(m13637b, "worker_class_name");
            int m13639b12 = C5286b.m13639b(m13637b, "input_merger_class_name");
            int m13639b13 = C5286b.m13639b(m13637b, "input");
            int m13639b14 = C5286b.m13639b(m13637b, "output");
            c4686i = m15782e;
            try {
                int m13639b15 = C5286b.m13639b(m13637b, "initial_delay");
                int m13639b16 = C5286b.m13639b(m13637b, "interval_duration");
                int m13639b17 = C5286b.m13639b(m13637b, "flex_duration");
                int m13639b18 = C5286b.m13639b(m13637b, "run_attempt_count");
                int m13639b19 = C5286b.m13639b(m13637b, "backoff_policy");
                int m13639b20 = C5286b.m13639b(m13637b, "backoff_delay_duration");
                int m13639b21 = C5286b.m13639b(m13637b, "period_start_time");
                int m13639b22 = C5286b.m13639b(m13637b, "minimum_retention_duration");
                int m13639b23 = C5286b.m13639b(m13637b, "schedule_requested_at");
                int m13639b24 = C5286b.m13639b(m13637b, "run_in_foreground");
                int m13639b25 = C5286b.m13639b(m13637b, "out_of_quota_policy");
                int i2 = m13639b14;
                ArrayList arrayList = new ArrayList(m13637b.getCount());
                while (m13637b.moveToNext()) {
                    String string = m13637b.getString(m13639b9);
                    int i3 = m13639b9;
                    String string2 = m13637b.getString(m13639b11);
                    int i4 = m13639b11;
                    C7103b c7103b = new C7103b();
                    int i5 = m13639b;
                    c7103b.m2515k(C3500v.m18755e(m13637b.getInt(m13639b)));
                    if (m13637b.getInt(m13639b2) != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    c7103b.m2513m(z);
                    if (m13637b.getInt(m13639b3) != 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    c7103b.m2512n(z2);
                    if (m13637b.getInt(m13639b4) != 0) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    c7103b.m2514l(z3);
                    if (m13637b.getInt(m13639b5) != 0) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    c7103b.m2511o(z4);
                    int i6 = m13639b2;
                    int i7 = m13639b3;
                    c7103b.m2510p(m13637b.getLong(m13639b6));
                    c7103b.m2509q(m13637b.getLong(m13639b7));
                    c7103b.m2516j(C3500v.m18758b(m13637b.getBlob(m13639b8)));
                    C3482p c3482p = new C3482p(string, string2);
                    c3482p.f15922b = C3500v.m18753g(m13637b.getInt(m13639b10));
                    c3482p.f15924d = m13637b.getString(m13639b12);
                    c3482p.f15925e = C0380b.m26661g(m13637b.getBlob(m13639b13));
                    int i8 = i2;
                    c3482p.f15926f = C0380b.m26661g(m13637b.getBlob(i8));
                    i2 = i8;
                    int i9 = m13639b15;
                    c3482p.f15927g = m13637b.getLong(i9);
                    int i10 = m13639b12;
                    int i11 = m13639b16;
                    c3482p.f15928h = m13637b.getLong(i11);
                    int i12 = m13639b4;
                    int i13 = m13639b17;
                    c3482p.f15929i = m13637b.getLong(i13);
                    int i14 = m13639b18;
                    c3482p.f15931k = m13637b.getInt(i14);
                    int i15 = m13639b19;
                    c3482p.f15932l = C3500v.m18756d(m13637b.getInt(i15));
                    m13639b17 = i13;
                    int i16 = m13639b20;
                    c3482p.f15933m = m13637b.getLong(i16);
                    int i17 = m13639b21;
                    c3482p.f15934n = m13637b.getLong(i17);
                    m13639b21 = i17;
                    int i18 = m13639b22;
                    c3482p.f15935o = m13637b.getLong(i18);
                    int i19 = m13639b23;
                    c3482p.f15936p = m13637b.getLong(i19);
                    int i20 = m13639b24;
                    if (m13637b.getInt(i20) != 0) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    c3482p.f15937q = z5;
                    int i21 = m13639b25;
                    c3482p.f15938r = C3500v.m18754f(m13637b.getInt(i21));
                    c3482p.f15930j = c7103b;
                    arrayList.add(c3482p);
                    m13639b25 = i21;
                    m13639b2 = i6;
                    m13639b12 = i10;
                    m13639b15 = i9;
                    m13639b16 = i11;
                    m13639b18 = i14;
                    m13639b23 = i19;
                    m13639b9 = i3;
                    m13639b11 = i4;
                    m13639b = i5;
                    m13639b24 = i20;
                    m13639b22 = i18;
                    m13639b3 = i7;
                    m13639b20 = i16;
                    m13639b4 = i12;
                    m13639b19 = i15;
                }
                m13637b.close();
                c4686i.m15779h();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                m13637b.close();
                c4686i.m15779h();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            c4686i = m15782e;
        }
    }

    @Override // p057f1.InterfaceC3485q
    /* renamed from: u */
    public int mo18764u() {
        this.f15941a.m15829b();
        InterfaceC5390f m15775a = this.f15949i.m15775a();
        this.f15941a.m15828c();
        try {
            int mo13117I = m15775a.mo13117I();
            this.f15941a.m15813r();
            return mo13117I;
        } finally {
            this.f15941a.m15824g();
            this.f15949i.m15770f(m15775a);
        }
    }

    public C3486r(AbstractC4676e abstractC4676e) {
        this.f15941a = abstractC4676e;
        this.f15942b = new C3487a(abstractC4676e);
        this.f15943c = new C3488b(abstractC4676e);
        this.f15944d = new C3489c(abstractC4676e);
        this.f15945e = new C3490d(abstractC4676e);
        this.f15946f = new C3491e(abstractC4676e);
        this.f15947g = new C3492f(abstractC4676e);
        this.f15948h = new C3493g(abstractC4676e);
        this.f15949i = new C3494h(abstractC4676e);
        this.f15950j = new C3495i(abstractC4676e);
    }
}
