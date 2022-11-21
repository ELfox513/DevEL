.class public final Lr4/tx;
.super Lr4/zu;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lr4/ux;


# direct methods
.method public constructor <init>(Lr4/ux;)V
    .locals 0

    iput-object p1, p0, Lr4/tx;->d:Lr4/ux;

    invoke-direct {p0}, Lr4/zu;-><init>()V

    return-void
.end method


# virtual methods
.method public final o(Lt2/m;)V
    .locals 2

    iget-object v0, p0, Lr4/tx;->d:Lr4/ux;

    invoke-static {v0}, Lr4/ux;->c(Lr4/ux;)Lt2/v;

    move-result-object v0

    iget-object v1, p0, Lr4/tx;->d:Lr4/ux;

    invoke-virtual {v1}, Lr4/ux;->x()Lr4/lx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lt2/v;->b(Lr4/lx;)V

    invoke-super {p0, p1}, Lr4/zu;->o(Lt2/m;)V

    return-void
.end method

.method public final q()V
    .locals 2

    iget-object v0, p0, Lr4/tx;->d:Lr4/ux;

    invoke-static {v0}, Lr4/ux;->c(Lr4/ux;)Lt2/v;

    move-result-object v0

    iget-object v1, p0, Lr4/tx;->d:Lr4/ux;

    invoke-virtual {v1}, Lr4/ux;->x()Lr4/lx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lt2/v;->b(Lr4/lx;)V

    invoke-super {p0}, Lr4/zu;->q()V

    return-void
.end method
