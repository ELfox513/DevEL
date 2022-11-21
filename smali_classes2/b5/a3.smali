.class public final Lb5/a3;
.super Lb5/u8;
.source "SourceFile"

# interfaces
.implements Lb5/fa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb5/u8<",
        "Lb5/b3;",
        "Lb5/a3;",
        ">;",
        "Lb5/fa;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lb5/b3;->v()Lb5/b3;

    move-result-object v0

    invoke-direct {p0, v0}, Lb5/u8;-><init>(Lb5/x8;)V

    return-void
.end method

.method public synthetic constructor <init>(Lb5/z2;)V
    .locals 0

    invoke-static {}, Lb5/b3;->v()Lb5/b3;

    move-result-object p1

    invoke-direct {p0, p1}, Lb5/u8;-><init>(Lb5/x8;)V

    return-void
.end method


# virtual methods
.method public final A(I)Lb5/m3;
    .locals 1

    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/b3;

    invoke-virtual {v0, p1}, Lb5/b3;->x(I)Lb5/m3;

    move-result-object p1

    return-object p1
.end method

.method public final t()I
    .locals 1

    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/b3;

    invoke-virtual {v0}, Lb5/b3;->t()I

    move-result v0

    return v0
.end method

.method public final u()I
    .locals 1

    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/b3;

    invoke-virtual {v0}, Lb5/b3;->u()I

    move-result v0

    return v0
.end method

.method public final v(ILb5/c3;)Lb5/a3;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/b3;

    invoke-virtual {p2}, Lb5/u8;->i()Lb5/x8;

    move-result-object p2

    check-cast p2, Lb5/d3;

    invoke-static {v0, p1, p2}, Lb5/b3;->C(Lb5/b3;ILb5/d3;)V

    return-object p0
.end method

.method public final x(ILb5/l3;)Lb5/a3;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/b3;

    invoke-virtual {p2}, Lb5/u8;->i()Lb5/x8;

    move-result-object p2

    check-cast p2, Lb5/m3;

    invoke-static {v0, p1, p2}, Lb5/b3;->B(Lb5/b3;ILb5/m3;)V

    return-object p0
.end method

.method public final z(I)Lb5/d3;
    .locals 1

    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/b3;

    invoke-virtual {v0, p1}, Lb5/b3;->w(I)Lb5/d3;

    move-result-object p1

    return-object p1
.end method
