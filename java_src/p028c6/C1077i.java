package p028c6;

import android.content.Context;
import java.io.File;
import p196u5.C6930f;
/* renamed from: c6.i */
/* loaded from: classes2.dex */
public class C1077i implements InterfaceC1076h {

    /* renamed from: a */
    public final Context f2979a;

    @Override // p028c6.InterfaceC1076h
    /* renamed from: a */
    public String mo24646a() {
        return new File(this.f2979a.getFilesDir(), ".com.google.firebase.crashlytics").getPath();
    }

    @Override // p028c6.InterfaceC1076h
    /* renamed from: b */
    public File mo24645b() {
        return m24644c(new File(this.f2979a.getFilesDir(), ".com.google.firebase.crashlytics"));
    }

    /* renamed from: c */
    public File m24644c(File file) {
        if (file != null) {
            if (!file.exists() && !file.mkdirs()) {
                C6930f.m3016f().m3011k("Couldn't create file");
                return null;
            }
            return file;
        }
        C6930f.m3016f().m3011k("Null File");
        return null;
    }

    public C1077i(Context context) {
        this.f2979a = context;
    }
}
