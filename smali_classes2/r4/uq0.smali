.class public final Lr4/uq0;
.super Lr4/qq0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lr4/po0;)V
    .locals 0

    invoke-direct {p0, p1}, Lr4/qq0;-><init>(Lr4/po0;)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Lr4/vl0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lr4/qq0;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/po0;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v1, v0, p0}, Lr4/po0;->D(Ljava/lang/String;Lr4/qq0;)V

    :cond_0
    const-string v1, "VideoStreamNoopCache is doing nothing."

    invoke-static {v1}, Lr4/cm0;->f(Ljava/lang/String;)V

    const-string v1, "noop"

    const-string v2, "Noop cache is a noop."

    invoke-virtual {p0, p1, v0, v1, v2}, Lr4/qq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final m()V
    .locals 0

    return-void
.end method
