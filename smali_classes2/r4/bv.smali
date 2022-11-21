.class public final Lr4/bv;
.super Lr4/jw;
.source "SourceFile"


# instance fields
.field public final a:Lt2/l;


# direct methods
.method public constructor <init>(Lt2/l;)V
    .locals 0

    invoke-direct {p0}, Lr4/jw;-><init>()V

    iput-object p1, p0, Lr4/bv;->a:Lt2/l;

    return-void
.end method


# virtual methods
.method public final I4(Lr4/lt;)V
    .locals 1

    iget-object v0, p0, Lr4/bv;->a:Lt2/l;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lr4/lt;->X0()Lt2/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lt2/l;->onAdFailedToShowFullScreenContent(Lt2/a;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lr4/bv;->a:Lt2/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lt2/l;->onAdShowedFullScreenContent()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lr4/bv;->a:Lt2/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lt2/l;->onAdImpression()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lr4/bv;->a:Lt2/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lt2/l;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lr4/bv;->a:Lt2/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lt2/l;->onAdDismissedFullScreenContent()V

    :cond_0
    return-void
.end method
