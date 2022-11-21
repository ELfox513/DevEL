.class public final Lr4/od0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld3/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld3/d<",
        "Ld3/q;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr4/bd0;

.field public final synthetic b:Lr4/lb0;

.field public final synthetic c:Lr4/pd0;


# direct methods
.method public constructor <init>(Lr4/pd0;Lr4/bd0;Lr4/lb0;)V
    .locals 0

    iput-object p1, p0, Lr4/od0;->c:Lr4/pd0;

    iput-object p2, p0, Lr4/od0;->a:Lr4/bd0;

    iput-object p3, p0, Lr4/od0;->b:Lr4/lb0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lt2/a;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lr4/od0;->a:Lr4/bd0;

    invoke-virtual {p1}, Lt2/a;->d()Lr4/lt;

    move-result-object p1

    invoke-interface {v0, p1}, Lr4/bd0;->F(Lr4/lt;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
