package androidx.work.impl;

import androidx.room.C0351c;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import p057f1.C3461c;
import p057f1.C3465f;
import p057f1.C3469i;
import p057f1.C3474l;
import p057f1.C3478o;
import p057f1.C3486r;
import p057f1.C3498u;
import p057f1.InterfaceC3460b;
import p057f1.InterfaceC3464e;
import p057f1.InterfaceC3468h;
import p057f1.InterfaceC3473k;
import p057f1.InterfaceC3477n;
import p057f1.InterfaceC3485q;
import p057f1.InterfaceC3497t;
import p128n0.AbstractC4676e;
import p128n0.C4672a;
import p128n0.C4683h;
import p146p0.C5287c;
import p146p0.C5290f;
import p155q0.InterfaceC5382b;
import p155q0.InterfaceC5383c;
/* loaded from: classes.dex */
public final class WorkDatabase_Impl extends WorkDatabase {

    /* renamed from: m */
    public volatile InterfaceC3485q f1370m;

    /* renamed from: n */
    public volatile InterfaceC3460b f1371n;

    /* renamed from: o */
    public volatile InterfaceC3497t f1372o;

    /* renamed from: p */
    public volatile InterfaceC3468h f1373p;

    /* renamed from: q */
    public volatile InterfaceC3473k f1374q;

    /* renamed from: r */
    public volatile InterfaceC3477n f1375r;

    /* renamed from: s */
    public volatile InterfaceC3464e f1376s;

    /* renamed from: androidx.work.impl.WorkDatabase_Impl$a */
    /* loaded from: classes.dex */
    public class C0384a extends C4683h.AbstractC4684a {
        public C0384a(int i) {
            super(i);
        }

        @Override // p128n0.C4683h.AbstractC4684a
        /* renamed from: e */
        public void mo15785e(InterfaceC5382b interfaceC5382b) {
        }

        @Override // p128n0.C4683h.AbstractC4684a
        /* renamed from: f */
        public void mo15784f(InterfaceC5382b interfaceC5382b) {
            C5287c.m13638a(interfaceC5382b);
        }

