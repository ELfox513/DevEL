.class public final Lr4/j22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/q12;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/q12<",
        "Lr4/p01;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/j01;

.field public final b:Landroid/content/Context;

.field public final c:Lr4/rp1;

.field public final d:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lr4/j01;Landroid/content/Context;Ljava/util/concurrent/Executor;Lr4/rp1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lr4/j22;->b:Landroid/content/Context;

    iput-object p1, p0, Lr4/j22;->a:Lr4/j01;

    iput-object p3, p0, Lr4/j22;->d:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lr4/j22;->c:Lr4/rp1;

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
            "Lr4/p01;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object v0

    new-instance v1, Lr4/g22;

    invoke-direct {v1, p0, p1, p2}, Lr4/g22;-><init>(Lr4/j22;Lr4/bp2;Lr4/no2;)V

    iget-object p1, p0, Lr4/j22;->d:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lr4/y73;->i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c(Lr4/bp2;Lr4/no2;Ljava/lang/Object;)Lr4/h83;
    .locals 11

    iget-object p3, p0, Lr4/j22;->b:Landroid/content/Context;

    iget-object v0, p2, Lr4/no2;->u:Ljava/util/List;

    invoke-static {p3, v0}, Lr4/lp2;->b(Landroid/content/Context;Ljava/util/List;)Lr4/yt;

    move-result-object p3

    iget-object v0, p0, Lr4/j22;->c:Lr4/rp1;

    iget-object v1, p1, Lr4/bp2;->b:Lr4/ap2;

    iget-object v1, v1, Lr4/ap2;->b:Lr4/so2;

    invoke-virtual {v0, p3, p2, v1}, Lr4/rp1;->b(Lr4/yt;Lr4/no2;Lr4/so2;)Lr4/cs0;

    move-result-object v0

    iget-object v1, p0, Lr4/j22;->a:Lr4/j01;

    new-instance v9, Lr4/x31;

    const/4 v10, 0x0

    invoke-direct {v9, p1, p2, v10}, Lr4/x31;-><init>(Lr4/bp2;Lr4/no2;Ljava/lang/String;)V

    new-instance p1, Lr4/d01;

    invoke-static {p3}, Lr4/lp2;->c(Lr4/yt;)Lr4/qo2;

    move-result-object v5

    iget v6, p2, Lr4/no2;->W:I

    iget-boolean v7, p2, Lr4/no2;->a0:Z

    iget-boolean v8, p2, Lr4/no2;->K:Z

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    move-object v2, p1

    move-object v4, v0

    invoke-direct/range {v2 .. v8}, Lr4/d01;-><init>(Landroid/view/View;Lr4/cs0;Lr4/qo2;IZZ)V

    invoke-virtual {v1, v9, p1}, Lr4/j01;->a(Lr4/x31;Lr4/d01;)Lr4/c01;

    move-result-object p1

    invoke-virtual {p1}, Lr4/c01;->i()Lr4/qp1;

    move-result-object p3

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1, v10}, Lr4/qp1;->i(Lr4/cs0;ZLr4/x50;)V

    invoke-virtual {p1}, Lr4/j31;->d()Lr4/b81;

    move-result-object p3

    new-instance v1, Lr4/h22;

    invoke-direct {v1, v0}, Lr4/h22;-><init>(Lr4/cs0;)V

    sget-object v2, Lr4/qm0;->f:Lr4/i83;

    invoke-virtual {p3, v1, v2}, Lr4/yc1;->K0(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p1}, Lr4/c01;->i()Lr4/qp1;

    iget-object p2, p2, Lr4/no2;->s:Lr4/uo2;

    iget-object p3, p2, Lr4/uo2;->b:Ljava/lang/String;

    iget-object p2, p2, Lr4/uo2;->a:Ljava/lang/String;

    invoke-static {v0, p3, p2}, Lr4/qp1;->j(Lr4/cs0;Ljava/lang/String;Ljava/lang/String;)Lr4/h83;

    move-result-object p2

    new-instance p3, Lr4/i22;

    invoke-direct {p3, p1}, Lr4/i22;-><init>(Lr4/c01;)V

    invoke-static {p2, p3, v2}, Lr4/y73;->j(Lr4/h83;Lr4/p03;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method
