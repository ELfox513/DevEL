package p134n6;

import android.util.Base64;
import android.util.JsonWriter;
import java.io.Writer;
import java.util.Collection;
import java.util.Date;
import java.util.Map;
import p116l6.C4569c;
import p116l6.C4570d;
import p116l6.InterfaceC4571e;
import p116l6.InterfaceC4572f;
import p116l6.InterfaceC4573g;
import p116l6.InterfaceC4574h;
/* renamed from: n6.e */
/* loaded from: classes2.dex */
public final class C4762e implements InterfaceC4572f, InterfaceC4574h {

    /* renamed from: a */
    public C4762e f19027a = null;

    /* renamed from: b */
    public boolean f19028b = true;

    /* renamed from: c */
    public final JsonWriter f19029c;

    /* renamed from: d */
    public final Map<Class<?>, InterfaceC4571e<?>> f19030d;

    /* renamed from: e */
    public final Map<Class<?>, InterfaceC4573g<?>> f19031e;

    /* renamed from: f */
    public final InterfaceC4571e<Object> f19032f;

    /* renamed from: g */
    public final boolean f19033g;

    @Override // p116l6.InterfaceC4572f
    /* renamed from: a */
    public InterfaceC4572f mo15442a(C4570d c4570d, int i) {
        return m15432k(c4570d.m15989a(), i);
    }

    @Override // p116l6.InterfaceC4572f
    /* renamed from: b */
    public InterfaceC4572f mo15441b(C4570d c4570d, long j) {
        return m15431l(c4570d.m15989a(), j);
    }

    @Override // p116l6.InterfaceC4572f
    /* renamed from: c */
    public InterfaceC4572f mo15440c(C4570d c4570d, boolean z) {
        return m15429n(c4570d.m15989a(), z);
    }

    @Override // p116l6.InterfaceC4572f
    /* renamed from: f */
    public InterfaceC4572f mo15437f(C4570d c4570d, Object obj) {
        return m15430m(c4570d.m15989a(), obj);
    }

