package p073h;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.view.LayoutInflater;
import p021c.C1016i;
/* renamed from: h.d */
/* loaded from: classes.dex */
public class C3914d extends ContextWrapper {

    /* renamed from: a */
    public int f17155a;

    /* renamed from: b */
    public Resources.Theme f17156b;

    /* renamed from: c */
    public LayoutInflater f17157c;

    /* renamed from: d */
    public Configuration f17158d;

    /* renamed from: e */
    public Resources f17159e;

    public C3914d() {
        super(null);
    }

    @Override // android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    /* renamed from: c */
    public int m17772c() {
        return this.f17155a;
    }

    /* renamed from: e */
    public void m17770e(Resources.Theme theme, int i, boolean z) {
        theme.applyStyle(i, true);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return getResources().getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return m17773b();
    }

    public C3914d(Context context, int i) {
        super(context);
        this.f17155a = i;
    }

    /* renamed from: a */
    public void m17774a(Configuration configuration) {
        if (this.f17159e == null) {
            if (this.f17158d == null) {
                this.f17158d = new Configuration(configuration);
                return;
            }
            throw new IllegalStateException("Override configuration has already been set");
        }
        throw new IllegalStateException("getResources() or getAssets() has already been called");
    }

    /* renamed from: b */
    public final Resources m17773b() {
        if (this.f17159e == null) {
            Configuration configuration = this.f17158d;
            if (configuration == null) {
                this.f17159e = super.getResources();
            } else if (Build.VERSION.SDK_INT >= 17) {
                this.f17159e = createConfigurationContext(configuration).getResources();
            } else {
                Resources resources = super.getResources();
                Configuration configuration2 = new Configuration(resources.getConfiguration());
                configuration2.updateFrom(this.f17158d);
                this.f17159e = new Resources(resources.getAssets(), resources.getDisplayMetrics(), configuration2);
            }
        }
        return this.f17159e;
    }

    /* renamed from: d */
    public final void m17771d() {
        boolean z;
        if (this.f17156b == null) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            this.f17156b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f17156b.setTo(theme);
            }
        }
        m17770e(this.f17156b, this.f17155a, z);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        if ("layout_inflater".equals(str)) {
            if (this.f17157c == null) {
                this.f17157c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
            }
            return this.f17157c;
        }
        return getBaseContext().getSystemService(str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.f17156b;
        if (theme != null) {
            return theme;
        }
        if (this.f17155a == 0) {
            this.f17155a = C1016i.f2675d;
        }
        m17771d();
        return this.f17156b;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        if (this.f17155a != i) {
            this.f17155a = i;
            m17771d();
        }
    }

    public C3914d(Context context, Resources.Theme theme) {
        super(context);
        this.f17156b = theme;
    }
}
