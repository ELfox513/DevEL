package p068g3;

import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import p184t2.C6728w;
/* renamed from: g3.d */
/* loaded from: classes.dex */
public final class C3582d {

    /* renamed from: a */
    public final boolean f16172a;

    /* renamed from: b */
    public final int f16173b;

    /* renamed from: c */
    public final boolean f16174c;

    /* renamed from: d */
    public final int f16175d;

    /* renamed from: e */
    public final C6728w f16176e;

    /* renamed from: f */
    public final boolean f16177f;

    /* renamed from: g3.d$a */
    /* loaded from: classes.dex */
    public static final class C3583a {

        /* renamed from: d */
        public C6728w f16181d;

        /* renamed from: a */
        public boolean f16178a = false;

        /* renamed from: b */
        public int f16179b = 0;

        /* renamed from: c */
        public boolean f16180c = false;

        /* renamed from: e */
        public int f16182e = 1;

        /* renamed from: f */
        public boolean f16183f = false;

        @RecentlyNonNull
        /* renamed from: a */
        public C3582d m18581a() {
            return new C3582d(this, null);
        }

        @RecentlyNonNull
        /* renamed from: b */
        public C3583a m18580b(int i) {
            this.f16182e = i;
            return this;
        }

        @RecentlyNonNull
        /* renamed from: c */
        public C3583a m18579c(int i) {
            this.f16179b = i;
            return this;
        }

        @RecentlyNonNull
        /* renamed from: d */
        public C3583a m18578d(boolean z) {
            this.f16183f = z;
            return this;
        }

        @RecentlyNonNull
        /* renamed from: e */
        public C3583a m18577e(boolean z) {
            this.f16180c = z;
            return this;
        }

        @RecentlyNonNull
        /* renamed from: f */
        public C3583a m18576f(boolean z) {
            this.f16178a = z;
            return this;
        }

        @RecentlyNonNull
        /* renamed from: g */
        public C3583a m18575g(@RecentlyNonNull C6728w c6728w) {
            this.f16181d = c6728w;
            return this;
        }
    }

    public /* synthetic */ C3582d(C3583a c3583a, C3585f c3585f) {
        this.f16172a = c3583a.f16178a;
        this.f16173b = c3583a.f16179b;
        this.f16174c = c3583a.f16180c;
        this.f16175d = c3583a.f16182e;
        this.f16176e = c3583a.f16181d;
        this.f16177f = c3583a.f16183f;
    }

    /* renamed from: a */
    public int m18587a() {
        return this.f16175d;
    }

    /* renamed from: b */
    public int m18586b() {
        return this.f16173b;
    }

    @RecentlyNullable
    /* renamed from: c */
    public C6728w m18585c() {
        return this.f16176e;
    }

    /* renamed from: d */
    public boolean m18584d() {
        return this.f16174c;
    }

    /* renamed from: e */
    public boolean m18583e() {
        return this.f16172a;
    }

    /* renamed from: f */
    public final boolean m18582f() {
        return this.f16177f;
    }
}
