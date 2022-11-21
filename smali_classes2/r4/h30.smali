.class public final Lr4/h30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv2/f;


# instance fields
.field public final a:Lr4/g30;

.field public final b:Lv2/b;

.field public final c:Lt2/v;


# direct methods
.method public constructor <init>(Lr4/g30;)V
    .locals 4

    const-string v0, ""

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lt2/v;

    invoke-direct {v1}, Lt2/v;-><init>()V

    iput-object v1, p0, Lr4/h30;->c:Lt2/v;

    iput-object p1, p0, Lr4/h30;->a:Lr4/g30;

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1}, Lr4/g30;->l()Lf4/a;

    move-result-object p1

    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-static {v0, p1}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_1

    new-instance v2, Lv2/b;

    invoke-direct {v2, p1}, Lv2/b;-><init>(Landroid/content/Context;)V

    :try_start_1
    iget-object p1, p0, Lr4/h30;->a:Lr4/g30;

    invoke-static {v2}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v3

    invoke-interface {p1, v3}, Lr4/g30;->i0(Lf4/a;)Z

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    goto :goto_2

    :cond_0
    move-object v1, v2

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-static {v0, p1}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    iput-object v1, p0, Lr4/h30;->b:Lv2/b;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lr4/h30;->a:Lr4/g30;

    invoke-interface {v0}, Lr4/g30;->f()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Lr4/g30;
    .locals 1

    iget-object v0, p0, Lr4/h30;->a:Lr4/g30;

    return-object v0
.end method
