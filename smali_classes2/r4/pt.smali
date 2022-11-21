.class public final Lr4/pt;
.super Lr4/kv;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Ljava/lang/Object;",
        ">",
        "Lr4/kv;"
    }
.end annotation


# instance fields
.field public final a:Lt2/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt2/d<",
            "TAdT;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAdT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lt2/d;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt2/d<",
            "TAdT;>;TAdT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lr4/kv;-><init>()V

    iput-object p1, p0, Lr4/pt;->a:Lt2/d;

    iput-object p2, p0, Lr4/pt;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lr4/pt;->a:Lt2/d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lr4/pt;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lt2/d;->onAdLoaded(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final u2(Lr4/lt;)V
    .locals 1

    iget-object v0, p0, Lr4/pt;->a:Lt2/d;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lr4/lt;->Y0()Lt2/m;

    move-result-object p1

    invoke-virtual {v0, p1}, Lt2/d;->onAdFailedToLoad(Lt2/m;)V

    :cond_0
    return-void
.end method
