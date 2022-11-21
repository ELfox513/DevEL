package p085i2;

import android.content.Context;
import java.io.Closeable;
import p148p2.InterfaceC5321c;
/* renamed from: i2.s */
/* loaded from: classes.dex */
public abstract class AbstractC4120s implements Closeable {

    /* renamed from: i2.s$a */
    /* loaded from: classes.dex */
    public interface InterfaceC4121a {
        /* renamed from: a */
        InterfaceC4121a mo17333a(Context context);

        AbstractC4120s build();
    }

    /* renamed from: c */
    public abstract InterfaceC5321c mo17335c();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        mo17335c().close();
    }

    /* renamed from: d */
    public abstract C4119r mo17334d();
}
