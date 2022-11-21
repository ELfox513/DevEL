package p209w0;

import android.annotation.SuppressLint;
/* renamed from: w0.m */
/* loaded from: classes.dex */
public interface InterfaceC7119m {
    @SuppressLint({"SyntheticAccessor"})

    /* renamed from: a */
    public static final AbstractC7121b.C7124c f36132a = new AbstractC7121b.C7124c();
    @SuppressLint({"SyntheticAccessor"})

    /* renamed from: b */
    public static final AbstractC7121b.C7123b f36133b = new AbstractC7121b.C7123b();

    /* renamed from: w0.m$b */
    /* loaded from: classes.dex */
    public static abstract class AbstractC7121b {

        /* renamed from: w0.m$b$b */
        /* loaded from: classes.dex */
        public static final class C7123b extends AbstractC7121b {
            public String toString() {
                return "IN_PROGRESS";
            }

            public C7123b() {
            }
        }

        /* renamed from: w0.m$b$c */
        /* loaded from: classes.dex */
        public static final class C7124c extends AbstractC7121b {
            public String toString() {
                return "SUCCESS";
            }

            public C7124c() {
            }
        }

        /* renamed from: w0.m$b$a */
        /* loaded from: classes.dex */
        public static final class C7122a extends AbstractC7121b {

            /* renamed from: a */
            public final Throwable f36134a;

            /* renamed from: a */
            public Throwable m2480a() {
                return this.f36134a;
            }

            public String toString() {
                return String.format("FAILURE (%s)", this.f36134a.getMessage());
            }

            public C7122a(Throwable th) {
                this.f36134a = th;
            }
        }
    }
}
