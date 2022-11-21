package p168r4;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Looper;
import java.util.concurrent.Executor;
import p016b3.C0539v0;
import p016b3.C0543w1;
import p026c4.InterfaceC1045f;
/* renamed from: r4.pl1 */
/* loaded from: classes2.dex */
public final class pl1 {

    /* renamed from: a */
    public final C0539v0 f29512a;

    /* renamed from: b */
    public final InterfaceC1045f f29513b;

    /* renamed from: c */
    public final Executor f29514c;

    public pl1(C0539v0 c0539v0, InterfaceC1045f interfaceC1045f, Executor executor) {
        this.f29512a = c0539v0;
        this.f29513b = interfaceC1045f;
        this.f29514c = executor;
    }

    /* renamed from: b */
    public static /* synthetic */ Bitmap m8280b(pl1 pl1Var, byte[] bArr, double d, boolean z) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inDensity = (int) (d * 160.0d);
        if (!z) {
            options.inPreferredConfig = Bitmap.Config.RGB_565;
        }
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31134u4)).booleanValue()) {
            options.inJustDecodeBounds = true;
            pl1Var.m8279c(bArr, options);
            options.inJustDecodeBounds = false;
            int i = options.outWidth * options.outHeight;
            if (i > 0) {
                options.inSampleSize = 1 << ((33 - Integer.numberOfLeadingZeros((i - 1) / ((Integer) C5592av.m12935c().m8098c(C6225rz.f31142v4)).intValue())) / 2);
            }
        }
        return pl1Var.m8279c(bArr, options);
    }

    /* renamed from: a */
    public final h83<Bitmap> m8281a(String str, double d, boolean z) {
        return y73.m4805j(this.f29512a.m26254a(str), new nl1(this, d, z), this.f29514c);
    }

    /* renamed from: c */
    public final Bitmap m8279c(byte[] bArr, BitmapFactory.Options options) {
        int allocationByteCount;
        long mo24762b = this.f29513b.mo24762b();
        boolean z = false;
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        long mo24762b2 = this.f29513b.mo24762b();
        if (Build.VERSION.SDK_INT >= 19 && decodeByteArray != null) {
            int width = decodeByteArray.getWidth();
            int height = decodeByteArray.getHeight();
            allocationByteCount = decodeByteArray.getAllocationByteCount();
            long j = mo24762b2 - mo24762b;
            if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
                z = true;
            }
            StringBuilder sb = new StringBuilder(108);
            sb.append("Decoded image w: ");
            sb.append(width);
            sb.append(" h:");
            sb.append(height);
            sb.append(" bytes: ");
            sb.append(allocationByteCount);
            sb.append(" time: ");
            sb.append(j);
            sb.append(" on ui thread: ");
            sb.append(z);
            C0543w1.m26251k(sb.toString());
        }
        return decodeByteArray;
    }
}
