.class public final Lr4/s22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/q12;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/q12<",
        "Lr4/h11;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/f21;

.field public final b:Landroid/content/Context;

.field public final c:Lr4/rp1;

.field public final d:Lr4/hp2;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Lr4/p03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/p03<",
            "Lr4/no2;",
            "Lb3/y;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/f21;Landroid/content/Context;Ljava/util/concurrent/Executor;Lr4/rp1;Lr4/hp2;Lr4/p03;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/f21;",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lr4/rp1;",
            "Lr4/hp2;",
            "Lr4/p03<",
            "Lr4/no2;",
            "Lb3/y;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lr4/s22;->b:Landroid/content/Context;

    iput-object p1, p0, Lr4/s22;->a:Lr4/f21;

    iput-object p3, p0, Lr4/s22;->e:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lr4/s22;->c:Lr4/rp1;

    iput-object p5, p0, Lr4/s22;->d:Lr4/hp2;

    iput-object p6, p0, Lr4/s22;->f:Lr4/p03;

    return-void
.end method


# virtual methods
.method public final a(Lr4/bp2;Lr4/no2;)Z
    .locals 0

    iget-object p1, p2, Lr4/no2;->s:Lr4/uo2;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lr4/uo2;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lr4/bp2;Lr4/no2;)Lr4/h83;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/bp2;",
            "Lr4/no2;",
            ")",
            "Lr4/h83<",
            "Lr4/h11;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object v0

    new-instance v1, Lr4/l22;

    invoke-direct {v1, p0, p1, p2}, Lr4/l22;-><init>(Lr4/s22;Lr4/bp2;Lr4/no2;)V

    iget-object p1, p0, Lr4/s22;->e:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lr4/y73;->i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c(Lr4/cs0;)V
    .locals 1

    invoke-interface {p1}, Lr4/cs0;->w0()V

    invoke-interface {p1}, Lr4/cs0;->f()Lr4/at0;

    move-result-object p1

    iget-object v0, p0, Lr4/s22;->d:Lr4/hp2;

    iget-object v0, v0, Lr4/hp2;->a:Lr4/xy;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lr4/at0;->g7(Lr4/xy;)V

    :cond_0
    return-void
.end method

.method public final synthetic d(Lr4/bp2;Lr4/no2;Ljava/lang/Object;)Lr4/h83;
    .locals 6

    iget-object p3, p0, Lr4/s22;->b:Landroid/content/Context;

    iget-object v0, p2, Lr4/no2;->u:Ljava/util/List;

    invoke-static {p3, v0}, Lr4/lp2;->b(Landroid/content/Context;Ljava/util/List;)Lr4/yt;

    move-result-object p3

    iget-object v0, p0, Lr4/s22;->c:Lr4/rp1;

    iget-object v1, p1, Lr4/bp2;->b:Lr4/ap2;

    iget-object v1, v1, Lr4/ap2;->b:Lr4/so2;

    invoke-virtual {v0, p3, p2, v1}, Lr4/rp1;->b(Lr4/yt;Lr4/no2;Lr4/so2;)Lr4/cs0;

    move-result-object v0

    iget-boolean v1, p2, Lr4/no2;->S:Z

    invoke-interface {v0, v1}, Lr4/cs0;->a0(Z)V

    sget-object v1, Lr4/rz;->B5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p2, Lr4/no2;->d0:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lr4/s22;->b:Landroid/content/Context;

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    invoke-static {v1, v2, p2}, Lr4/w21;->a(Landroid/content/Context;Landroid/view/View;Lr4/no2;)Lr4/w21;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Lr4/up1;

    iget-object v2, p0, Lr4/s22;->b:Landroid/content/Context;

    iget-object v3, p0, Lr4/s22;->f:Lr4/p03;

    invoke-interface {v3, p2}, Lr4/p03;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb3/y;

    move-object v4, v0

    check-cast v4, Landroid/view/View;

    invoke-direct {v1, v2, v4, v3}, Lr4/up1;-><init>(Landroid/content/Context;Landroid/view/View;Lb3/y;)V

    :goto_0
    iget-object v2, p0, Lr4/s22;->a:Lr4/f21;

    new-instance v3, Lr4/x31;

    const/4 v4, 0x0

    invoke-direct {v3, p1, p2, v4}, Lr4/x31;-><init>(Lr4/bp2;Lr4/no2;Ljava/lang/String;)V

    new-instance p1, Lr4/o11;

    invoke-static {v0}, Lr4/m22;->a(Lr4/cs0;)Lr4/g31;

    move-result-object v5

    invoke-static {p3}, Lr4/lp2;->c(Lr4/yt;)Lr4/qo2;

    move-result-object p3

    invoke-direct {p1, v1, v0, v5, p3}, Lr4/o11;-><init>(Landroid/view/View;Lr4/cs0;Lr4/g31;Lr4/qo2;)V

    invoke-virtual {v2, v3, p1}, Lr4/f21;->d(Lr4/x31;Lr4/o11;)Lr4/i11;

    move-result-object p1

    invoke-virtual {p1}, Lr4/i11;->i()Lr4/qp1;

    move-result-object p3

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1, v4}, Lr4/qp1;->i(Lr4/cs0;ZLr4/x50;)V

    invoke-virtual {p1}, Lr4/j31;->d()Lr4/b81;

    move-result-object p3

    new-instance v1, Lr4/n22;

    invoke-direct {v1, v0}, Lr4/n22;-><init>(Lr4/cs0;)V

    sget-object v2, Lr4/qm0;->f:Lr4/i83;

    invoke-virtual {p3, v1, v2}, Lr4/yc1;->K0(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p1}, Lr4/i11;->i()Lr4/qp1;

    iget-object p3, p2, Lr4/no2;->s:Lr4/uo2;

    iget-object v1, p3, Lr4/uo2;->b:Ljava/lang/String;

    iget-object p3, p3, Lr4/uo2;->a:Ljava/lang/String;

    invoke-static {v0, v1, p3}, Lr4/qp1;->j(Lr4/cs0;Ljava/lang/String;Ljava/lang/String;)Lr4/h83;

    move-result-object p3

    iget-boolean p2, p2, Lr4/no2;->I:Z

    if-eqz p2, :cond_1

    invoke-static {v0}, Lr4/p22;->a(Lr4/cs0;)Ljava/lang/Runnable;

    move-result-object p2

    iget-object v1, p0, Lr4/s22;->e:Ljava/util/concurrent/Executor;

    invoke-interface {p3, p2, v1}, Lr4/h83;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_1
    new-instance p2, Lr4/q22;

    invoke-direct {p2, p0, v0}, Lr4/q22;-><init>(Lr4/s22;Lr4/cs0;)V

    iget-object v0, p0, Lr4/s22;->e:Ljava/util/concurrent/Executor;

    invoke-interface {p3, p2, v0}, Lr4/h83;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    new-instance p2, Lr4/r22;

    invoke-direct {p2, p1}, Lr4/r22;-><init>(Lr4/i11;)V

    invoke-static {p3, p2, v2}, Lr4/y73;->j(Lr4/h83;Lr4/p03;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method
