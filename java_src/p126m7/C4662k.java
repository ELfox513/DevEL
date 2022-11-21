package p126m7;

import com.google.firebase.remoteconfig.internal.C1436b;
/* renamed from: m7.k */
/* loaded from: classes2.dex */
public class C4662k {

    /* renamed from: a */
    public final long f18722a;

    /* renamed from: b */
    public final long f18723b;

    /* renamed from: m7.k$b */
    /* loaded from: classes2.dex */
    public static class C4664b {

        /* renamed from: a */
        public long f18724a = 60;

        /* renamed from: b */
        public long f18725b = C1436b.f7890j;

        /* renamed from: c */
        public C4662k m15852c() {
            return new C4662k(this);
        }

        /* renamed from: d */
        public C4664b m15851d(long j) {
            if (j >= 0) {
                this.f18724a = j;
                return this;
            }
            throw new IllegalArgumentException(String.format("Fetch connection timeout has to be a non-negative number. %d is an invalid argument", Long.valueOf(j)));
        }

        /* renamed from: e */
        public C4664b m15850e(long j) {
            if (j >= 0) {
                this.f18725b = j;
                return this;
            }
            throw new IllegalArgumentException("Minimum interval between fetches has to be a non-negative number. " + j + " is an invalid argument");
        }
    }

    public C4662k(C4664b c4664b) {
        this.f18722a = c4664b.f18724a;
        this.f18723b = c4664b.f18725b;
    }
}
