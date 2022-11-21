package p209w0;

import android.net.Uri;
import java.util.HashSet;
import java.util.Set;
/* renamed from: w0.c */
/* loaded from: classes.dex */
public final class C7105c {

    /* renamed from: a */
    public final Set<C7106a> f36110a = new HashSet();

    /* renamed from: w0.c$a */
    /* loaded from: classes.dex */
    public static final class C7106a {

        /* renamed from: a */
        public final Uri f36111a;

        /* renamed from: b */
        public final boolean f36112b;

        /* renamed from: a */
        public Uri m2503a() {
            return this.f36111a;
        }

        /* renamed from: b */
        public boolean m2502b() {
            return this.f36112b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || C7106a.class != obj.getClass()) {
                return false;
            }
            C7106a c7106a = (C7106a) obj;
            return this.f36112b == c7106a.f36112b && this.f36111a.equals(c7106a.f36111a);
        }

        public int hashCode() {
            return (this.f36111a.hashCode() * 31) + (this.f36112b ? 1 : 0);
        }

        public C7106a(Uri uri, boolean z) {
            this.f36111a = uri;
            this.f36112b = z;
        }
    }

    /* renamed from: b */
    public Set<C7106a> m2505b() {
        return this.f36110a;
    }

    /* renamed from: c */
    public int m2504c() {
        return this.f36110a.size();
    }

    public int hashCode() {
        return this.f36110a.hashCode();
    }

    /* renamed from: a */
    public void m2506a(Uri uri, boolean z) {
        this.f36110a.add(new C7106a(uri, z));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C7105c.class == obj.getClass()) {
            return this.f36110a.equals(((C7105c) obj).f36110a);
        }
        return false;
    }
}
