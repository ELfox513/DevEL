.class public final Lb5/v1;
.super Lb5/n2;
.source "SourceFile"


# instance fields
.field public final synthetic p:Ljava/lang/String;

.field public final synthetic q:Ljava/lang/String;

.field public final synthetic r:Landroid/content/Context;

.field public final synthetic s:Landroid/os/Bundle;

.field public final synthetic t:Lb5/y2;


# direct methods
.method public constructor <init>(Lb5/y2;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lb5/v1;->t:Lb5/y2;

    iput-object p2, p0, Lb5/v1;->p:Ljava/lang/String;

    iput-object p3, p0, Lb5/v1;->q:Ljava/lang/String;

    iput-object p4, p0, Lb5/v1;->r:Landroid/content/Context;

    iput-object p5, p0, Lb5/v1;->s:Landroid/os/Bundle;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lb5/n2;-><init>(Lb5/y2;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 14

    const-string v0, "com.google.android.gms.measurement.dynamite"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lb5/v1;->t:Lb5/y2;

    iget-object v4, p0, Lb5/v1;->p:Ljava/lang/String;

    iget-object v5, p0, Lb5/v1;->q:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lb5/y2;->i(Lb5/y2;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v4, p0, Lb5/v1;->q:Ljava/lang/String;

    iget-object v3, p0, Lb5/v1;->p:Ljava/lang/String;

    iget-object v5, p0, Lb5/v1;->t:Lb5/y2;

    invoke-static {v5}, Lb5/y2;->v(Lb5/y2;)Ljava/lang/String;

    move-result-object v5

    move-object v10, v3

    move-object v11, v4

    move-object v9, v5

    goto :goto_0

    :cond_0
    move-object v9, v4

    move-object v10, v9

    move-object v11, v10

    :goto_0
    iget-object v3, p0, Lb5/v1;->r:Landroid/content/Context;

    invoke-static {v3}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lb5/v1;->t:Lb5/y2;

    iget-object v4, p0, Lb5/v1;->r:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Lb5/y2;->t(Landroid/content/Context;Z)Lb5/f1;

    move-result-object v4

    invoke-static {v3, v4}, Lb5/y2;->D(Lb5/y2;Lb5/f1;)V

    iget-object v3, p0, Lb5/v1;->t:Lb5/y2;

    invoke-static {v3}, Lb5/y2;->s(Lb5/y2;)Lb5/f1;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v0, p0, Lb5/v1;->t:Lb5/y2;

    invoke-static {v0}, Lb5/y2;->v(Lb5/y2;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Failed to connect to measurement client."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v3, p0, Lb5/v1;->r:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lb5/v1;->r:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-ge v0, v3, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    new-instance v0, Lb5/o1;

    int-to-long v6, v4

    const-wide/32 v4, 0xa822

    iget-object v12, p0, Lb5/v1;->s:Landroid/os/Bundle;

    iget-object v3, p0, Lb5/v1;->r:Landroid/content/Context;

    invoke-static {v3}, Lg5/u4;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    move-object v3, v0

    invoke-direct/range {v3 .. v13}, Lb5/o1;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    iget-object v3, p0, Lb5/v1;->t:Lb5/y2;

    invoke-static {v3}, Lb5/y2;->s(Lb5/y2;)Lb5/f1;

    move-result-object v3

    invoke-static {v3}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb5/f1;

    iget-object v4, p0, Lb5/v1;->r:Landroid/content/Context;

    invoke-static {v4}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v4

    iget-wide v5, p0, Lb5/n2;->a:J

    invoke-interface {v3, v4, v0, v5, v6}, Lb5/f1;->initialize(Lf4/a;Lb5/o1;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v3, p0, Lb5/v1;->t:Lb5/y2;

    invoke-static {v3, v0, v2, v1}, Lb5/y2;->E(Lb5/y2;Ljava/lang/Exception;ZZ)V

    return-void
.end method
