package p168r4;
/* renamed from: r4.mr3 */
/* loaded from: classes2.dex */
public abstract class mr3 {
    /* renamed from: a */
    public abstract void mo9277a(String str);

    /* renamed from: b */
    public static mr3 m9276b(Class cls) {
        if (System.getProperty("java.vm.name").equalsIgnoreCase("Dalvik")) {
            return new hr3(cls.getSimpleName());
        }
        return new jr3(cls.getSimpleName());
    }
}
