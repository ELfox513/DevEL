package p128n0;

import android.content.Context;
import java.io.File;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import p128n0.AbstractC4676e;
import p155q0.InterfaceC5383c;
/* renamed from: n0.a */
/* loaded from: classes.dex */
public class C4672a {

    /* renamed from: a */
    public final InterfaceC5383c.InterfaceC5387c f18741a;

    /* renamed from: b */
    public final Context f18742b;

    /* renamed from: c */
    public final String f18743c;

    /* renamed from: d */
    public final AbstractC4676e.C4680d f18744d;

    /* renamed from: e */
    public final List<AbstractC4676e.AbstractC4678b> f18745e;

    /* renamed from: f */
    public final boolean f18746f;

    /* renamed from: g */
    public final AbstractC4676e.EnumC4679c f18747g;

    /* renamed from: h */
    public final Executor f18748h;

    /* renamed from: i */
    public final Executor f18749i;

    /* renamed from: j */
    public final boolean f18750j;

    /* renamed from: k */
    public final boolean f18751k;

    /* renamed from: l */
    public final boolean f18752l;

    /* renamed from: m */
    public final Set<Integer> f18753m;

    /* renamed from: n */
    public final String f18754n;

    /* renamed from: o */
    public final File f18755o;

    /* renamed from: a */
    public boolean m15836a(int i, int i2) {
        boolean z;
        Set<Integer> set;
        if (i > i2) {
            z = true;
        } else {
            z = false;
        }
        return !(z && this.f18752l) && this.f18751k && ((set = this.f18753m) == null || !set.contains(Integer.valueOf(i)));
    }

    public C4672a(Context context, String str, InterfaceC5383c.InterfaceC5387c interfaceC5387c, AbstractC4676e.C4680d c4680d, List<AbstractC4676e.AbstractC4678b> list, boolean z, AbstractC4676e.EnumC4679c enumC4679c, Executor executor, Executor executor2, boolean z2, boolean z3, boolean z4, Set<Integer> set, String str2, File file) {
        this.f18741a = interfaceC5387c;
        this.f18742b = context;
        this.f18743c = str;
        this.f18744d = c4680d;
        this.f18745e = list;
        this.f18746f = z;
        this.f18747g = enumC4679c;
        this.f18748h = executor;
        this.f18749i = executor2;
        this.f18750j = z2;
        this.f18751k = z3;
        this.f18752l = z4;
        this.f18753m = set;
        this.f18754n = str2;
        this.f18755o = file;
    }
}
