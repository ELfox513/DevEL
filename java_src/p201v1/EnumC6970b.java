package p201v1;

import p015b2.InterfaceC0450r;
/* renamed from: v1.b */
/* loaded from: classes.dex */
public enum EnumC6970b implements InterfaceC0450r {
    RUNTIME("runtime"),
    BUILD("build"),
    SYSTEM("system"),
    EMBEDDED("embedded");
    

    /* renamed from: a */
    public final String f35871a;

    @Override // p015b2.InterfaceC0450r
    public String toHuman() {
        return this.f35871a;
    }

    EnumC6970b(String str) {
        this.f35871a = str;
    }
}
