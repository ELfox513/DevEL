package p085i2;

import com.google.auto.value.AutoValue;
import p058f2.AbstractC3504c;
import p058f2.C3503b;
import p058f2.InterfaceC3506e;
import p085i2.C4092b;
@AutoValue
/* renamed from: i2.l */
/* loaded from: classes.dex */
public abstract class AbstractC4111l {

    @AutoValue.Builder
    /* renamed from: i2.l$a */
    /* loaded from: classes.dex */
    public static abstract class AbstractC4112a {
        /* renamed from: a */
        public abstract AbstractC4111l mo17363a();

        /* renamed from: b */
        public abstract AbstractC4112a mo17362b(C3503b c3503b);

        /* renamed from: c */
        public abstract AbstractC4112a mo17361c(AbstractC3504c<?> abstractC3504c);

        /* renamed from: d */
        public abstract AbstractC4112a mo17360d(InterfaceC3506e<?, byte[]> interfaceC3506e);

        /* renamed from: e */
        public abstract AbstractC4112a mo17359e(AbstractC4113m abstractC4113m);

        /* renamed from: f */
        public abstract AbstractC4112a mo17358f(String str);
    }

    /* renamed from: a */
    public static AbstractC4112a m17370a() {
        return new C4092b.C4094b();
    }

    /* renamed from: b */
    public abstract C3503b mo17369b();

    /* renamed from: c */
    public abstract AbstractC3504c<?> mo17368c();

    /* renamed from: d */
    public byte[] m17367d() {
        return mo17366e().apply(mo17368c().mo18746b());
    }

    /* renamed from: e */
    public abstract InterfaceC3506e<?, byte[]> mo17366e();

    /* renamed from: f */
    public abstract AbstractC4113m mo17365f();

    /* renamed from: g */
    public abstract String mo17364g();
}