    /* renamed from: i */
    public C4762e m15434i(Object obj, boolean z) {
        int[] iArr;
        Class<?> cls;
        int i = 0;
        if (z && m15426q(obj)) {
            Object[] objArr = new Object[1];
            if (obj == null) {
                cls = null;
            } else {
                cls = obj.getClass();
            }
            objArr[0] = cls;
            throw new C4569c(String.format("%s cannot be encoded inline", objArr));
        } else if (obj == null) {
            this.f19029c.nullValue();
            return this;
        } else if (obj instanceof Number) {
            this.f19029c.value((Number) obj);
            return this;
        } else if (obj.getClass().isArray()) {
            if (obj instanceof byte[]) {
                return m15427p((byte[]) obj);
            }
            this.f19029c.beginArray();
            if (obj instanceof int[]) {
                int length = ((int[]) obj).length;
                while (i < length) {
                    this.f19029c.value(iArr[i]);
                    i++;
                }
            } else if (obj instanceof long[]) {
                long[] jArr = (long[]) obj;
                int length2 = jArr.length;
                while (i < length2) {
                    m15435h(jArr[i]);
                    i++;
                }
            } else if (obj instanceof double[]) {
                double[] dArr = (double[]) obj;
                int length3 = dArr.length;
                while (i < length3) {
                    this.f19029c.value(dArr[i]);
                    i++;
                }
            } else if (obj instanceof boolean[]) {
                boolean[] zArr = (boolean[]) obj;
                int length4 = zArr.length;
                while (i < length4) {
                    this.f19029c.value(zArr[i]);
                    i++;
                }
            } else if (obj instanceof Number[]) {
                for (Number number : (Number[]) obj) {
                    m15434i(number, false);
                }
            } else {
                for (Object obj2 : (Object[]) obj) {
                    m15434i(obj2, false);
                }
            }
            this.f19029c.endArray();
            return this;
        } else if (obj instanceof Collection) {
            this.f19029c.beginArray();
            for (Object obj3 : (Collection) obj) {
                m15434i(obj3, false);
            }
            this.f19029c.endArray();
            return this;
        } else if (obj instanceof Map) {
            this.f19029c.beginObject();
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                Object key = entry.getKey();
                try {
                    m15430m((String) key, entry.getValue());
                } catch (ClassCastException e) {
                    throw new C4569c(String.format("Only String keys are currently supported in maps, got %s of type %s instead.", key, key.getClass()), e);
                }
            }
            this.f19029c.endObject();
            return this;
        } else {
            InterfaceC4571e<?> interfaceC4571e = this.f19030d.get(obj.getClass());
            if (interfaceC4571e != null) {
                return m15424s(interfaceC4571e, obj, z);
            }
            InterfaceC4573g<?> interfaceC4573g = this.f19031e.get(obj.getClass());
            if (interfaceC4573g != null) {
                interfaceC4573g.mo370a(obj, this);
                return this;
            } else if (obj instanceof Enum) {
                mo15439d(((Enum) obj).name());
                return this;
            } else {
                return m15424s(this.f19032f, obj, z);
            }
        }
    }

    /* renamed from: q */
    public final boolean m15426q(Object obj) {
        return obj == null || obj.getClass().isArray() || (obj instanceof Collection) || (obj instanceof Date) || (obj instanceof Enum) || (obj instanceof Number);
    }

    /* renamed from: m */
    public C4762e m15430m(String str, Object obj) {
        if (this.f19033g) {
            return m15422u(str, obj);
        }
        return m15423t(str, obj);
    }

    /* renamed from: s */
    public C4762e m15424s(InterfaceC4571e<Object> interfaceC4571e, Object obj, boolean z) {
        if (!z) {
            this.f19029c.beginObject();
        }
        interfaceC4571e.mo370a(obj, this);
        if (!z) {
            this.f19029c.endObject();
        }
        return this;
    }

    /* renamed from: u */
    public final C4762e m15422u(String str, Object obj) {
        if (obj == null) {
            return this;
        }
        m15421v();
        this.f19029c.name(str);
        return m15434i(obj, false);
    }

    /* renamed from: v */
    public final void m15421v() {
        if (this.f19028b) {
            C4762e c4762e = this.f19027a;
            if (c4762e != null) {
                c4762e.m15421v();
                this.f19027a.f19028b = false;
                this.f19027a = null;
                this.f19029c.endObject();
                return;
            }
            return;
        }
        throw new IllegalStateException("Parent context used since this context was created. Cannot use this context anymore.");
    }

    public C4762e(Writer writer, Map<Class<?>, InterfaceC4571e<?>> map, Map<Class<?>, InterfaceC4573g<?>> map2, InterfaceC4571e<Object> interfaceC4571e, boolean z) {
        this.f19029c = new JsonWriter(writer);
        this.f19030d = map;
        this.f19031e = map2;
        this.f19032f = interfaceC4571e;
        this.f19033g = z;
    }

    /* renamed from: g */
    public C4762e m15436g(int i) {
        m15421v();
        this.f19029c.value(i);
        return this;
    }

    /* renamed from: h */
    public C4762e m15435h(long j) {
        m15421v();
        this.f19029c.value(j);
        return this;
    }

    @Override // p116l6.InterfaceC4574h
    /* renamed from: j */
    public C4762e mo15439d(String str) {
        m15421v();
        this.f19029c.value(str);
        return this;
    }

    /* renamed from: k */
    public C4762e m15432k(String str, int i) {
        m15421v();
        this.f19029c.name(str);
        return m15436g(i);
    }

    /* renamed from: l */
    public C4762e m15431l(String str, long j) {
        m15421v();
        this.f19029c.name(str);
        return m15435h(j);
    }

    /* renamed from: n */
    public C4762e m15429n(String str, boolean z) {
        m15421v();
        this.f19029c.name(str);
        return mo15438e(z);
    }

    @Override // p116l6.InterfaceC4574h
    /* renamed from: o */
    public C4762e mo15438e(boolean z) {
        m15421v();
        this.f19029c.value(z);
        return this;
    }

    /* renamed from: p */
    public C4762e m15427p(byte[] bArr) {
        m15421v();
        if (bArr == null) {
            this.f19029c.nullValue();
        } else {
            this.f19029c.value(Base64.encodeToString(bArr, 2));
        }
        return this;
    }

    /* renamed from: r */
    public void m15425r() {
        m15421v();
        this.f19029c.flush();
    }

    /* renamed from: t */
    public final C4762e m15423t(String str, Object obj) {
        m15421v();
        this.f19029c.name(str);
        if (obj == null) {
            this.f19029c.nullValue();
            return this;
        }
        return m15434i(obj, false);
    }
}
