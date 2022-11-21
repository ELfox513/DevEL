package p188t6;

import com.google.auto.value.AutoValue;
import p188t6.C6798a;
import p188t6.C6802c;
@AutoValue
/* renamed from: t6.d */
/* loaded from: classes2.dex */
public abstract class AbstractC6804d {

    /* renamed from: a */
    public static AbstractC6804d f35510a = m3406a().mo3386a();

    @AutoValue.Builder
    /* renamed from: t6.d$a */
    /* loaded from: classes2.dex */
    public static abstract class AbstractC6805a {
        /* renamed from: a */
        public abstract AbstractC6804d mo3386a();

        /* renamed from: b */
        public abstract AbstractC6805a mo3385b(String str);

        /* renamed from: c */
        public abstract AbstractC6805a mo3384c(long j);

        /* renamed from: d */
        public abstract AbstractC6805a mo3383d(String str);

        /* renamed from: e */
        public abstract AbstractC6805a mo3382e(String str);

        /* renamed from: f */
        public abstract AbstractC6805a mo3381f(String str);

        /* renamed from: g */
        public abstract AbstractC6805a mo3380g(C6802c.EnumC6803a enumC6803a);

        /* renamed from: h */
        public abstract AbstractC6805a mo3379h(long j);
    }

    /* renamed from: b */
    public abstract String mo3405b();

    /* renamed from: c */
    public abstract long mo3404c();

    /* renamed from: d */
    public abstract String mo3403d();

    /* renamed from: e */
    public abstract String mo3402e();

    /* renamed from: f */
    public abstract String mo3401f();

    /* renamed from: g */
    public abstract C6802c.EnumC6803a mo3400g();

    /* renamed from: h */
    public abstract long mo3399h();

    /* renamed from: i */
    public boolean m3398i() {
        return mo3400g() == C6802c.EnumC6803a.REGISTER_ERROR;
    }

    /* renamed from: k */
    public boolean m3396k() {
        return mo3400g() == C6802c.EnumC6803a.REGISTERED;
    }

    /* renamed from: l */
    public boolean m3395l() {
        return mo3400g() == C6802c.EnumC6803a.UNREGISTERED;
    }

    /* renamed from: m */
    public boolean m3394m() {
        return mo3400g() == C6802c.EnumC6803a.ATTEMPT_MIGRATION;
    }

    /* renamed from: n */
    public abstract AbstractC6805a mo3393n();

    /* renamed from: p */
    public AbstractC6804d m3391p() {
        return mo3393n().mo3385b(null).mo3386a();
    }

    /* renamed from: r */
    public AbstractC6804d m3389r() {
        return mo3393n().mo3380g(C6802c.EnumC6803a.NOT_GENERATED).mo3386a();
    }

    /* renamed from: a */
    public static AbstractC6805a m3406a() {
        return new C6798a.C6800b().mo3379h(0L).mo3380g(C6802c.EnumC6803a.ATTEMPT_MIGRATION).mo3384c(0L);
    }

    /* renamed from: j */
    public boolean m3397j() {
        if (mo3400g() != C6802c.EnumC6803a.NOT_GENERATED && mo3400g() != C6802c.EnumC6803a.ATTEMPT_MIGRATION) {
            return false;
        }
        return true;
    }

    /* renamed from: o */
    public AbstractC6804d m3392o(String str, long j, long j2) {
        return mo3393n().mo3385b(str).mo3384c(j).mo3379h(j2).mo3386a();
    }

    /* renamed from: q */
    public AbstractC6804d m3390q(String str) {
        return mo3393n().mo3382e(str).mo3380g(C6802c.EnumC6803a.REGISTER_ERROR).mo3386a();
    }

    /* renamed from: s */
    public AbstractC6804d m3388s(String str, String str2, long j, String str3, long j2) {
        return mo3393n().mo3383d(str).mo3380g(C6802c.EnumC6803a.REGISTERED).mo3385b(str3).mo3381f(str2).mo3384c(j2).mo3379h(j).mo3386a();
    }

    /* renamed from: t */
    public AbstractC6804d m3387t(String str) {
        return mo3393n().mo3383d(str).mo3380g(C6802c.EnumC6803a.UNREGISTERED).mo3386a();
    }
}
