.class public final Lr4/po1;
.super Lt2/v$a;
.source "SourceFile"


# instance fields
.field public final a:Lr4/ej1;


# direct methods
.method public constructor <init>(Lr4/ej1;)V
    .locals 0

    invoke-direct {p0}, Lt2/v$a;-><init>()V

    iput-object p1, p0, Lr4/po1;->a:Lr4/ej1;

    return-void
.end method

.method public static f(Lr4/ej1;)Lr4/ox;
    .locals 1

    invoke-virtual {p0}, Lr4/ej1;->e0()Lr4/lx;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lr4/lx;->q()Lr4/ox;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lr4/po1;->a:Lr4/ej1;

    invoke-static {v0}, Lr4/po1;->f(Lr4/ej1;)Lr4/ox;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lr4/ox;->f()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Unable to call onVideoEnd()"

    invoke-static {v1, v0}, Lr4/cm0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lr4/po1;->a:Lr4/ej1;

    invoke-static {v0}, Lr4/po1;->f(Lr4/ej1;)Lr4/ox;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lr4/ox;->g()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Unable to call onVideoEnd()"

    invoke-static {v1, v0}, Lr4/cm0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lr4/po1;->a:Lr4/ej1;

    invoke-static {v0}, Lr4/po1;->f(Lr4/ej1;)Lr4/ox;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lr4/ox;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Unable to call onVideoEnd()"

    invoke-static {v1, v0}, Lr4/cm0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
