package androidx.work.impl;

import android.content.Context;
import android.os.Build;
import p066g1.C3551d;
import p066g1.C3553f;
import p137o0.AbstractC5062a;
import p155q0.InterfaceC5382b;
/* renamed from: androidx.work.impl.a */
/* loaded from: classes.dex */
public class C0385a {

    /* renamed from: a */
    public static AbstractC5062a f1378a = new C0386a(1, 2);

    /* renamed from: b */
    public static AbstractC5062a f1379b = new C0387b(3, 4);

    /* renamed from: c */
    public static AbstractC5062a f1380c = new C0388c(4, 5);

    /* renamed from: d */
    public static AbstractC5062a f1381d = new C0389d(6, 7);

    /* renamed from: e */
    public static AbstractC5062a f1382e = new C0390e(7, 8);

    /* renamed from: f */
    public static AbstractC5062a f1383f = new C0391f(8, 9);

    /* renamed from: g */
    public static AbstractC5062a f1384g = new C0392g(11, 12);

    /* renamed from: androidx.work.impl.a$a */
    /* loaded from: classes.dex */
    public class C0386a extends AbstractC5062a {
        public C0386a(int i, int i2) {
            super(i, i2);
        }

        @Override // p137o0.AbstractC5062a
        /* renamed from: a */
        public void mo14736a(InterfaceC5382b interfaceC5382b) {
            interfaceC5382b.mo13140B("CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            interfaceC5382b.mo13140B("INSERT INTO SystemIdInfo(work_spec_id, system_id) SELECT work_spec_id, alarm_id AS system_id FROM alarmInfo");
            interfaceC5382b.mo13140B("DROP TABLE IF EXISTS alarmInfo");
            interfaceC5382b.mo13140B("INSERT OR IGNORE INTO worktag(tag, work_spec_id) SELECT worker_class_name AS tag, id AS work_spec_id FROM workspec");
        }
    }

    /* renamed from: androidx.work.impl.a$b */
    /* loaded from: classes.dex */
    public class C0387b extends AbstractC5062a {
        public C0387b(int i, int i2) {
            super(i, i2);
        }

        @Override // p137o0.AbstractC5062a
        /* renamed from: a */
        public void mo14736a(InterfaceC5382b interfaceC5382b) {
            if (Build.VERSION.SDK_INT >= 23) {
                interfaceC5382b.mo13140B("UPDATE workspec SET schedule_requested_at=0 WHERE state NOT IN (2, 3, 5) AND schedule_requested_at=-1 AND interval_duration<>0");
            }
        }
    }

    /* renamed from: androidx.work.impl.a$c */
    /* loaded from: classes.dex */
    public class C0388c extends AbstractC5062a {
        public C0388c(int i, int i2) {
            super(i, i2);
        }

        @Override // p137o0.AbstractC5062a
        /* renamed from: a */
        public void mo14736a(InterfaceC5382b interfaceC5382b) {
            interfaceC5382b.mo13140B("ALTER TABLE workspec ADD COLUMN `trigger_content_update_delay` INTEGER NOT NULL DEFAULT -1");
            interfaceC5382b.mo13140B("ALTER TABLE workspec ADD COLUMN `trigger_max_content_delay` INTEGER NOT NULL DEFAULT -1");
        }
    }

    /* renamed from: androidx.work.impl.a$d */
    /* loaded from: classes.dex */
    public class C0389d extends AbstractC5062a {
        public C0389d(int i, int i2) {
            super(i, i2);
        }

        @Override // p137o0.AbstractC5062a
        /* renamed from: a */
        public void mo14736a(InterfaceC5382b interfaceC5382b) {
            interfaceC5382b.mo13140B("CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        }
    }

    /* renamed from: androidx.work.impl.a$e */
    /* loaded from: classes.dex */
    public class C0390e extends AbstractC5062a {
        public C0390e(int i, int i2) {
            super(i, i2);
        }

        @Override // p137o0.AbstractC5062a
        /* renamed from: a */
        public void mo14736a(InterfaceC5382b interfaceC5382b) {
            interfaceC5382b.mo13140B("CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `workspec` (`period_start_time`)");
        }
    }

    /* renamed from: androidx.work.impl.a$f */
    /* loaded from: classes.dex */
    public class C0391f extends AbstractC5062a {
        public C0391f(int i, int i2) {
            super(i, i2);
        }

        @Override // p137o0.AbstractC5062a
        /* renamed from: a */
        public void mo14736a(InterfaceC5382b interfaceC5382b) {
            interfaceC5382b.mo13140B("ALTER TABLE workspec ADD COLUMN `run_in_foreground` INTEGER NOT NULL DEFAULT 0");
        }
    }

    /* renamed from: androidx.work.impl.a$g */
    /* loaded from: classes.dex */
    public class C0392g extends AbstractC5062a {
        public C0392g(int i, int i2) {
            super(i, i2);
        }

        @Override // p137o0.AbstractC5062a
        /* renamed from: a */
        public void mo14736a(InterfaceC5382b interfaceC5382b) {
            interfaceC5382b.mo13140B("ALTER TABLE workspec ADD COLUMN `out_of_quota_policy` INTEGER NOT NULL DEFAULT 0");
        }
    }

    /* renamed from: androidx.work.impl.a$h */
    /* loaded from: classes.dex */
    public static class C0393h extends AbstractC5062a {

        /* renamed from: c */
        public final Context f1385c;

        @Override // p137o0.AbstractC5062a
        /* renamed from: a */
        public void mo14736a(InterfaceC5382b interfaceC5382b) {
            if (this.f19283b >= 10) {
                interfaceC5382b.mo13133g0("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"reschedule_needed", 1});
            } else {
                this.f1385c.getSharedPreferences("androidx.work.util.preferences", 0).edit().putBoolean("reschedule_needed", true).apply();
            }
        }

        public C0393h(Context context, int i, int i2) {
            super(i, i2);
            this.f1385c = context;
        }
    }

    /* renamed from: androidx.work.impl.a$i */
    /* loaded from: classes.dex */
    public static class C0394i extends AbstractC5062a {

        /* renamed from: c */
        public final Context f1386c;

        public C0394i(Context context) {
            super(9, 10);
            this.f1386c = context;
        }

        @Override // p137o0.AbstractC5062a
        /* renamed from: a */
        public void mo14736a(InterfaceC5382b interfaceC5382b) {
            interfaceC5382b.mo13140B("CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
            C3553f.m18621b(this.f1386c, interfaceC5382b);
            C3551d.m18628a(this.f1386c, interfaceC5382b);
        }
    }
}
