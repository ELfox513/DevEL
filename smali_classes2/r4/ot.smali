.class public final Lr4/ot;
.super Lr4/gv;
.source "SourceFile"


# instance fields
.field public final a:Lt2/c;


# direct methods
.method public constructor <init>(Lt2/c;)V
    .locals 0

    invoke-direct {p0}, Lr4/gv;-><init>()V

    iput-object p1, p0, Lr4/ot;->a:Lt2/c;

    return-void
.end method


# virtual methods
.method public final D(I)V
    .locals 0

    return-void
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lr4/ot;->a:Lt2/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lt2/c;->j()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lr4/ot;->a:Lt2/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lt2/c;->q()V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lr4/ot;->a:Lt2/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lt2/c;->F0()V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lr4/ot;->a:Lt2/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lt2/c;->s()V

    :cond_0
    return-void
.end method

.method public final g0(Lr4/lt;)V
    .locals 1

    iget-object v0, p0, Lr4/ot;->a:Lt2/c;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lr4/lt;->Y0()Lt2/m;

    move-result-object p1

    invoke-virtual {v0, p1}, Lt2/c;->o(Lt2/m;)V

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lr4/ot;->a:Lt2/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lt2/c;->p()V

    :cond_0
    return-void
.end method
