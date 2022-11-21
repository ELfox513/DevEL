package p077h3;

import android.util.JsonReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.Executor;
import org.json.JSONException;
import p168r4.e73;
import p168r4.h83;
import p168r4.og0;
import p168r4.rw1;
import p168r4.y73;
import p235z2.C7601t;
/* renamed from: h3.h */
/* loaded from: classes.dex */
public final class C3999h implements e73<og0, C4003j> {

    /* renamed from: a */
    public final Executor f17465a;

    /* renamed from: b */
    public final rw1 f17466b;

    public C3999h(Executor executor, rw1 rw1Var) {
        this.f17465a = executor;
        this.f17466b = rw1Var;
    }

    @Override // p168r4.e73
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ h83<C4003j> mo1029a(og0 og0Var) {
        final og0 og0Var2 = og0Var;
        return y73.m4806i(this.f17466b.m7315a(og0Var2), new e73(og0Var2) { // from class: h3.g

            /* renamed from: a */
            public final og0 f17436a;

            {
                this.f17436a = og0Var2;
            }

            @Override // p168r4.e73
            /* renamed from: a */
            public final h83 mo1029a(Object obj) {
                og0 og0Var3 = this.f17436a;
                C4003j c4003j = new C4003j(new JsonReader(new InputStreamReader((InputStream) obj)));
                try {
                    c4003j.f17481b = C7601t.m939d().m26336S(og0Var3.f28978a).toString();
                } catch (JSONException unused) {
                    c4003j.f17481b = "{}";
                }
                return y73.m4814a(c4003j);
            }
        }, this.f17465a);
    }
}
