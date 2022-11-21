package p148p2;

import com.badlogic.gdx.net.HttpStatus;
import com.google.auto.value.AutoValue;
import p148p2.C5311a;
@AutoValue
/* renamed from: p2.d */
/* loaded from: classes.dex */
public abstract class AbstractC5323d {

    /* renamed from: a */
    public static final AbstractC5323d f19930a = m13462a().mo13451f(10485760).mo13453d(HttpStatus.SC_OK).mo13455b(10000).mo13454c(604800000).mo13452e(81920).mo13456a();

    @AutoValue.Builder
    /* renamed from: p2.d$a */
    /* loaded from: classes.dex */
    public static abstract class AbstractC5324a {
        /* renamed from: a */
        public abstract AbstractC5323d mo13456a();

        /* renamed from: b */
        public abstract AbstractC5324a mo13455b(int i);

        /* renamed from: c */
        public abstract AbstractC5324a mo13454c(long j);

        /* renamed from: d */
        public abstract AbstractC5324a mo13453d(int i);

        /* renamed from: e */
        public abstract AbstractC5324a mo13452e(int i);

        /* renamed from: f */
        public abstract AbstractC5324a mo13451f(long j);
    }

    /* renamed from: a */
    public static AbstractC5324a m13462a() {
        return new C5311a.C5313b();
    }

    /* renamed from: b */
    public abstract int mo13461b();

    /* renamed from: c */
    public abstract long mo13460c();

    /* renamed from: d */
    public abstract int mo13459d();

    /* renamed from: e */
    public abstract int mo13458e();

    /* renamed from: f */
    public abstract long mo13457f();
}
