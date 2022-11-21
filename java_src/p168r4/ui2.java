package p168r4;

import android.os.Build;
import java.util.HashMap;
import java.util.concurrent.Callable;
import p016b3.C0532t1;
/* renamed from: r4.ui2 */
/* loaded from: classes2.dex */
public final /* synthetic */ class ui2 implements Callable {

    /* renamed from: a */
    public static final Callable f32289a = new ui2();

    @Override // java.util.concurrent.Callable
    public final Object call() {
        String[] split;
        HashMap hashMap = new HashMap();
        String str = (String) C5592av.m12935c().m8098c(C6225rz.f30798F);
        if (str != null && !str.isEmpty()) {
            if (Build.VERSION.SDK_INT >= ((Integer) C5592av.m12935c().m8098c(C6225rz.f30806G)).intValue()) {
                for (String str2 : str.split(",", -1)) {
                    hashMap.put(str2, C0532t1.m26266a(str2));
                }
            }
        }
        return new wi2(hashMap);
    }
}
