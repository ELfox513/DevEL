.class public final Lr4/hq0;
.super Lb3/d0;
.source "SourceFile"


# instance fields
.field public final c:Lr4/po0;

.field public final d:Lr4/qq0;

.field public final e:Ljava/lang/String;

.field public final f:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lr4/po0;Lr4/qq0;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lb3/d0;-><init>()V

    iput-object p1, p0, Lr4/hq0;->c:Lr4/po0;

    iput-object p2, p0, Lr4/hq0;->d:Lr4/qq0;

    iput-object p3, p0, Lr4/hq0;->e:Ljava/lang/String;

    iput-object p4, p0, Lr4/hq0;->f:[Ljava/lang/String;

    invoke-static {}, Lz2/t;->z()Lr4/iq0;

    move-result-object p1

    invoke-virtual {p1, p0}, Lr4/iq0;->g(Lr4/hq0;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lr4/hq0;->d:Lr4/qq0;

    iget-object v1, p0, Lr4/hq0;->e:Ljava/lang/String;

    iget-object v2, p0, Lr4/hq0;->f:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lr4/qq0;->f(Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lb3/k2;->i:Lr4/c03;

    new-instance v1, Lr4/gq0;

    invoke-direct {v1, p0}, Lr4/gq0;-><init>(Lr4/hq0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lb3/k2;->i:Lr4/c03;

    new-instance v2, Lr4/gq0;

    invoke-direct {v2, p0}, Lr4/gq0;-><init>(Lr4/hq0;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method

.method public final c()Lr4/h83;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lr4/rz;->o1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/hq0;->d:Lr4/qq0;

    instance-of v0, v0, Lr4/zq0;

    if-eqz v0, :cond_0

    sget-object v0, Lr4/qm0;->e:Lr4/i83;

    new-instance v1, Lr4/fq0;

    invoke-direct {v1, p0}, Lr4/fq0;-><init>(Lr4/hq0;)V

    invoke-interface {v0, v1}, Lr4/i83;->c(Ljava/util/concurrent/Callable;)Lr4/h83;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lb3/d0;->c()Lr4/h83;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/hq0;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic e()Ljava/lang/Boolean;
    .locals 3

    iget-object v0, p0, Lr4/hq0;->d:Lr4/qq0;

    iget-object v1, p0, Lr4/hq0;->e:Ljava/lang/String;

    iget-object v2, p0, Lr4/hq0;->f:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lr4/qq0;->g(Ljava/lang/String;[Ljava/lang/String;Lr4/hq0;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
