package p065g0;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
/* renamed from: g0.c */
/* loaded from: classes.dex */
public abstract class AbstractC3544c extends AbstractC3539a {

    /* renamed from: t */
    public int f16074t;

    /* renamed from: u */
    public int f16075u;

    /* renamed from: v */
    public LayoutInflater f16076v;

    @Override // p065g0.AbstractC3539a
    /* renamed from: g */
    public View mo18646g(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f16076v.inflate(this.f16075u, viewGroup, false);
    }

    @Override // p065g0.AbstractC3539a
    /* renamed from: j */
    public View mo17073j(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f16076v.inflate(this.f16074t, viewGroup, false);
    }

    @Deprecated
    public AbstractC3544c(Context context, int i, Cursor cursor, boolean z) {
        super(context, cursor, z);
        this.f16075u = i;
        this.f16074t = i;
        this.f16076v = (LayoutInflater) context.getSystemService("layout_inflater");
    }
}
