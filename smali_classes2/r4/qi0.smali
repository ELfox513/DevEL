.class public final Lr4/qi0;
.super Lr4/ai0;
.source "SourceFile"


# instance fields
.field public a:Lt2/l;

.field public b:Lt2/r;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lr4/ai0;-><init>()V

    return-void
.end method


# virtual methods
.method public final G2(Lr4/vh0;)V
    .locals 2

    iget-object v0, p0, Lr4/qi0;->b:Lt2/r;

    if-eqz v0, :cond_0

    new-instance v1, Lr4/ji0;

    invoke-direct {v1, p1}, Lr4/ji0;-><init>(Lr4/vh0;)V

    invoke-interface {v0, v1}, Lt2/r;->a(Lj3/a;)V

    :cond_0
    return-void
.end method

.method public final J3(Lr4/lt;)V
    .locals 1

    iget-object v0, p0, Lr4/qi0;->a:Lt2/l;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lr4/lt;->X0()Lt2/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lt2/l;->onAdFailedToShowFullScreenContent(Lt2/a;)V

    :cond_0
    return-void
.end method

.method public final Y(I)V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lr4/qi0;->a:Lt2/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lt2/l;->onAdShowedFullScreenContent()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lr4/qi0;->a:Lt2/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lt2/l;->onAdDismissedFullScreenContent()V

    :cond_0
    return-void
.end method

.method public final f7(Lt2/l;)V
    .locals 0

    iput-object p1, p0, Lr4/qi0;->a:Lt2/l;

    return-void
.end method

.method public final g7(Lt2/r;)V
    .locals 0

    iput-object p1, p0, Lr4/qi0;->b:Lt2/r;

    return-void
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lr4/qi0;->a:Lt2/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lt2/l;->onAdImpression()V

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lr4/qi0;->a:Lt2/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lt2/l;->onAdClicked()V

    :cond_0
    return-void
.end method
