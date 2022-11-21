.class public final Lb5/w3;
.super Lb5/u8;
.source "SourceFile"

# interfaces
.implements Lb5/fa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb5/u8<",
        "Lb5/x3;",
        "Lb5/w3;",
        ">;",
        "Lb5/fa;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lb5/x3;->x()Lb5/x3;

    move-result-object v0

    invoke-direct {p0, v0}, Lb5/u8;-><init>(Lb5/x8;)V

    return-void
.end method

.method public synthetic constructor <init>(Lb5/s3;)V
    .locals 0

    invoke-static {}, Lb5/x3;->x()Lb5/x3;

    move-result-object p1

    invoke-direct {p0, p1}, Lb5/u8;-><init>(Lb5/x8;)V

    return-void
.end method


# virtual methods
.method public final t()I
    .locals 1

    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/x3;

    invoke-virtual {v0}, Lb5/x3;->t()I

    move-result v0

    return v0
.end method

.method public final u(I)Lb5/v3;
    .locals 1

    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/x3;

    invoke-virtual {v0, p1}, Lb5/x3;->v(I)Lb5/v3;

    move-result-object p1

    return-object p1
.end method

.method public final v()Lb5/w3;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/x3;

    invoke-static {v0}, Lb5/x3;->F(Lb5/x3;)V

    return-object p0
.end method

.method public final x(ILb5/t3;)Lb5/w3;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/x3;

    invoke-virtual {p2}, Lb5/u8;->i()Lb5/x8;

    move-result-object p2

    check-cast p2, Lb5/v3;

    invoke-static {v0, p1, p2}, Lb5/x3;->E(Lb5/x3;ILb5/v3;)V

    return-object p0
.end method

.method public final z()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb5/b3;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/x3;

    invoke-virtual {v0}, Lb5/x3;->B()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
