.class public final synthetic Lr4/yo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/bp;

.field public final b:Lr4/so;

.field public final d:Lr4/to;

.field public final k:Lr4/vm0;


# direct methods
.method public constructor <init>(Lr4/bp;Lr4/so;Lr4/to;Lr4/vm0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/yo;->a:Lr4/bp;

    iput-object p2, p0, Lr4/yo;->b:Lr4/so;

    iput-object p3, p0, Lr4/yo;->d:Lr4/to;

    iput-object p4, p0, Lr4/yo;->k:Lr4/vm0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lr4/yo;->a:Lr4/bp;

    iget-object v1, p0, Lr4/yo;->b:Lr4/so;

    iget-object v2, p0, Lr4/yo;->d:Lr4/to;

    iget-object v3, p0, Lr4/yo;->k:Lr4/vm0;

    :try_start_0
    invoke-virtual {v1}, Lr4/so;->i0()Lr4/vo;

    move-result-object v4

    invoke-virtual {v1}, Lr4/so;->h0()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v4, v2}, Lr4/vo;->A2(Lr4/to;)Lr4/qo;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v2}, Lr4/vo;->b2(Lr4/to;)Lr4/qo;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Lr4/qo;->zza()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No entry contents."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lr4/vm0;->f(Ljava/lang/Throwable;)Z

    iget-object v1, v0, Lr4/bp;->d:Lr4/dp;

    invoke-static {v1}, Lr4/dp;->f(Lr4/dp;)V

    return-void

    :cond_1
    new-instance v4, Lr4/ap;

    invoke-virtual {v1}, Lr4/qo;->X0()Ljava/io/InputStream;

    move-result-object v2

    const/4 v5, 0x1

    invoke-direct {v4, v0, v2, v5}, Lr4/ap;-><init>(Lr4/bp;Ljava/io/InputStream;I)V

    invoke-virtual {v4}, Ljava/io/PushbackInputStream;->read()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    invoke-virtual {v4, v2}, Ljava/io/PushbackInputStream;->unread(I)V

    invoke-virtual {v1}, Lr4/qo;->e()Z

    move-result v5

    invoke-virtual {v1}, Lr4/qo;->g()Z

    move-result v6

    invoke-virtual {v1}, Lr4/qo;->Z0()J

    move-result-wide v7

    invoke-virtual {v1}, Lr4/qo;->c()Z

    move-result v9

    invoke-static/range {v4 .. v9}, Lr4/fp;->a(Ljava/io/InputStream;ZZJZ)Lr4/fp;

    move-result-object v1

    invoke-virtual {v3, v1}, Lr4/vm0;->e(Ljava/lang/Object;)Z

    return-void

    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to read from cache."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_1
    const-string v2, "Unable to obtain a cache service instance."

    invoke-static {v2, v1}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v1}, Lr4/vm0;->f(Ljava/lang/Throwable;)Z

    iget-object v0, v0, Lr4/bp;->d:Lr4/dp;

    invoke-static {v0}, Lr4/dp;->f(Lr4/dp;)V

    return-void
.end method
