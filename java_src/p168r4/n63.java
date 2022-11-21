package p168r4;

import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import sun.misc.Unsafe;
/* renamed from: r4.n63 */
/* loaded from: classes2.dex */
public final class n63 extends c63 {

    /* renamed from: a */
    public static final Unsafe f28175a;

    /* renamed from: b */
    public static final long f28176b;

    /* renamed from: c */
    public static final long f28177c;

    /* renamed from: d */
    public static final long f28178d;

    /* renamed from: e */
    public static final long f28179e;

    /* renamed from: f */
    public static final long f28180f;

    /* renamed from: r4.n63$a */
    /* loaded from: classes2.dex */
    public class C6048a implements PrivilegedExceptionAction<Unsafe> {
        @Override // java.security.PrivilegedExceptionAction
        public final /* bridge */ /* synthetic */ Unsafe run() {
            return m9146a();
        }

        /* renamed from: a */
        public static final Unsafe m9146a() {
            Field[] declaredFields;
            for (Field field : Unsafe.class.getDeclaredFields()) {
                field.setAccessible(true);
                Object obj = field.get(null);
                if (Unsafe.class.isInstance(obj)) {
                    return (Unsafe) Unsafe.class.cast(obj);
                }
            }
            throw new NoSuchFieldError("the Unsafe");
        }
    }

    public /* synthetic */ n63(g63 g63Var) {
        super(null);
    }

    @Override // p168r4.c63
    /* renamed from: a */
    public final void mo9151a(o63 o63Var, Thread thread) {
        f28175a.putObject(o63Var, f28179e, thread);
    }

    @Override // p168r4.c63
    /* renamed from: b */
    public final void mo9150b(o63 o63Var, o63 o63Var2) {
        f28175a.putObject(o63Var, f28180f, o63Var2);
    }

    @Override // p168r4.c63
    /* renamed from: c */
    public final boolean mo9149c(p63<?> p63Var, o63 o63Var, o63 o63Var2) {
        return m63.m9486a(f28175a, p63Var, f28177c, o63Var, o63Var2);
    }

    @Override // p168r4.c63
    /* renamed from: d */
    public final boolean mo9148d(p63<?> p63Var, f63 f63Var, f63 f63Var2) {
        return m63.m9486a(f28175a, p63Var, f28176b, f63Var, f63Var2);
    }

    @Override // p168r4.c63
    /* renamed from: e */
    public final boolean mo9147e(p63<?> p63Var, Object obj, Object obj2) {
        return m63.m9486a(f28175a, p63Var, f28178d, obj, obj2);
    }

    static {
        Unsafe unsafe;
        try {
            try {
                unsafe = Unsafe.getUnsafe();
            } catch (PrivilegedActionException e) {
                throw new RuntimeException("Could not initialize intrinsics", e.getCause());
            }
        } catch (SecurityException unused) {
            unsafe = (Unsafe) AccessController.doPrivileged(new C6048a());
        }
        try {
            f28177c = unsafe.objectFieldOffset(p63.class.getDeclaredField("d"));
            f28176b = unsafe.objectFieldOffset(p63.class.getDeclaredField("b"));
            f28178d = unsafe.objectFieldOffset(p63.class.getDeclaredField("a"));
            f28179e = unsafe.objectFieldOffset(o63.class.getDeclaredField("a"));
            f28180f = unsafe.objectFieldOffset(o63.class.getDeclaredField("b"));
            f28175a = unsafe;
        } catch (Exception e2) {
            n13.m9209a(e2);
            throw new RuntimeException(e2);
        }
    }
}
