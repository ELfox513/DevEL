.class public final Lr4/k3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/gb;


# instance fields
.field public final a:Lr4/zb;

.field public final b:Lr4/j3;

.field public d:Lr4/g7;

.field public k:Lr4/gb;

.field public p:Z

.field public q:Z


# direct methods
.method public constructor <init>(Lr4/j3;Lr4/ka;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/k3;->b:Lr4/j3;

    new-instance p1, Lr4/zb;

    invoke-direct {p1, p2}, Lr4/zb;-><init>(Lr4/ka;)V

    iput-object p1, p0, Lr4/k3;->a:Lr4/zb;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/k3;->p:Z

    return-void
.end method


# virtual methods
.method public final B()J
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/k3;->q:Z

    iget-object v0, p0, Lr4/k3;->a:Lr4/zb;

    invoke-virtual {v0}, Lr4/zb;->a()V

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/k3;->q:Z

    iget-object v0, p0, Lr4/k3;->a:Lr4/zb;

    invoke-virtual {v0}, Lr4/zb;->b()V

    return-void
.end method

.method public final c(Lr4/q6;)V
    .locals 1

    iget-object v0, p0, Lr4/k3;->k:Lr4/gb;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lr4/gb;->c(Lr4/q6;)V

    iget-object p1, p0, Lr4/k3;->k:Lr4/gb;

    invoke-interface {p1}, Lr4/gb;->z()Lr4/q6;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lr4/k3;->a:Lr4/zb;

    invoke-virtual {v0, p1}, Lr4/zb;->c(Lr4/q6;)V

    return-void
.end method

.method public final d(J)V
    .locals 1

    iget-object v0, p0, Lr4/k3;->a:Lr4/zb;

    invoke-virtual {v0, p1, p2}, Lr4/zb;->d(J)V

    return-void
.end method

.method public final e(Lr4/g7;)V
    .locals 2

    invoke-interface {p1}, Lr4/g7;->j()Lr4/gb;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lr4/k3;->k:Lr4/gb;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    iput-object v0, p0, Lr4/k3;->k:Lr4/gb;

    iput-object p1, p0, Lr4/k3;->d:Lr4/g7;

    iget-object p1, p0, Lr4/k3;->a:Lr4/zb;

    invoke-virtual {p1}, Lr4/zb;->z()Lr4/q6;

    move-result-object p1

    invoke-interface {v0, p1}, Lr4/gb;->c(Lr4/q6;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Multiple renderer media clocks enabled."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    invoke-static {p1, v0}, Lr4/o3;->c(Ljava/lang/RuntimeException;I)Lr4/o3;

    move-result-object p1

    throw p1

    :cond_1
    return-void
.end method

.method public final f(Lr4/g7;)V
    .locals 1

    iget-object v0, p0, Lr4/k3;->d:Lr4/g7;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lr4/k3;->k:Lr4/gb;

    iput-object p1, p0, Lr4/k3;->d:Lr4/g7;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/k3;->p:Z

    :cond_0
    return-void
.end method

.method public final g(Z)J
    .locals 5

    iget-object v0, p0, Lr4/k3;->d:Lr4/g7;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lr4/g7;->K()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lr4/k3;->d:Lr4/g7;

    invoke-interface {v0}, Lr4/g7;->O()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_3

    iget-object p1, p0, Lr4/k3;->d:Lr4/g7;

    invoke-interface {p1}, Lr4/g7;->H()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lr4/k3;->k:Lr4/gb;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lr4/gb;->B()J

    move-result-wide v0

    iget-boolean v2, p0, Lr4/k3;->p:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lr4/k3;->a:Lr4/zb;

    invoke-virtual {v2}, Lr4/zb;->B()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    iget-object p1, p0, Lr4/k3;->a:Lr4/zb;

    invoke-virtual {p1}, Lr4/zb;->b()V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lr4/k3;->p:Z

    iget-boolean v2, p0, Lr4/k3;->q:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lr4/k3;->a:Lr4/zb;

    invoke-virtual {v2}, Lr4/zb;->a()V

    :cond_2
    iget-object v2, p0, Lr4/k3;->a:Lr4/zb;

    invoke-virtual {v2, v0, v1}, Lr4/zb;->d(J)V

    invoke-interface {p1}, Lr4/gb;->z()Lr4/q6;

    move-result-object p1

    iget-object v0, p0, Lr4/k3;->a:Lr4/zb;

    invoke-virtual {v0}, Lr4/zb;->z()Lr4/q6;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr4/q6;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lr4/k3;->a:Lr4/zb;

    invoke-virtual {v0, p1}, Lr4/zb;->c(Lr4/q6;)V

    iget-object v0, p0, Lr4/k3;->b:Lr4/j3;

    invoke-interface {v0, p1}, Lr4/j3;->b(Lr4/q6;)V

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/k3;->p:Z

    iget-boolean p1, p0, Lr4/k3;->q:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lr4/k3;->a:Lr4/zb;

    invoke-virtual {p1}, Lr4/zb;->a()V

    :cond_4
    :goto_1
    iget-boolean p1, p0, Lr4/k3;->p:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lr4/k3;->a:Lr4/zb;

    invoke-virtual {p1}, Lr4/zb;->B()J

    move-result-wide v0

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lr4/k3;->k:Lr4/gb;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lr4/gb;->B()J

    move-result-wide v0

    :goto_2
    return-wide v0
.end method

.method public final z()Lr4/q6;
    .locals 1

    iget-object v0, p0, Lr4/k3;->k:Lr4/gb;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lr4/gb;->z()Lr4/q6;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/k3;->a:Lr4/zb;

    invoke-virtual {v0}, Lr4/zb;->z()Lr4/q6;

    move-result-object v0

    :goto_0
    return-object v0
.end method