        @Override // p128n0.C4683h.AbstractC4684a
        /* renamed from: g */
        public C4683h.C4685b mo15783g(InterfaceC5382b interfaceC5382b) {
            HashMap hashMap = new HashMap(2);
            hashMap.put("work_spec_id", new C5290f.C5291a("work_spec_id", "TEXT", true, 1, null, 1));
            hashMap.put("prerequisite_id", new C5290f.C5291a("prerequisite_id", "TEXT", true, 2, null, 1));
            HashSet hashSet = new HashSet(2);
            hashSet.add(new C5290f.C5292b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
            hashSet.add(new C5290f.C5292b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("prerequisite_id"), Arrays.asList("id")));
            HashSet hashSet2 = new HashSet(2);
            hashSet2.add(new C5290f.C5294d("index_Dependency_work_spec_id", false, Arrays.asList("work_spec_id")));
            hashSet2.add(new C5290f.C5294d("index_Dependency_prerequisite_id", false, Arrays.asList("prerequisite_id")));
            C5290f c5290f = new C5290f("Dependency", hashMap, hashSet, hashSet2);
            C5290f m13632a = C5290f.m13632a(interfaceC5382b, "Dependency");
            if (!c5290f.equals(m13632a)) {
                return new C4683h.C4685b(false, "Dependency(androidx.work.impl.model.Dependency).\n Expected:\n" + c5290f + "\n Found:\n" + m13632a);
            }
            HashMap hashMap2 = new HashMap(25);
            hashMap2.put("id", new C5290f.C5291a("id", "TEXT", true, 1, null, 1));
            hashMap2.put("state", new C5290f.C5291a("state", "INTEGER", true, 0, null, 1));
            hashMap2.put("worker_class_name", new C5290f.C5291a("worker_class_name", "TEXT", true, 0, null, 1));
            hashMap2.put("input_merger_class_name", new C5290f.C5291a("input_merger_class_name", "TEXT", false, 0, null, 1));
            hashMap2.put("input", new C5290f.C5291a("input", "BLOB", true, 0, null, 1));
            hashMap2.put("output", new C5290f.C5291a("output", "BLOB", true, 0, null, 1));
            hashMap2.put("initial_delay", new C5290f.C5291a("initial_delay", "INTEGER", true, 0, null, 1));
            hashMap2.put("interval_duration", new C5290f.C5291a("interval_duration", "INTEGER", true, 0, null, 1));
            hashMap2.put("flex_duration", new C5290f.C5291a("flex_duration", "INTEGER", true, 0, null, 1));
            hashMap2.put("run_attempt_count", new C5290f.C5291a("run_attempt_count", "INTEGER", true, 0, null, 1));
            hashMap2.put("backoff_policy", new C5290f.C5291a("backoff_policy", "INTEGER", true, 0, null, 1));
            hashMap2.put("backoff_delay_duration", new C5290f.C5291a("backoff_delay_duration", "INTEGER", true, 0, null, 1));
            hashMap2.put("period_start_time", new C5290f.C5291a("period_start_time", "INTEGER", true, 0, null, 1));
            hashMap2.put("minimum_retention_duration", new C5290f.C5291a("minimum_retention_duration", "INTEGER", true, 0, null, 1));
            hashMap2.put("schedule_requested_at", new C5290f.C5291a("schedule_requested_at", "INTEGER", true, 0, null, 1));
            hashMap2.put("run_in_foreground", new C5290f.C5291a("run_in_foreground", "INTEGER", true, 0, null, 1));
            hashMap2.put("out_of_quota_policy", new C5290f.C5291a("out_of_quota_policy", "INTEGER", true, 0, null, 1));
            hashMap2.put("required_network_type", new C5290f.C5291a("required_network_type", "INTEGER", false, 0, null, 1));
            hashMap2.put("requires_charging", new C5290f.C5291a("requires_charging", "INTEGER", true, 0, null, 1));
            hashMap2.put("requires_device_idle", new C5290f.C5291a("requires_device_idle", "INTEGER", true, 0, null, 1));
            hashMap2.put("requires_battery_not_low", new C5290f.C5291a("requires_battery_not_low", "INTEGER", true, 0, null, 1));
            hashMap2.put("requires_storage_not_low", new C5290f.C5291a("requires_storage_not_low", "INTEGER", true, 0, null, 1));
            hashMap2.put("trigger_content_update_delay", new C5290f.C5291a("trigger_content_update_delay", "INTEGER", true, 0, null, 1));
            hashMap2.put("trigger_max_content_delay", new C5290f.C5291a("trigger_max_content_delay", "INTEGER", true, 0, null, 1));
            hashMap2.put("content_uri_triggers", new C5290f.C5291a("content_uri_triggers", "BLOB", false, 0, null, 1));
            HashSet hashSet3 = new HashSet(0);
            HashSet hashSet4 = new HashSet(2);
            hashSet4.add(new C5290f.C5294d("index_WorkSpec_schedule_requested_at", false, Arrays.asList("schedule_requested_at")));
            hashSet4.add(new C5290f.C5294d("index_WorkSpec_period_start_time", false, Arrays.asList("period_start_time")));
            C5290f c5290f2 = new C5290f("WorkSpec", hashMap2, hashSet3, hashSet4);
            C5290f m13632a2 = C5290f.m13632a(interfaceC5382b, "WorkSpec");
            if (!c5290f2.equals(m13632a2)) {
                return new C4683h.C4685b(false, "WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n" + c5290f2 + "\n Found:\n" + m13632a2);
            }
            HashMap hashMap3 = new HashMap(2);
            hashMap3.put("tag", new C5290f.C5291a("tag", "TEXT", true, 1, null, 1));
            hashMap3.put("work_spec_id", new C5290f.C5291a("work_spec_id", "TEXT", true, 2, null, 1));
            HashSet hashSet5 = new HashSet(1);
            hashSet5.add(new C5290f.C5292b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
            HashSet hashSet6 = new HashSet(1);
            hashSet6.add(new C5290f.C5294d("index_WorkTag_work_spec_id", false, Arrays.asList("work_spec_id")));
            C5290f c5290f3 = new C5290f("WorkTag", hashMap3, hashSet5, hashSet6);
            C5290f m13632a3 = C5290f.m13632a(interfaceC5382b, "WorkTag");
            if (!c5290f3.equals(m13632a3)) {
                return new C4683h.C4685b(false, "WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n" + c5290f3 + "\n Found:\n" + m13632a3);
            }
            HashMap hashMap4 = new HashMap(2);
            hashMap4.put("work_spec_id", new C5290f.C5291a("work_spec_id", "TEXT", true, 1, null, 1));
            hashMap4.put("system_id", new C5290f.C5291a("system_id", "INTEGER", true, 0, null, 1));
            HashSet hashSet7 = new HashSet(1);
            hashSet7.add(new C5290f.C5292b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
            C5290f c5290f4 = new C5290f("SystemIdInfo", hashMap4, hashSet7, new HashSet(0));
            C5290f m13632a4 = C5290f.m13632a(interfaceC5382b, "SystemIdInfo");
            if (!c5290f4.equals(m13632a4)) {
                return new C4683h.C4685b(false, "SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n" + c5290f4 + "\n Found:\n" + m13632a4);
            }
            HashMap hashMap5 = new HashMap(2);
            hashMap5.put("name", new C5290f.C5291a("name", "TEXT", true, 1, null, 1));
            hashMap5.put("work_spec_id", new C5290f.C5291a("work_spec_id", "TEXT", true, 2, null, 1));
            HashSet hashSet8 = new HashSet(1);
            hashSet8.add(new C5290f.C5292b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
            HashSet hashSet9 = new HashSet(1);
            hashSet9.add(new C5290f.C5294d("index_WorkName_work_spec_id", false, Arrays.asList("work_spec_id")));
            C5290f c5290f5 = new C5290f("WorkName", hashMap5, hashSet8, hashSet9);
            C5290f m13632a5 = C5290f.m13632a(interfaceC5382b, "WorkName");
            if (!c5290f5.equals(m13632a5)) {
                return new C4683h.C4685b(false, "WorkName(androidx.work.impl.model.WorkName).\n Expected:\n" + c5290f5 + "\n Found:\n" + m13632a5);
            }
            HashMap hashMap6 = new HashMap(2);
            hashMap6.put("work_spec_id", new C5290f.C5291a("work_spec_id", "TEXT", true, 1, null, 1));
            hashMap6.put("progress", new C5290f.C5291a("progress", "BLOB", true, 0, null, 1));
            HashSet hashSet10 = new HashSet(1);
            hashSet10.add(new C5290f.C5292b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
            C5290f c5290f6 = new C5290f("WorkProgress", hashMap6, hashSet10, new HashSet(0));
            C5290f m13632a6 = C5290f.m13632a(interfaceC5382b, "WorkProgress");
            if (!c5290f6.equals(m13632a6)) {
                return new C4683h.C4685b(false, "WorkProgress(androidx.work.impl.model.WorkProgress).\n Expected:\n" + c5290f6 + "\n Found:\n" + m13632a6);
            }
            HashMap hashMap7 = new HashMap(2);
            hashMap7.put("key", new C5290f.C5291a("key", "TEXT", true, 1, null, 1));
            hashMap7.put("long_value", new C5290f.C5291a("long_value", "INTEGER", false, 0, null, 1));
            C5290f c5290f7 = new C5290f("Preference", hashMap7, new HashSet(0), new HashSet(0));
            C5290f m13632a7 = C5290f.m13632a(interfaceC5382b, "Preference");
            if (!c5290f7.equals(m13632a7)) {
                return new C4683h.C4685b(false, "Preference(androidx.work.impl.model.Preference).\n Expected:\n" + c5290f7 + "\n Found:\n" + m13632a7);
            }
            return new C4683h.C4685b(true, null);
        }

        @Override // p128n0.C4683h.AbstractC4684a
        /* renamed from: a */
        public void mo15789a(InterfaceC5382b interfaceC5382b) {
            interfaceC5382b.mo13140B("CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            interfaceC5382b.mo13140B("CREATE INDEX IF NOT EXISTS `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)");
            interfaceC5382b.mo13140B("CREATE INDEX IF NOT EXISTS `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)");
            interfaceC5382b.mo13140B("CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `period_start_time` INTEGER NOT NULL, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `required_network_type` INTEGER, `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB, PRIMARY KEY(`id`))");
            interfaceC5382b.mo13140B("CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)");
            interfaceC5382b.mo13140B("CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `WorkSpec` (`period_start_time`)");
            interfaceC5382b.mo13140B("CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            interfaceC5382b.mo13140B("CREATE INDEX IF NOT EXISTS `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)");
            interfaceC5382b.mo13140B("CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            interfaceC5382b.mo13140B("CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            interfaceC5382b.mo13140B("CREATE INDEX IF NOT EXISTS `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)");
            interfaceC5382b.mo13140B("CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            interfaceC5382b.mo13140B("CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
            interfaceC5382b.mo13140B("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            interfaceC5382b.mo13140B("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'c103703e120ae8cc73c9248622f3cd1e')");
        }

        @Override // p128n0.C4683h.AbstractC4684a
        /* renamed from: b */
        public void mo15788b(InterfaceC5382b interfaceC5382b) {
            interfaceC5382b.mo13140B("DROP TABLE IF EXISTS `Dependency`");
            interfaceC5382b.mo13140B("DROP TABLE IF EXISTS `WorkSpec`");
            interfaceC5382b.mo13140B("DROP TABLE IF EXISTS `WorkTag`");
            interfaceC5382b.mo13140B("DROP TABLE IF EXISTS `SystemIdInfo`");
            interfaceC5382b.mo13140B("DROP TABLE IF EXISTS `WorkName`");
            interfaceC5382b.mo13140B("DROP TABLE IF EXISTS `WorkProgress`");
            interfaceC5382b.mo13140B("DROP TABLE IF EXISTS `Preference`");
            if (WorkDatabase_Impl.this.f18765h != null) {
                int size = WorkDatabase_Impl.this.f18765h.size();
                for (int i = 0; i < size; i++) {
                    ((AbstractC4676e.AbstractC4678b) WorkDatabase_Impl.this.f18765h.get(i)).m15804b(interfaceC5382b);
                }
            }
        }

        @Override // p128n0.C4683h.AbstractC4684a
        /* renamed from: c */
        public void mo15787c(InterfaceC5382b interfaceC5382b) {
            if (WorkDatabase_Impl.this.f18765h != null) {
                int size = WorkDatabase_Impl.this.f18765h.size();
                for (int i = 0; i < size; i++) {
                    ((AbstractC4676e.AbstractC4678b) WorkDatabase_Impl.this.f18765h.get(i)).m15805a(interfaceC5382b);
                }
            }
        }

        @Override // p128n0.C4683h.AbstractC4684a
        /* renamed from: d */
        public void mo15786d(InterfaceC5382b interfaceC5382b) {
            WorkDatabase_Impl.this.f18758a = interfaceC5382b;
            interfaceC5382b.mo13140B("PRAGMA foreign_keys = ON");
            WorkDatabase_Impl.this.m15818m(interfaceC5382b);
            if (WorkDatabase_Impl.this.f18765h != null) {
                int size = WorkDatabase_Impl.this.f18765h.size();
                for (int i = 0; i < size; i++) {
                    ((AbstractC4676e.AbstractC4678b) WorkDatabase_Impl.this.f18765h.get(i)).mo15803c(interfaceC5382b);
                }
            }
        }
    }

    @Override // androidx.work.impl.WorkDatabase
    /* renamed from: A */
    public InterfaceC3477n mo26645A() {
        InterfaceC3477n interfaceC3477n;
        if (this.f1375r != null) {
            return this.f1375r;
        }
        synchronized (this) {
            if (this.f1375r == null) {
                this.f1375r = new C3478o(this);
            }
            interfaceC3477n = this.f1375r;
        }
        return interfaceC3477n;
    }

    @Override // androidx.work.impl.WorkDatabase
    /* renamed from: B */
    public InterfaceC3485q mo26644B() {
        InterfaceC3485q interfaceC3485q;
        if (this.f1370m != null) {
            return this.f1370m;
        }
        synchronized (this) {
            if (this.f1370m == null) {
                this.f1370m = new C3486r(this);
            }
            interfaceC3485q = this.f1370m;
        }
        return interfaceC3485q;
    }

    @Override // androidx.work.impl.WorkDatabase
    /* renamed from: C */
    public InterfaceC3497t mo26643C() {
        InterfaceC3497t interfaceC3497t;
        if (this.f1372o != null) {
            return this.f1372o;
        }
        synchronized (this) {
            if (this.f1372o == null) {
                this.f1372o = new C3498u(this);
            }
            interfaceC3497t = this.f1372o;
        }
        return interfaceC3497t;
    }

    @Override // p128n0.AbstractC4676e
    /* renamed from: e */
    public C0351c mo15826e() {
        return new C0351c(this, new HashMap(0), new HashMap(0), "Dependency", "WorkSpec", "WorkTag", "SystemIdInfo", "WorkName", "WorkProgress", "Preference");
    }

    @Override // p128n0.AbstractC4676e
    /* renamed from: f */
    public InterfaceC5383c mo15825f(C4672a c4672a) {
        return c4672a.f18741a.mo13123a(InterfaceC5383c.C5385b.m13355a(c4672a.f18742b).m13352c(c4672a.f18743c).m13353b(new C4683h(c4672a, new C0384a(12), "c103703e120ae8cc73c9248622f3cd1e", "49f946663a8deb7054212b8adda248c6")).m13354a());
    }

    @Override // androidx.work.impl.WorkDatabase
    /* renamed from: t */
    public InterfaceC3460b mo26631t() {
        InterfaceC3460b interfaceC3460b;
        if (this.f1371n != null) {
            return this.f1371n;
        }
        synchronized (this) {
            if (this.f1371n == null) {
                this.f1371n = new C3461c(this);
            }
            interfaceC3460b = this.f1371n;
        }
        return interfaceC3460b;
    }

    @Override // androidx.work.impl.WorkDatabase
    /* renamed from: x */
    public InterfaceC3464e mo26630x() {
        InterfaceC3464e interfaceC3464e;
        if (this.f1376s != null) {
            return this.f1376s;
        }
        synchronized (this) {
            if (this.f1376s == null) {
                this.f1376s = new C3465f(this);
            }
            interfaceC3464e = this.f1376s;
        }
        return interfaceC3464e;
    }

    @Override // androidx.work.impl.WorkDatabase
    /* renamed from: y */
    public InterfaceC3468h mo26629y() {
        InterfaceC3468h interfaceC3468h;
        if (this.f1373p != null) {
            return this.f1373p;
        }
        synchronized (this) {
            if (this.f1373p == null) {
                this.f1373p = new C3469i(this);
            }
            interfaceC3468h = this.f1373p;
        }
        return interfaceC3468h;
    }

    @Override // androidx.work.impl.WorkDatabase
    /* renamed from: z */
    public InterfaceC3473k mo26628z() {
        InterfaceC3473k interfaceC3473k;
        if (this.f1374q != null) {
            return this.f1374q;
        }
        synchronized (this) {
            if (this.f1374q == null) {
                this.f1374q = new C3474l(this);
            }
            interfaceC3473k = this.f1374q;
        }
        return interfaceC3473k;
    }
}
