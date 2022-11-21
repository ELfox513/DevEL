.class public final Lr4/b11;
.super Lr4/co;
.source "SourceFile"


# instance fields
.field public final a:Lr4/a11;

.field public final b:Lr4/vv;

.field public final d:Lr4/fk2;

.field public k:Z


# direct methods
.method public constructor <init>(Lr4/a11;Lr4/vv;Lr4/fk2;)V
    .locals 1

    invoke-direct {p0}, Lr4/co;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/b11;->k:Z

    iput-object p1, p0, Lr4/b11;->a:Lr4/a11;

    iput-object p2, p0, Lr4/b11;->b:Lr4/vv;

    iput-object p3, p0, Lr4/b11;->d:Lr4/fk2;

    return-void
.end method


# virtual methods
.method public final H0(Z)V
    .locals 0

    iput-boolean p1, p0, Lr4/b11;->k:Z

    return-void
.end method

.method public final Y4(Lr4/ex;)V
    .locals 1

    const-string v0, "setOnPaidEventListener must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/b11;->d:Lr4/fk2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lr4/fk2;->v(Lr4/ex;)V

    :cond_0
    return-void
.end method

.method public final c()Lr4/vv;
    .locals 1

    iget-object v0, p0, Lr4/b11;->b:Lr4/vv;

    return-object v0
.end method

.method public final g()Lr4/hx;
    .locals 2

    sget-object v0, Lr4/rz;->b5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lr4/b11;->a:Lr4/a11;

    invoke-virtual {v0}, Lr4/i31;->d()Lr4/b71;

    move-result-object v0

    return-object v0
.end method

.method public final g3(Lr4/io;)V
    .locals 0

    return-void
.end method

.method public final m3(Lf4/a;Lr4/ko;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lr4/b11;->d:Lr4/fk2;

    invoke-virtual {v0, p2}, Lr4/fk2;->j(Lr4/ko;)V

    iget-object v0, p0, Lr4/b11;->a:Lr4/a11;

    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget-boolean v1, p0, Lr4/b11;->k:Z

    invoke-virtual {v0, p1, p2, v1}, Lr4/a11;->h(Landroid/app/Activity;Lr4/ko;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lr4/cm0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
