package p076h2;

import com.google.auto.value.AutoValue;
import java.util.List;
import p076h2.C3964g;
@AutoValue
/* renamed from: h2.m */
/* loaded from: classes.dex */
public abstract class AbstractC3977m {

    @AutoValue.Builder
    /* renamed from: h2.m$a */
    /* loaded from: classes.dex */
    public static abstract class AbstractC3978a {
        /* renamed from: a */
        public abstract AbstractC3977m mo17623a();

        /* renamed from: b */
        public abstract AbstractC3978a mo17622b(AbstractC3972k abstractC3972k);

        /* renamed from: c */
        public abstract AbstractC3978a mo17621c(List<AbstractC3975l> list);

        /* renamed from: d */
        public abstract AbstractC3978a mo17620d(Integer num);

        /* renamed from: e */
        public abstract AbstractC3978a mo17619e(String str);

        /* renamed from: f */
        public abstract AbstractC3978a mo17618f(EnumC3984p enumC3984p);

        /* renamed from: g */
        public abstract AbstractC3978a mo17617g(long j);

        /* renamed from: h */
        public abstract AbstractC3978a mo17616h(long j);

        /* renamed from: i */
        public AbstractC3978a m17615i(int i) {
            return mo17620d(Integer.valueOf(i));
        }

        /* renamed from: j */
        public AbstractC3978a m17614j(String str) {
            return mo17619e(str);
        }
    }

    /* renamed from: a */
    public static AbstractC3978a m17631a() {
        return new C3964g.C3966b();
    }

    /* renamed from: b */
    public abstract AbstractC3972k mo17630b();

    /* renamed from: c */
    public abstract List<AbstractC3975l> mo17629c();

    /* renamed from: d */
    public abstract Integer mo17628d();

    /* renamed from: e */
    public abstract String mo17627e();

    /* renamed from: f */
    public abstract EnumC3984p mo17626f();

    /* renamed from: g */
    public abstract long mo17625g();

    /* renamed from: h */
    public abstract long mo17624h();
}
