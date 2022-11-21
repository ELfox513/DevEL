package p168r4;

import android.location.Location;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
/* renamed from: r4.rx */
/* loaded from: classes2.dex */
public final class C6223rx {

    /* renamed from: g */
    public Date f30730g;

    /* renamed from: h */
    public String f30731h;

    /* renamed from: k */
    public Location f30734k;

    /* renamed from: l */
    public String f30735l;

    /* renamed from: m */
    public String f30736m;

    /* renamed from: o */
    public boolean f30738o;

    /* renamed from: p */
    public String f30739p;

    /* renamed from: a */
    public final HashSet<String> f30724a = new HashSet<>();

    /* renamed from: b */
    public final Bundle f30725b = new Bundle();

    /* renamed from: c */
    public final HashMap<Class<Object>, Object> f30726c = new HashMap<>();

    /* renamed from: d */
    public final HashSet<String> f30727d = new HashSet<>();

    /* renamed from: e */
    public final Bundle f30728e = new Bundle();

    /* renamed from: f */
    public final HashSet<String> f30729f = new HashSet<>();

    /* renamed from: i */
    public final List<String> f30732i = new ArrayList();

    /* renamed from: j */
    public int f30733j = -1;

    /* renamed from: n */
    public int f30737n = -1;

    /* renamed from: q */
    public int f30740q = 60000;

    @Deprecated
    /* renamed from: A */
    public final void m7311A(Date date) {
        this.f30730g = date;
    }

    @Deprecated
    /* renamed from: a */
    public final void m7310a(int i) {
        this.f30733j = i;
    }

    /* renamed from: b */
    public final void m7309b(Location location) {
        this.f30734k = location;
    }

    @Deprecated
    /* renamed from: c */
    public final void m7308c(boolean z) {
        this.f30737n = z ? 1 : 0;
    }

    @Deprecated
    /* renamed from: d */
    public final void m7307d(boolean z) {
        this.f30738o = z;
    }

    /* renamed from: w */
    public final void m7288w(String str) {
        this.f30724a.add(str);
    }

    /* renamed from: x */
    public final void m7287x(Class<Object> cls, Bundle bundle) {
        this.f30725b.putBundle(cls.getName(), bundle);
    }

    /* renamed from: y */
    public final void m7286y(String str) {
        this.f30727d.add(str);
    }

    /* renamed from: z */
    public final void m7285z(String str) {
        this.f30727d.remove("B3EEABB8EE11C2BE770B684D95219ECB");
    }
}
