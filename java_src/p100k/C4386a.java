package p100k;

import java.util.concurrent.Executor;
/* renamed from: k.a */
/* loaded from: classes.dex */
public class C4386a extends AbstractC4392d {

    /* renamed from: c */
    public static volatile C4386a f18298c;

    /* renamed from: d */
    public static final Executor f18299d = new ExecutorC4387a();

    /* renamed from: e */
    public static final Executor f18300e = new ExecutorC4388b();

    /* renamed from: a */
    public AbstractC4392d f18301a;

    /* renamed from: b */
    public AbstractC4392d f18302b;

    /* renamed from: k.a$a */
    /* loaded from: classes.dex */
    public static class ExecutorC4387a implements Executor {
        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            C4386a.m16718e().mo16713c(runnable);
        }
    }

    /* renamed from: k.a$b */
    /* loaded from: classes.dex */
    public static class ExecutorC4388b implements Executor {
        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            C4386a.m16718e().mo16715a(runnable);
        }
    }

    /* renamed from: d */
    public static Executor m16719d() {
        return f18300e;
    }

    @Override // p100k.AbstractC4392d
    /* renamed from: a */
    public void mo16715a(Runnable runnable) {
        this.f18301a.mo16715a(runnable);
    }

    @Override // p100k.AbstractC4392d
    /* renamed from: b */
    public boolean mo16714b() {
        return this.f18301a.mo16714b();
    }

    @Override // p100k.AbstractC4392d
    /* renamed from: c */
    public void mo16713c(Runnable runnable) {
        this.f18301a.mo16713c(runnable);
    }

    /* renamed from: e */
    public static C4386a m16718e() {
        if (f18298c != null) {
            return f18298c;
        }
        synchronized (C4386a.class) {
            if (f18298c == null) {
                f18298c = new C4386a();
            }
        }
        return f18298c;
    }

    public C4386a() {
        C4390c c4390c = new C4390c();
        this.f18302b = c4390c;
        this.f18301a = c4390c;
    }
}
