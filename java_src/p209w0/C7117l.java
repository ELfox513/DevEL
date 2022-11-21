package p209w0;

import android.os.Build;
import androidx.work.ListenableWorker;
import androidx.work.OverwritingInputMerger;
import p209w0.AbstractC7132u;
/* renamed from: w0.l */
/* loaded from: classes.dex */
public final class C7117l extends AbstractC7132u {

    /* renamed from: w0.l$a */
    /* loaded from: classes.dex */
    public static final class C7118a extends AbstractC7132u.AbstractC7133a<C7118a, C7117l> {
        @Override // p209w0.AbstractC7132u.AbstractC7133a
        /* renamed from: i */
        public C7118a mo2467d() {
            return this;
        }

        @Override // p209w0.AbstractC7132u.AbstractC7133a
        /* renamed from: h */
        public C7117l mo2468c() {
            if (this.f36149a && Build.VERSION.SDK_INT >= 23 && this.f36151c.f15930j.m2518h()) {
                throw new IllegalArgumentException("Cannot set backoff criteria on an idle mode job");
            }
            return new C7117l(this);
        }

        public C7118a(Class<? extends ListenableWorker> cls) {
            super(cls);
            this.f36151c.f15924d = OverwritingInputMerger.class.getName();
        }
    }

    public C7117l(C7118a c7118a) {
        super(c7118a.f36150b, c7118a.f36151c, c7118a.f36152d);
    }

    /* renamed from: d */
    public static C7117l m2483d(Class<? extends ListenableWorker> cls) {
        return new C7118a(cls).m2469b();
    }
}
