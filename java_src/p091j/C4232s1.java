package p091j;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import java.lang.ref.WeakReference;
/* renamed from: j.s1 */
/* loaded from: classes.dex */
public class C4232s1 extends C4207l1 {

    /* renamed from: b */
    public final WeakReference<Context> f18015b;

    public C4232s1(Context context, Resources resources) {
        super(resources);
        this.f18015b = new WeakReference<>(context);
    }

    @Override // p091j.C4207l1, android.content.res.Resources
    public Drawable getDrawable(int i) {
        Drawable drawable = super.getDrawable(i);
        Context context = this.f18015b.get();
        if (drawable != null && context != null) {
            C4191i1.m17163h().m17147x(context, i, drawable);
        }
        return drawable;
    }
}
