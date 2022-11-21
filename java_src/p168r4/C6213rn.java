package p168r4;

import android.util.Base64OutputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
/* renamed from: r4.rn */
/* loaded from: classes2.dex */
public final class C6213rn {

    /* renamed from: a */
    public ByteArrayOutputStream f30631a = new ByteArrayOutputStream(4096);

    /* renamed from: b */
    public Base64OutputStream f30632b = new Base64OutputStream(this.f30631a, 10);

    /* JADX WARN: Type inference failed for: r1v1, types: [java.io.ByteArrayOutputStream, android.util.Base64OutputStream] */
    public final String toString() {
        try {
            this.f30632b.close();
        } catch (IOException e) {
            cm0.m12439d("HashManager: Unable to convert to Base64.", e);
        }
        try {
            this.f30631a.close();
            return this.f30631a.toString();
        } catch (IOException e2) {
            cm0.m12439d("HashManager: Unable to convert to Base64.", e2);
            return "";
        } finally {
            this.f30631a = null;
            this.f30632b = null;
        }
    }
}
