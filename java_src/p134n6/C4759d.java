package p134n6;

import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import p116l6.C4569c;
import p116l6.InterfaceC4567a;
import p116l6.InterfaceC4571e;
import p116l6.InterfaceC4572f;
import p116l6.InterfaceC4573g;
import p116l6.InterfaceC4574h;
import p125m6.InterfaceC4650a;
import p125m6.InterfaceC4651b;
/* renamed from: n6.d */
/* loaded from: classes2.dex */
public final class C4759d implements InterfaceC4651b<C4759d> {

    /* renamed from: e */
    public static final InterfaceC4571e<Object> f19017e = new InterfaceC4571e() { // from class: n6.a
        @Override // p116l6.InterfaceC4568b
        /* renamed from: a */
        public final void mo370a(Object obj, InterfaceC4572f interfaceC4572f) {
            C4759d.m15450l(obj, interfaceC4572f);
        }
    };

    /* renamed from: f */
    public static final InterfaceC4573g<String> f19018f = new InterfaceC4573g() { // from class: n6.b
        @Override // p116l6.InterfaceC4568b
        /* renamed from: a */
        public final void mo370a(Object obj, InterfaceC4574h interfaceC4574h) {
            interfaceC4574h.mo15439d((String) obj);
        }
    };

    /* renamed from: g */
    public static final InterfaceC4573g<Boolean> f19019g = new InterfaceC4573g() { // from class: n6.c
        @Override // p116l6.InterfaceC4568b
        /* renamed from: a */
        public final void mo370a(Object obj, InterfaceC4574h interfaceC4574h) {
            C4759d.m15448n((Boolean) obj, interfaceC4574h);
        }
    };

    /* renamed from: h */
    public static final C4761b f19020h = new C4761b(null);

    /* renamed from: a */
    public final Map<Class<?>, InterfaceC4571e<?>> f19021a = new HashMap();

    /* renamed from: b */
    public final Map<Class<?>, InterfaceC4573g<?>> f19022b = new HashMap();

    /* renamed from: c */
    public InterfaceC4571e<Object> f19023c = f19017e;

    /* renamed from: d */
    public boolean f19024d = false;

    /* renamed from: n6.d$a */
    /* loaded from: classes2.dex */
    public class C4760a implements InterfaceC4567a {
        public C4760a() {
        }

        @Override // p116l6.InterfaceC4567a
        /* renamed from: a */
        public void mo15445a(Object obj, Writer writer) {
            C4762e c4762e = new C4762e(writer, C4759d.this.f19021a, C4759d.this.f19022b, C4759d.this.f19023c, C4759d.this.f19024d);
            c4762e.m15434i(obj, false);
            c4762e.m15425r();
        }

        @Override // p116l6.InterfaceC4567a
        /* renamed from: b */
        public String mo15444b(Object obj) {
            StringWriter stringWriter = new StringWriter();
            try {
                mo15445a(obj, stringWriter);
            } catch (IOException unused) {
            }
            return stringWriter.toString();
        }
    }

    /* renamed from: n6.d$b */
    /* loaded from: classes2.dex */
    public static final class C4761b implements InterfaceC4573g<Date> {

        /* renamed from: a */
        public static final DateFormat f19026a;

        public C4761b() {
        }

        public /* synthetic */ C4761b(C4760a c4760a) {
            this();
        }

        @Override // p116l6.InterfaceC4568b
        /* renamed from: b */
        public void mo370a(Date date, InterfaceC4574h interfaceC4574h) {
            interfaceC4574h.mo15439d(f19026a.format(date));
        }

        static {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
            f19026a = simpleDateFormat;
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        }
    }

    /* renamed from: n */
    public static /* synthetic */ void m15448n(Boolean bool, InterfaceC4574h interfaceC4574h) {
        interfaceC4574h.mo15438e(bool.booleanValue());
    }

    /* renamed from: i */
    public InterfaceC4567a m15453i() {
        return new C4760a();
    }

    /* renamed from: j */
    public C4759d m15452j(InterfaceC4650a interfaceC4650a) {
        interfaceC4650a.mo391a(this);
        return this;
    }

    /* renamed from: k */
    public C4759d m15451k(boolean z) {
        this.f19024d = z;
        return this;
    }

    /* renamed from: l */
    public static /* synthetic */ void m15450l(Object obj, InterfaceC4572f interfaceC4572f) {
        throw new C4569c("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
    }

    @Override // p125m6.InterfaceC4651b
    /* renamed from: o */
    public <T> C4759d mo15461a(Class<T> cls, InterfaceC4571e<? super T> interfaceC4571e) {
        this.f19021a.put(cls, interfaceC4571e);
        this.f19022b.remove(cls);
        return this;
    }

    /* renamed from: p */
    public <T> C4759d m15446p(Class<T> cls, InterfaceC4573g<? super T> interfaceC4573g) {
        this.f19022b.put(cls, interfaceC4573g);
        this.f19021a.remove(cls);
        return this;
    }

    public C4759d() {
        m15446p(String.class, f19018f);
        m15446p(Boolean.class, f19019g);
        m15446p(Date.class, f19020h);
    }
}
