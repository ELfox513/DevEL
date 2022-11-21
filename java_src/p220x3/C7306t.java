package p220x3;

import android.content.Context;
import android.content.res.Resources;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import p185t3.C6759o;
/* renamed from: x3.t */
/* loaded from: classes.dex */
public class C7306t {

    /* renamed from: a */
    public final Resources f36800a;

    /* renamed from: b */
    public final String f36801b;

    @RecentlyNullable
    /* renamed from: a */
    public String m1859a(@RecentlyNonNull String str) {
        int identifier = this.f36800a.getIdentifier(str, "string", this.f36801b);
        if (identifier == 0) {
            return null;
        }
        return this.f36800a.getString(identifier);
    }

    public C7306t(@RecentlyNonNull Context context) {
        C7297q.m1883j(context);
        Resources resources = context.getResources();
        this.f36800a = resources;
        this.f36801b = resources.getResourcePackageName(C6759o.f35439a);
    }
}
