.class public final Lr4/eh1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/y81;
.implements La3/q;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/cs0;

.field public final d:Lr4/no2;

.field public final k:Lr4/im0;

.field public final p:Lr4/qp;

.field public q:Lf4/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/cs0;Lr4/no2;Lr4/im0;Lr4/qp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/eh1;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/eh1;->b:Lr4/cs0;

    iput-object p3, p0, Lr4/eh1;->d:Lr4/no2;

    iput-object p4, p0, Lr4/eh1;->k:Lr4/im0;

    iput-object p5, p0, Lr4/eh1;->p:Lr4/qp;

    return-void
.end method


# virtual methods
.method public final A2()V
    .locals 0

    return-void
.end method

.method public final C6(I)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lr4/eh1;->q:Lf4/a;

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 12

    iget-object v0, p0, Lr4/eh1;->p:Lr4/qp;

    sget-object v1, Lr4/qp;->t:Lr4/qp;

    if-eq v0, v1, :cond_0

    sget-object v1, Lr4/qp;->p:Lr4/qp;

    if-eq v0, v1, :cond_0

    sget-object v1, Lr4/qp;->w:Lr4/qp;

    if-ne v0, v1, :cond_3

    :cond_0
    iget-object v0, p0, Lr4/eh1;->d:Lr4/no2;

    iget-boolean v0, v0, Lr4/no2;->P:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lr4/eh1;->b:Lr4/cs0;

    if-eqz v0, :cond_3

    invoke-static {}, Lz2/t;->s()Lr4/qe0;

    move-result-object v0

    iget-object v1, p0, Lr4/eh1;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lr4/qe0;->e0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lr4/eh1;->k:Lr4/im0;

    iget v1, v0, Lr4/im0;->b:I

    iget v0, v0, Lr4/im0;->d:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lr4/eh1;->d:Lr4/no2;

    iget-object v0, v0, Lr4/no2;->R:Lr4/kp2;

    invoke-virtual {v0}, Lr4/kp2;->a()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lr4/eh1;->d:Lr4/no2;

    iget-object v0, v0, Lr4/no2;->R:Lr4/kp2;

    invoke-virtual {v0}, Lr4/kp2;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lr4/re0;->k:Lr4/re0;

    sget-object v1, Lr4/se0;->d:Lr4/se0;

    move-object v10, v0

    move-object v9, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lr4/eh1;->d:Lr4/no2;

    iget v0, v0, Lr4/no2;->U:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    sget-object v0, Lr4/se0;->p:Lr4/se0;

    goto :goto_0

    :cond_2
    sget-object v0, Lr4/se0;->b:Lr4/se0;

    :goto_0
    sget-object v1, Lr4/re0;->b:Lr4/re0;

    move-object v9, v0

    move-object v10, v1

    :goto_1
    invoke-static {}, Lz2/t;->s()Lr4/qe0;

    move-result-object v3

    iget-object v0, p0, Lr4/eh1;->b:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->J()Landroid/webkit/WebView;

    move-result-object v5

    iget-object v0, p0, Lr4/eh1;->d:Lr4/no2;

    iget-object v11, v0, Lr4/no2;->i0:Ljava/lang/String;

    const-string v6, ""

    const-string v7, "javascript"

    invoke-interface/range {v3 .. v11}, Lr4/qe0;->d(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lr4/se0;Lr4/re0;Ljava/lang/String;)Lf4/a;

    move-result-object v0

    iput-object v0, p0, Lr4/eh1;->q:Lf4/a;

    if-eqz v0, :cond_3

    invoke-static {}, Lz2/t;->s()Lr4/qe0;

    move-result-object v0

    iget-object v1, p0, Lr4/eh1;->q:Lf4/a;

    iget-object v2, p0, Lr4/eh1;->b:Lr4/cs0;

    check-cast v2, Landroid/view/View;

    invoke-interface {v0, v1, v2}, Lr4/qe0;->e(Lf4/a;Landroid/view/View;)V

    iget-object v0, p0, Lr4/eh1;->b:Lr4/cs0;

    iget-object v1, p0, Lr4/eh1;->q:Lf4/a;

    invoke-interface {v0, v1}, Lr4/cs0;->y0(Lf4/a;)V

    invoke-static {}, Lz2/t;->s()Lr4/qe0;

    move-result-object v0

    iget-object v1, p0, Lr4/eh1;->q:Lf4/a;

    invoke-interface {v0, v1}, Lr4/qe0;->zzf(Lf4/a;)V

    iget-object v0, p0, Lr4/eh1;->b:Lr4/cs0;

    new-instance v1, Lp/a;

    invoke-direct {v1}, Lp/a;-><init>()V

    const-string v2, "onSdkLoaded"

    invoke-interface {v0, v2, v1}, Lr4/e80;->H0(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final e3()V
    .locals 0

    return-void
.end method

.method public final j0()V
    .locals 3

    iget-object v0, p0, Lr4/eh1;->q:Lf4/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/eh1;->b:Lr4/cs0;

    if-eqz v0, :cond_0

    new-instance v1, Lp/a;

    invoke-direct {v1}, Lp/a;-><init>()V

    const-string v2, "onSdkImpression"

    invoke-interface {v0, v2, v1}, Lr4/e80;->H0(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
