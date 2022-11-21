.class public final Lb5/t3;
.super Lb5/u8;
.source "SourceFile"

# interfaces
.implements Lb5/fa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb5/u8<",
        "Lb5/v3;",
        "Lb5/t3;",
        ">;",
        "Lb5/fa;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lb5/v3;->t()Lb5/v3;

    move-result-object v0

    invoke-direct {p0, v0}, Lb5/u8;-><init>(Lb5/x8;)V

    return-void
.end method

.method public synthetic constructor <init>(Lb5/s3;)V
    .locals 0

    invoke-static {}, Lb5/v3;->t()Lb5/v3;

    move-result-object p1

    invoke-direct {p0, p1}, Lb5/u8;-><init>(Lb5/x8;)V

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/v3;

    invoke-virtual {v0}, Lb5/v3;->z()Z

    move-result v0

    return v0
.end method

.method public final t()I
    .locals 1

    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/v3;

    invoke-virtual {v0}, Lb5/v3;->s()I

    move-result v0

    return v0
.end method

.method public final u(Ljava/lang/String;)Lb5/t3;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/v3;

    invoke-static {v0, p1}, Lb5/v3;->v(Lb5/v3;Ljava/lang/String;)V

    return-object p0
.end method

.method public final v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/v3;

    invoke-virtual {v0}, Lb5/v3;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x()Z
    .locals 1

    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/v3;

    invoke-virtual {v0}, Lb5/v3;->w()Z

    move-result v0

    return v0
.end method

.method public final z()Z
    .locals 1

    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/v3;

    invoke-virtual {v0}, Lb5/v3;->x()Z

    move-result v0

    return v0
.end method
