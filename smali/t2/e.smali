.class public Lt2/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt2/e$a;
    }
.end annotation


# instance fields
.field public final a:Lr4/xt;

.field public final b:Landroid/content/Context;

.field public final c:Lr4/ov;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/ov;Lr4/xt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt2/e;->b:Landroid/content/Context;

    iput-object p2, p0, Lt2/e;->c:Lr4/ov;

    iput-object p3, p0, Lt2/e;->a:Lr4/xt;

    return-void
.end method


# virtual methods
.method public a(Lt2/f;)V
    .locals 0
    .param p1    # Lt2/f;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lt2/f;->a()Lr4/sx;

    move-result-object p1

    invoke-virtual {p0, p1}, Lt2/e;->b(Lr4/sx;)V

    return-void
.end method

.method public final b(Lr4/sx;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lt2/e;->c:Lr4/ov;

    iget-object v1, p0, Lt2/e;->a:Lr4/xt;

    iget-object v2, p0, Lt2/e;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lr4/xt;->a(Landroid/content/Context;Lr4/sx;)Lr4/tt;

    move-result-object p1

    invoke-interface {v0, p1}, Lr4/ov;->U6(Lr4/tt;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to load ad."

    invoke-static {v0, p1}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
