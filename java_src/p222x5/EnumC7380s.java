package p222x5;
/* renamed from: x5.s */
/* loaded from: classes2.dex */
public enum EnumC7380s {
    DEVELOPER(1),
    USER_SIDELOAD(2),
    TEST_DISTRIBUTION(3),
    APP_STORE(4);
    

    /* renamed from: a */
    public final int f36958a;

    /* renamed from: c */
    public static EnumC7380s m1626c(String str) {
        return str != null ? APP_STORE : DEVELOPER;
    }

    /* renamed from: d */
    public int m1625d() {
        return this.f36958a;
    }

    @Override // java.lang.Enum
    public String toString() {
        return Integer.toString(this.f36958a);
    }

    EnumC7380s(int i) {
        this.f36958a = i;
    }
}
