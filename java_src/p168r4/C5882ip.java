package p168r4;

import android.os.Environment;
import android.util.Base64;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import p016b3.C0543w1;
import p235z2.C7601t;
/* renamed from: r4.ip */
/* loaded from: classes2.dex */
public final class C5882ip {

    /* renamed from: a */
    public final C6029mp f25217a;

    /* renamed from: b */
    public final C6438xq f25218b;

    /* renamed from: c */
    public final boolean f25219c;

    public C5882ip() {
        this.f25218b = C6475yq.m4606I();
        this.f25219c = false;
        this.f25217a = new C6029mp();
    }

    /* renamed from: a */
    public static C5882ip m10583a() {
        return new C5882ip();
    }

    /* renamed from: b */
    public final synchronized void m10582b(InterfaceC5845hp interfaceC5845hp) {
        if (this.f25219c) {
            try {
                interfaceC5845hp.mo6727a(this.f25218b);
            } catch (NullPointerException e) {
                C7601t.m935h().m9056k(e, "AdMobClearcutLogger.modify");
            }
        }
    }

    /* renamed from: c */
    public final synchronized void m10581c(int i) {
        if (!this.f25219c) {
            return;
        }
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31093p3)).booleanValue()) {
            m10579e(i);
        } else {
            m10580d(i);
        }
    }

    /* renamed from: d */
    public final synchronized void m10580d(int i) {
        String str;
        C6438xq c6438xq = this.f25218b;
        c6438xq.m5180A();
        List<String> m7275d = C6225rz.m7275d();
        ArrayList arrayList = new ArrayList();
        for (String str2 : m7275d) {
            for (String str3 : str2.split(",")) {
                try {
                    arrayList.add(Long.valueOf(str3));
                } catch (NumberFormatException unused) {
                    C0543w1.m26251k("Experiment ID is not a number");
                }
            }
        }
        c6438xq.m5170z(arrayList);
        C5955kp c5955kp = new C5955kp(this.f25217a, this.f25218b.m9614o().mo6490t(), null);
        int i2 = i - 1;
        c5955kp.m9963b(i2);
        c5955kp.m9964a();
        String valueOf = String.valueOf(Integer.toString(i2, 10));
        if (valueOf.length() != 0) {
            str = "Logging Event with event code : ".concat(valueOf);
        } else {
            str = new String("Logging Event with event code : ");
        }
        C0543w1.m26251k(str);
    }

    /* renamed from: e */
    public final synchronized void m10579e(int i) {
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        if (externalStorageDirectory == null) {
            return;
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(externalStorageDirectory, "clearcut_events.txt"), true);
            try {
                try {
                    fileOutputStream.write(m10578f(i).getBytes());
                    try {
                        fileOutputStream.close();
                    } catch (IOException unused) {
                        C0543w1.m26251k("Could not close Clearcut output stream.");
                    }
                } catch (IOException unused2) {
                    C0543w1.m26251k("Could not write Clearcut to file.");
                    try {
                        fileOutputStream.close();
                    } catch (IOException unused3) {
                        C0543w1.m26251k("Could not close Clearcut output stream.");
                    }
                }
            } catch (Throwable th) {
                try {
                    fileOutputStream.close();
                } catch (IOException unused4) {
                    C0543w1.m26251k("Could not close Clearcut output stream.");
                }
                throw th;
            }
        } catch (FileNotFoundException unused5) {
            C0543w1.m26251k("Could not find file for Clearcut");
        }
    }

    /* renamed from: f */
    public final synchronized String m10578f(int i) {
        return String.format("id=%s,timestamp=%s,event=%s,data=%s\n", this.f25218b.m5172v(), Long.valueOf(C7601t.m932k().mo24762b()), Integer.valueOf(i - 1), Base64.encodeToString(this.f25218b.m9614o().mo6490t(), 3));
    }

    public C5882ip(C6029mp c6029mp) {
        this.f25218b = C6475yq.m4606I();
        this.f25217a = c6029mp;
        this.f25219c = ((Boolean) C5592av.m12935c().m8098c(C6225rz.f31085o3)).booleanValue();
    }
}
