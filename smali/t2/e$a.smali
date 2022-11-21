.class public Lt2/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/rv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lx3/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {}, Lr4/yu;->b()Lr4/wu;

    move-result-object v1

    new-instance v2, Lr4/cb0;

    invoke-direct {v2}, Lr4/cb0;-><init>()V

    invoke-virtual {v1, p1, p2, v2}, Lr4/wu;->i(Landroid/content/Context;Ljava/lang/String;Lr4/fb0;)Lr4/rv;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lt2/e$a;->a:Landroid/content/Context;

    iput-object p1, p0, Lt2/e$a;->b:Lr4/rv;

    return-void
.end method


# virtual methods
.method public a()Lt2/e;
    .locals 4
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    :try_start_0
    new-instance v0, Lt2/e;

    iget-object v1, p0, Lt2/e$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lt2/e$a;->b:Lr4/rv;

    invoke-interface {v2}, Lr4/rv;->c()Lr4/ov;

    move-result-object v2

    sget-object v3, Lr4/xt;->a:Lr4/xt;

    invoke-direct {v0, v1, v2, v3}, Lt2/e;-><init>(Landroid/content/Context;Lr4/ov;Lr4/xt;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to build AdLoader."

    invoke-static {v1, v0}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lr4/ky;

    invoke-direct {v0}, Lr4/ky;-><init>()V

    new-instance v1, Lt2/e;

    iget-object v2, p0, Lt2/e$a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lr4/ky;->g7()Lr4/ov;

    move-result-object v0

    sget-object v3, Lr4/xt;->a:Lr4/xt;

    invoke-direct {v1, v2, v0, v3}, Lt2/e;-><init>(Landroid/content/Context;Lr4/ov;Lr4/xt;)V

    return-object v1
.end method

.method public b(Ljava/lang/String;Lv2/f$b;Lv2/f$a;)Lt2/e$a;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Lv2/f$b;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lr4/q40;

    invoke-direct {v0, p2, p3}, Lr4/q40;-><init>(Lv2/f$b;Lv2/f$a;)V

    :try_start_0
    iget-object p2, p0, Lt2/e$a;->b:Lr4/rv;

    invoke-virtual {v0}, Lr4/q40;->c()Lr4/t30;

    move-result-object p3

    invoke-virtual {v0}, Lr4/q40;->d()Lr4/q30;

    move-result-object v0

    invoke-interface {p2, p1, p3, v0}, Lr4/rv;->T5(Ljava/lang/String;Lr4/t30;Lr4/q30;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Failed to add custom template ad listener"

    invoke-static {p2, p1}, Lr4/cm0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public c(Lv2/h$a;)Lt2/e$a;
    .locals 2
    .param p1    # Lv2/h$a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lt2/e$a;->b:Lr4/rv;

    new-instance v1, Lr4/r40;

    invoke-direct {v1, p1}, Lr4/r40;-><init>(Lv2/h$a;)V

    invoke-interface {v0, v1}, Lr4/rv;->H3(Lr4/a40;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to add google native ad listener"

    invoke-static {v0, p1}, Lr4/cm0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public d(Lt2/c;)Lt2/e$a;
    .locals 2
    .param p1    # Lt2/c;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lt2/e$a;->b:Lr4/rv;

    new-instance v1, Lr4/ot;

    invoke-direct {v1, p1}, Lr4/ot;-><init>(Lt2/c;)V

    invoke-interface {v0, v1}, Lr4/rv;->F1(Lr4/iv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to set AdListener."

    invoke-static {v0, p1}, Lr4/cm0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public e(Lg3/d;)Lt2/e$a;
    .locals 11
    .param p1    # Lg3/d;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lt2/e$a;->b:Lr4/rv;

    new-instance v10, Lr4/d20;

    invoke-virtual {p1}, Lg3/d;->e()Z

    move-result v3

    invoke-virtual {p1}, Lg3/d;->d()Z

    move-result v5

    invoke-virtual {p1}, Lg3/d;->a()I

    move-result v6

    invoke-virtual {p1}, Lg3/d;->c()Lt2/w;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lr4/xy;

    invoke-virtual {p1}, Lg3/d;->c()Lt2/w;

    move-result-object v2

    invoke-direct {v1, v2}, Lr4/xy;-><init>(Lt2/w;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v7, v1

    const/4 v2, 0x4

    const/4 v4, -0x1

    invoke-virtual {p1}, Lg3/d;->f()Z

    move-result v8

    invoke-virtual {p1}, Lg3/d;->b()I

    move-result v9

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lr4/d20;-><init>(IZIZILr4/xy;ZI)V

    invoke-interface {v0, v10}, Lr4/rv;->W2(Lr4/d20;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "Failed to specify native ad options"

    invoke-static {v0, p1}, Lr4/cm0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object p0
.end method

.method public f(Lv2/e;)Lt2/e$a;
    .locals 2
    .param p1    # Lv2/e;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lt2/e$a;->b:Lr4/rv;

    new-instance v1, Lr4/d20;

    invoke-direct {v1, p1}, Lr4/d20;-><init>(Lv2/e;)V

    invoke-interface {v0, v1}, Lr4/rv;->W2(Lr4/d20;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to specify native ad options"

    invoke-static {v0, p1}, Lr4/cm0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method
