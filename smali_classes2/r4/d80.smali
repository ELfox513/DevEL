.class public final Lr4/d80;
.super Lu2/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Ljava/lang/Object;",
        ">",
        "Lu2/b;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/xt;

.field public final c:Lr4/vv;

.field public final d:Ljava/lang/String;

.field public final e:Lr4/cb0;

.field public f:Lt2/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lu2/b;-><init>()V

    new-instance v0, Lr4/cb0;

    invoke-direct {v0}, Lr4/cb0;-><init>()V

    iput-object v0, p0, Lr4/d80;->e:Lr4/cb0;

    iput-object p1, p0, Lr4/d80;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/d80;->d:Ljava/lang/String;

    sget-object v1, Lr4/xt;->a:Lr4/xt;

    iput-object v1, p0, Lr4/d80;->b:Lr4/xt;

    invoke-static {}, Lr4/yu;->b()Lr4/wu;

    move-result-object v1

    new-instance v2, Lr4/yt;

    invoke-direct {v2}, Lr4/yt;-><init>()V

    invoke-virtual {v1, p1, v2, p2, v0}, Lr4/wu;->h(Landroid/content/Context;Lr4/yt;Ljava/lang/String;Lr4/fb0;)Lr4/vv;

    move-result-object p1

    iput-object p1, p0, Lr4/d80;->c:Lr4/vv;

    return-void
.end method


# virtual methods
.method public final b(Lt2/l;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lr4/d80;->f:Lt2/l;

    iget-object v0, p0, Lr4/d80;->c:Lr4/vv;

    if-eqz v0, :cond_0

    new-instance v1, Lr4/bv;

    invoke-direct {v1, p1}, Lr4/bv;-><init>(Lt2/l;)V

    invoke-interface {v0, v1}, Lr4/vv;->s5(Lr4/kw;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lr4/cm0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lr4/d80;->c:Lr4/vv;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lr4/vv;->A0(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lr4/cm0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final d(Landroid/app/Activity;)V
    .locals 1

    if-nez p1, :cond_0

    const-string v0, "The activity for show is null, will proceed with show using the context provided when loading the ad."

    invoke-static {v0}, Lr4/cm0;->f(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lr4/d80;->c:Lr4/vv;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object p1

    invoke-interface {v0, p1}, Lr4/vv;->L1(Lf4/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lr4/cm0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final e(Lr4/sx;Lt2/d;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/sx;",
            "Lt2/d<",
            "TAdT;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lr4/d80;->c:Lr4/vv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/d80;->e:Lr4/cb0;

    invoke-virtual {p1}, Lr4/sx;->l()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/cb0;->g7(Ljava/util/Map;)V

    iget-object v0, p0, Lr4/d80;->c:Lr4/vv;

    iget-object v1, p0, Lr4/d80;->b:Lr4/xt;

    iget-object v2, p0, Lr4/d80;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lr4/xt;->a(Landroid/content/Context;Lr4/sx;)Lr4/tt;

    move-result-object p1

    new-instance v1, Lr4/pt;

    invoke-direct {v1, p2, p0}, Lr4/pt;-><init>(Lt2/d;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lr4/vv;->Q5(Lr4/tt;Lr4/lv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lr4/cm0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lt2/m;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, "Internal Error."

    const-string v4, "com.google.android.gms.ads"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lt2/m;-><init>(ILjava/lang/String;Ljava/lang/String;Lt2/a;Lt2/u;)V

    invoke-virtual {p2, p1}, Lt2/d;->onAdFailedToLoad(Lt2/m;)V

    return-void
.end method
