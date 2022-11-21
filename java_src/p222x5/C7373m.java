package p222x5;

import java.io.File;
import java.io.IOException;
import p028c6.InterfaceC1076h;
import p196u5.C6930f;
/* renamed from: x5.m */
/* loaded from: classes2.dex */
public class C7373m {

    /* renamed from: a */
    public final String f36932a;

    /* renamed from: b */
    public final InterfaceC1076h f36933b;

    /* renamed from: b */
    public final File m1668b() {
        return new File(this.f36933b.mo24645b(), this.f36932a);
    }

    /* renamed from: c */
    public boolean m1667c() {
        return m1668b().exists();
    }

    /* renamed from: d */
    public boolean m1666d() {
        return m1668b().delete();
    }

    public C7373m(String str, InterfaceC1076h interfaceC1076h) {
        this.f36932a = str;
        this.f36933b = interfaceC1076h;
    }

    /* renamed from: a */
    public boolean m1669a() {
        try {
            return m1668b().createNewFile();
        } catch (IOException e) {
            C6930f m3016f = C6930f.m3016f();
            m3016f.m3017e("Error creating marker: " + this.f36932a, e);
            return false;
        }
    }
}
