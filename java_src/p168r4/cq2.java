package p168r4;

import android.os.ParcelFileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import p026c4.C1052m;
/* renamed from: r4.cq2 */
/* loaded from: classes2.dex */
public final class cq2 {
    /* renamed from: a */
    public static ParcelFileDescriptor m12375a(final InputStream inputStream) {
        ParcelFileDescriptor[] createPipe = ParcelFileDescriptor.createPipe();
        ParcelFileDescriptor parcelFileDescriptor = createPipe[0];
        final ParcelFileDescriptor parcelFileDescriptor2 = createPipe[1];
        qm0.f30190a.execute(new Runnable(inputStream, parcelFileDescriptor2) { // from class: r4.bq2

            /* renamed from: a */
            public final InputStream f21158a;

            /* renamed from: b */
            public final ParcelFileDescriptor f21159b;

            {
                this.f21158a = inputStream;
                this.f21159b = parcelFileDescriptor2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                InputStream inputStream2 = this.f21158a;
                try {
                    ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(this.f21159b);
                    try {
                        C1052m.m24744b(inputStream2, autoCloseOutputStream);
                        autoCloseOutputStream.close();
                        if (inputStream2 != null) {
                            inputStream2.close();
                        }
                    } catch (Throwable th) {
                        try {
                            autoCloseOutputStream.close();
                        } catch (Throwable th2) {
                            rk3.m7480a(th, th2);
                        }
                        throw th;
                    }
                } catch (IOException unused) {
                }
            }
        });
        return parcelFileDescriptor;
    }
}
