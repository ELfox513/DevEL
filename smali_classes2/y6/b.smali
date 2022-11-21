.class public abstract Ly6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly6/a$b;


# instance fields
.field private final appStateCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ly6/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final appStateMonitor:Ly6/a;

.field private currentAppState:Lk7/d;

.field private isRegisteredForAppState:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Ly6/a;->b()Ly6/a;

    move-result-object v0

    invoke-direct {p0, v0}, Ly6/b;-><init>(Ly6/a;)V

    return-void
.end method

.method public constructor <init>(Ly6/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ly6/b;->isRegisteredForAppState:Z

    sget-object v0, Lk7/d;->b:Lk7/d;

    iput-object v0, p0, Ly6/b;->currentAppState:Lk7/d;

    iput-object p1, p0, Ly6/b;->appStateMonitor:Ly6/a;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Ly6/b;->appStateCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public getAppState()Lk7/d;
    .locals 1

    iget-object v0, p0, Ly6/b;->currentAppState:Lk7/d;

    return-object v0
.end method

.method public incrementTsnsCount(I)V
    .locals 1

    iget-object v0, p0, Ly6/b;->appStateMonitor:Ly6/a;

    invoke-virtual {v0, p1}, Ly6/a;->f(I)V

    return-void
.end method

.method public onUpdateAppState(Lk7/d;)V
    .locals 2

    iget-object v0, p0, Ly6/b;->currentAppState:Lk7/d;

    sget-object v1, Lk7/d;->b:Lk7/d;

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Ly6/b;->currentAppState:Lk7/d;

    goto :goto_0

    :cond_0
    if-eq v0, p1, :cond_1

    if-eq p1, v1, :cond_1

    sget-object p1, Lk7/d;->p:Lk7/d;

    iput-object p1, p0, Ly6/b;->currentAppState:Lk7/d;

    :cond_1
    :goto_0
    return-void
.end method

.method public registerForAppState()V
    .locals 2

    iget-boolean v0, p0, Ly6/b;->isRegisteredForAppState:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ly6/b;->appStateMonitor:Ly6/a;

    invoke-virtual {v0}, Ly6/a;->a()Lk7/d;

    move-result-object v0

    iput-object v0, p0, Ly6/b;->currentAppState:Lk7/d;

    iget-object v0, p0, Ly6/b;->appStateMonitor:Ly6/a;

    iget-object v1, p0, Ly6/b;->appStateCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Ly6/a;->k(Ljava/lang/ref/WeakReference;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ly6/b;->isRegisteredForAppState:Z

    return-void
.end method

.method public unregisterForAppState()V
    .locals 2

    iget-boolean v0, p0, Ly6/b;->isRegisteredForAppState:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ly6/b;->appStateMonitor:Ly6/a;

    iget-object v1, p0, Ly6/b;->appStateCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Ly6/a;->o(Ljava/lang/ref/WeakReference;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ly6/b;->isRegisteredForAppState:Z

    return-void
.end method
