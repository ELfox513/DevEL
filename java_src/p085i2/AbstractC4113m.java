package p085i2;

import android.util.Base64;
import com.google.auto.value.AutoValue;
import p058f2.EnumC3505d;
import p085i2.C4095c;
@AutoValue
/* renamed from: i2.m */
/* loaded from: classes.dex */
public abstract class AbstractC4113m {

    @AutoValue.Builder
    /* renamed from: i2.m$a */
    /* loaded from: classes.dex */
    public static abstract class AbstractC4114a {
        /* renamed from: a */
        public abstract AbstractC4113m mo17352a();

        /* renamed from: b */
        public abstract AbstractC4114a mo17351b(String str);

        /* renamed from: c */
        public abstract AbstractC4114a mo17350c(byte[] bArr);

        /* renamed from: d */
        public abstract AbstractC4114a mo17349d(EnumC3505d enumC3505d);
    }

    /* renamed from: a */
    public static AbstractC4114a m17357a() {
        return new C4095c.C4097b().mo17349d(EnumC3505d.DEFAULT);
    }

    /* renamed from: b */
    public abstract String mo17356b();

    /* renamed from: c */
    public abstract byte[] mo17355c();

    /* renamed from: d */
    public abstract EnumC3505d mo17354d();

    public final String toString() {
        String encodeToString;
        Object[] objArr = new Object[3];
        objArr[0] = mo17356b();
        objArr[1] = mo17354d();
        if (mo17355c() == null) {
            encodeToString = "";
        } else {
            encodeToString = Base64.encodeToString(mo17355c(), 2);
        }
        objArr[2] = encodeToString;
        return String.format("TransportContext(%s, %s, %s)", objArr);
    }

    /* renamed from: e */
    public AbstractC4113m m17353e(EnumC3505d enumC3505d) {
        return m17357a().mo17351b(mo17356b()).mo17349d(enumC3505d).mo17350c(mo17355c()).mo17352a();
    }
}
