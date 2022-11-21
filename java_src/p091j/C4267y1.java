package p091j;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import java.lang.ref.WeakReference;
/* renamed from: j.y1 */
/* loaded from: classes.dex */
public class C4267y1 extends Resources {

    /* renamed from: b */
    public static boolean f18108b = false;

    /* renamed from: a */
    public final WeakReference<Context> f18109a;

    /* renamed from: a */
    public static boolean m16889a() {
        return f18108b;
    }

    /* renamed from: b */
    public static boolean m16888b() {
        return m16889a() && Build.VERSION.SDK_INT <= 20;
    }

    /* renamed from: c */
    public final Drawable m16887c(int i) {
        return super.getDrawable(i);
    }

    @Override // android.content.res.Resources
    public Drawable getDrawable(int i) {
        Context context = this.f18109a.get();
        if (context != null) {
            return C4191i1.m17163h().m17151t(context, this, i);
        }
        return super.getDrawable(i);
    }

    public C4267y1(Context context, Resources resources) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        this.f18109a = new WeakReference<>(context);
    }
}
