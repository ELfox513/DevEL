.class public final Lr4/si0;
.super Lk3/a;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lr4/yh0;

.field public final c:Landroid/content/Context;

.field public final d:Lr4/qi0;

.field public e:Lt2/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lk3/a;-><init>()V

    iput-object p2, p0, Lr4/si0;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lr4/si0;->c:Landroid/content/Context;

    invoke-static {}, Lr4/yu;->b()Lr4/wu;

    move-result-object v0

    new-instance v1, Lr4/cb0;

    invoke-direct {v1}, Lr4/cb0;-><init>()V

    invoke-virtual {v0, p1, p2, v1}, Lr4/wu;->j(Landroid/content/Context;Ljava/lang/String;Lr4/fb0;)Lr4/yh0;

    move-result-object p1

    iput-object p1, p0, Lr4/si0;->b:Lr4/yh0;

    new-instance p1, Lr4/qi0;

    invoke-direct {p1}, Lr4/qi0;-><init>()V

    iput-object p1, p0, Lr4/si0;->d:Lr4/qi0;

    return-void
.end method


# virtual methods
.method public final b(Lt2/l;)V
    .locals 1

    iput-object p1, p0, Lr4/si0;->e:Lt2/l;

    iget-object v0, p0, Lr4/si0;->d:Lr4/qi0;

    invoke-virtual {v0, p1}, Lr4/qi0;->f7(Lt2/l;)V

    return-void
.end method

.method public final c(Landroid/app/Activity;Lt2/r;)V
    .locals 1

    iget-object v0, p0, Lr4/si0;->d:Lr4/qi0;

    invoke-virtual {v0, p2}, Lr4/qi0;->g7(Lt2/r;)V

    :try_start_0
    iget-object p2, p0, Lr4/si0;->b:Lr4/yh0;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lr4/si0;->d:Lr4/qi0;

    invoke-interface {p2, v0}, Lr4/yh0;->D5(Lr4/bi0;)V

    iget-object p2, p0, Lr4/si0;->b:Lr4/yh0;

    invoke-static {p1}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object p1

    invoke-interface {p2, p1}, Lr4/yh0;->b0(Lf4/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lr4/cm0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final d(Lr4/sx;Lk3/b;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lr4/si0;->b:Lr4/yh0;

    if-eqz v0, :cond_0

    sget-object v1, Lr4/xt;->a:Lr4/xt;

    iget-object v2, p0, Lr4/si0;->c:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lr4/xt;->a(Landroid/content/Context;Lr4/sx;)Lr4/tt;

    move-result-object p1

    new-instance v1, Lr4/ri0;

    invoke-direct {v1, p2, p0}, Lr4/ri0;-><init>(Lk3/b;Lr4/si0;)V

    invoke-interface {v0, p1, v1}, Lr4/yh0;->r3(Lr4/tt;Lr4/fi0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lr4/cm0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
