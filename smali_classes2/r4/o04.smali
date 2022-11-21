.class public Lr4/o04;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/b04;


# instance fields
.field public final a:Lr4/b04;


# direct methods
.method public constructor <init>(Lr4/b04;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/o04;->a:Lr4/b04;

    return-void
.end method


# virtual methods
.method public final D(I)I
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final S(I)V
    .locals 2

    iget-object v0, p0, Lr4/o04;->a:Lr4/b04;

    check-cast v0, Lr4/vz3;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lr4/vz3;->n(IZ)Z

    return-void
.end method

.method public final T(I)V
    .locals 2

    iget-object v0, p0, Lr4/o04;->a:Lr4/b04;

    check-cast v0, Lr4/vz3;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lr4/vz3;->o(IZ)Z

    return-void
.end method

.method public final a([BII)V
    .locals 2

    iget-object v0, p0, Lr4/o04;->a:Lr4/b04;

    check-cast v0, Lr4/vz3;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lr4/vz3;->f([BIIZ)Z

    return-void
.end method

.method public final b([BII)I
    .locals 1

    iget-object v0, p0, Lr4/o04;->a:Lr4/b04;

    invoke-interface {v0, p1, p2, p3}, Lr4/b04;->b([BII)I

    move-result p1

    return p1
.end method

.method public final e([BII)V
    .locals 2

    iget-object v0, p0, Lr4/o04;->a:Lr4/b04;

    check-cast v0, Lr4/vz3;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lr4/vz3;->i([BIIZ)Z

    return-void
.end method

.method public final f([BIIZ)Z
    .locals 1

    iget-object p2, p0, Lr4/o04;->a:Lr4/b04;

    const/4 p3, 0x0

    const/16 p4, 0x8

    const/4 v0, 0x1

    invoke-interface {p2, p1, p3, p4, v0}, Lr4/b04;->f([BIIZ)Z

    move-result p1

    return p1
.end method

.method public final i([BIIZ)Z
    .locals 1

    iget-object p2, p0, Lr4/o04;->a:Lr4/b04;

    const/4 p3, 0x0

    const/16 p4, 0x8

    const/4 v0, 0x1

    invoke-interface {p2, p1, p3, p4, v0}, Lr4/b04;->i([BIIZ)Z

    move-result p1

    return p1
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Lr4/o04;->a:Lr4/b04;

    invoke-interface {v0}, Lr4/b04;->k()V

    return-void
.end method

.method public l()J
    .locals 2

    iget-object v0, p0, Lr4/o04;->a:Lr4/b04;

    invoke-interface {v0}, Lr4/b04;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public final m([BII)I
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public p()J
    .locals 2

    iget-object v0, p0, Lr4/o04;->a:Lr4/b04;

    invoke-interface {v0}, Lr4/b04;->p()J

    move-result-wide v0

    return-wide v0
.end method

.method public q()J
    .locals 2

    iget-object v0, p0, Lr4/o04;->a:Lr4/b04;

    invoke-interface {v0}, Lr4/b04;->q()J

    move-result-wide v0

    return-wide v0
.end method
