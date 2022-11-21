.class public final Lr4/x21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/y81;
.implements Lr4/d81;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/cs0;

.field public final d:Lr4/no2;

.field public final k:Lr4/im0;

.field public p:Lf4/a;

.field public q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/cs0;Lr4/no2;Lr4/im0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/x21;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/x21;->b:Lr4/cs0;

    iput-object p3, p0, Lr4/x21;->d:Lr4/no2;

    iput-object p4, p0, Lr4/x21;->k:Lr4/im0;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/x21;->d:Lr4/no2;

    iget-boolean v0, v0, Lr4/no2;->P:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lr4/x21;->b:Lr4/cs0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-static {}, Lz2/t;->s()Lr4/qe0;

    move-result-object v0

    iget-object v1, p0, Lr4/x21;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lr4/qe0;->e0(Landroid/content/Context;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    iget-object v0, p0, Lr4/x21;->k:Lr4/im0;

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

    iget-object v0, p0, Lr4/x21;->d:Lr4/no2;

    iget-object v0, v0, Lr4/no2;->R:Lr4/kp2;

    invoke-virtual {v0}, Lr4/kp2;->a()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lr4/x21;->d:Lr4/no2;

    iget-object v0, v0, Lr4/no2;->R:Lr4/kp2;

    invoke-virtual {v0}, Lr4/kp2;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    sget-object v0, Lr4/re0;->k:Lr4/re0;

    sget-object v2, Lr4/se0;->d:Lr4/se0;

    :goto_0
    move-object v10, v0

    move-object v9, v2

    goto :goto_1

    :cond_3
    sget-object v0, Lr4/re0;->b:Lr4/re0;

    iget-object v2, p0, Lr4/x21;->d:Lr4/no2;

    iget v2, v2, Lr4/no2;->f:I

    if-ne v2, v1, :cond_4

    sget-object v2, Lr4/se0;->k:Lr4/se0;

    goto :goto_0

    :cond_4
    sget-object v2, Lr4/se0;->b:Lr4/se0;

    goto :goto_0

    :goto_1
    invoke-static {}, Lz2/t;->s()Lr4/qe0;

    move-result-object v3

    iget-object v0, p0, Lr4/x21;->b:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->J()Landroid/webkit/WebView;

    move-result-object v5

    const-string v6, ""

    const-string v7, "javascript"

    iget-object v0, p0, Lr4/x21;->d:Lr4/no2;

    iget-object v11, v0, Lr4/no2;->i0:Ljava/lang/String;

    invoke-interface/range {v3 .. v11}, Lr4/qe0;->d(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lr4/se0;Lr4/re0;Ljava/lang/String;)Lf4/a;

    move-result-object v0

    iput-object v0, p0, Lr4/x21;->p:Lf4/a;

    iget-object v2, p0, Lr4/x21;->b:Lr4/cs0;

    if-eqz v0, :cond_5

    invoke-static {}, Lz2/t;->s()Lr4/qe0;

    move-result-object v0

    iget-object v3, p0, Lr4/x21;->p:Lf4/a;

    check-cast v2, Landroid/view/View;

    invoke-interface {v0, v3, v2}, Lr4/qe0;->e(Lf4/a;Landroid/view/View;)V

    iget-object v0, p0, Lr4/x21;->b:Lr4/cs0;

    iget-object v2, p0, Lr4/x21;->p:Lf4/a;

    invoke-interface {v0, v2}, Lr4/cs0;->y0(Lf4/a;)V

    invoke-static {}, Lz2/t;->s()Lr4/qe0;

    move-result-object v0

    iget-object v2, p0, Lr4/x21;->p:Lf4/a;

    invoke-interface {v0, v2}, Lr4/qe0;->zzf(Lf4/a;)V

    iput-boolean v1, p0, Lr4/x21;->q:Z

    iget-object v0, p0, Lr4/x21;->b:Lr4/cs0;

    new-instance v1, Lp/a;

    invoke-direct {v1}, Lp/a;-><init>()V

    const-string v2, "onSdkLoaded"

    invoke-interface {v0, v2, v1}, Lr4/e80;->H0(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lr4/x21;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lr4/x21;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lr4/x21;->q:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lr4/x21;->a()V

    :cond_0
    iget-object v0, p0, Lr4/x21;->d:Lr4/no2;

    iget-boolean v0, v0, Lr4/no2;->P:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/x21;->p:Lf4/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/x21;->b:Lr4/cs0;

    if-eqz v0, :cond_1

    new-instance v1, Lp/a;

    invoke-direct {v1}, Lp/a;-><init>()V

    const-string v2, "onSdkImpression"

    invoke-interface {v0, v2, v1}, Lr4/e80;->H0(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
