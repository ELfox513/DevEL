package p091j;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Build;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
/* renamed from: j.q1 */
/* loaded from: classes.dex */
public class C4226q1 extends ContextWrapper {

    /* renamed from: c */
    public static final Object f18002c = new Object();

    /* renamed from: d */
    public static ArrayList<WeakReference<C4226q1>> f18003d;

    /* renamed from: a */
    public final Resources f18004a;

    /* renamed from: b */
    public final Resources.Theme f18005b;

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return this.f18004a.getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return this.f18004a;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.f18005b;
        return theme == null ? super.getTheme() : theme;
    }

    /* renamed from: a */
    public static boolean m17019a(Context context) {
        if ((context instanceof C4226q1) || (context.getResources() instanceof C4232s1) || (context.getResources() instanceof C4267y1)) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 21 && !C4267y1.m16888b()) {
            return false;
        }
        return true;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        Resources.Theme theme = this.f18005b;
        if (theme == null) {
            super.setTheme(i);
        } else {
            theme.applyStyle(i, true);
        }
    }

    public C4226q1(Context context) {
        super(context);
        if (C4267y1.m16888b()) {
            C4267y1 c4267y1 = new C4267y1(this, context.getResources());
            this.f18004a = c4267y1;
            Resources.Theme newTheme = c4267y1.newTheme();
            this.f18005b = newTheme;
            newTheme.setTo(context.getTheme());
            return;
        }
        this.f18004a = new C4232s1(this, context.getResources());
        this.f18005b = null;
    }

    /* renamed from: b */
    public static Context m17018b(Context context) {
        C4226q1 c4226q1;
        if (m17019a(context)) {
            synchronized (f18002c) {
                ArrayList<WeakReference<C4226q1>> arrayList = f18003d;
                if (arrayList == null) {
                    f18003d = new ArrayList<>();
                } else {
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        WeakReference<C4226q1> weakReference = f18003d.get(size);
                        if (weakReference == null || weakReference.get() == null) {
                            f18003d.remove(size);
                        }
                    }
                    for (int size2 = f18003d.size() - 1; size2 >= 0; size2--) {
                        WeakReference<C4226q1> weakReference2 = f18003d.get(size2);
                        if (weakReference2 != null) {
                            c4226q1 = weakReference2.get();
                        } else {
                            c4226q1 = null;
                        }
                        if (c4226q1 != null && c4226q1.getBaseContext() == context) {
                            return c4226q1;
                        }
                    }
                }
                C4226q1 c4226q12 = new C4226q1(context);
                f18003d.add(new WeakReference<>(c4226q12));
                return c4226q12;
            }
        }
        return context;
    }
}
