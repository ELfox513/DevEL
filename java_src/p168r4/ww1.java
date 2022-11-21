package p168r4;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;
/* renamed from: r4.ww1 */
/* loaded from: classes2.dex */
public final class ww1 implements xx1 {

    /* renamed from: f */
    public static final Pattern f33344f = Pattern.compile("Received error HTTP response code: (.*)");

    /* renamed from: a */
    public final wv1 f33345a;

    /* renamed from: b */
    public final i83 f33346b;

    /* renamed from: c */
    public final hp2 f33347c;

    /* renamed from: d */
    public final ScheduledExecutorService f33348d;

    /* renamed from: e */
    public final f02 f33349e;

    public ww1(hp2 hp2Var, wv1 wv1Var, i83 i83Var, ScheduledExecutorService scheduledExecutorService, f02 f02Var) {
        this.f33347c = hp2Var;
        this.f33345a = wv1Var;
        this.f33346b = i83Var;
        this.f33348d = scheduledExecutorService;
        this.f33349e = f02Var;
    }

    @Override // p168r4.xx1
    /* renamed from: a */
    public final h83<bp2> mo4956a(og0 og0Var) {
        h83<bp2> m4806i = y73.m4806i(this.f33345a.m5561a(og0Var), new e73(this) { // from class: r4.tw1

            /* renamed from: a */
            public final ww1 f32045a;

            {
                this.f32045a = this;
            }

            @Override // p168r4.e73
            /* renamed from: a */
            public final h83 mo1029a(Object obj) {
                return this.f32045a.m5556d((InputStream) obj);
            }
        }, this.f33346b);
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30874O3)).booleanValue()) {
            m4806i = y73.m4808g(y73.m4807h(m4806i, ((Integer) C5592av.m12935c().m8098c(C6225rz.f30882P3)).intValue(), TimeUnit.SECONDS, this.f33348d), TimeoutException.class, uw1.f32461a, qm0.f30195f);
        }
        y73.m4799p(m4806i, new vw1(this), qm0.f30195f);
        return m4806i;
    }

    /* renamed from: d */
    public final /* synthetic */ h83 m5556d(InputStream inputStream) {
        return y73.m4814a(new bp2(new yo2(this.f33347c), ap2.m12979a(new InputStreamReader(inputStream))));
    }
}
