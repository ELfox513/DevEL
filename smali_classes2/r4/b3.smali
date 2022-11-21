.class public abstract Lr4/b3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/a7;


# instance fields
.field public final a:Lr4/d8;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr4/d8;

    invoke-direct {v0}, Lr4/d8;-><init>()V

    iput-object v0, p0, Lr4/b3;->a:Lr4/d8;

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 3

    invoke-interface {p0}, Lr4/a7;->G()Lr4/e8;

    move-result-object v0

    invoke-virtual {v0}, Lr4/e8;->k()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lr4/a7;->E()I

    move-result v1

    invoke-interface {p0}, Lr4/a7;->p()I

    invoke-interface {p0}, Lr4/a7;->q()Z

    invoke-virtual {v0, v1, v2, v2}, Lr4/e8;->c(IIZ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v2
.end method

.method public final d()Z
    .locals 3

    invoke-interface {p0}, Lr4/a7;->G()Lr4/e8;

    move-result-object v0

    invoke-virtual {v0}, Lr4/e8;->k()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lr4/a7;->E()I

    move-result v1

    invoke-interface {p0}, Lr4/a7;->p()I

    invoke-interface {p0}, Lr4/a7;->q()Z

    invoke-virtual {v0, v1, v2, v2}, Lr4/e8;->b(IIZ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v2
.end method

.method public final e()Z
    .locals 5

    invoke-interface {p0}, Lr4/a7;->G()Lr4/e8;

    move-result-object v0

    invoke-virtual {v0}, Lr4/e8;->k()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Lr4/a7;->E()I

    move-result v1

    iget-object v2, p0, Lr4/b3;->a:Lr4/d8;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lr4/e8;->f(ILr4/d8;J)Lr4/d8;

    move-result-object v0

    invoke-virtual {v0}, Lr4/d8;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Z
    .locals 5

    invoke-interface {p0}, Lr4/a7;->G()Lr4/e8;

    move-result-object v0

    invoke-virtual {v0}, Lr4/e8;->k()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Lr4/a7;->E()I

    move-result v1

    iget-object v2, p0, Lr4/b3;->a:Lr4/d8;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lr4/e8;->f(ILr4/d8;J)Lr4/d8;

    move-result-object v0

    iget-boolean v0, v0, Lr4/d8;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
