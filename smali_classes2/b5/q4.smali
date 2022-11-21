.class public final Lb5/q4;
.super Lb5/u8;
.source "SourceFile"

# interfaces
.implements Lb5/fa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb5/u8<",
        "Lb5/r4;",
        "Lb5/q4;",
        ">;",
        "Lb5/fa;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lb5/r4;->t()Lb5/r4;

    move-result-object v0

    invoke-direct {p0, v0}, Lb5/u8;-><init>(Lb5/x8;)V

    return-void
.end method

.method public synthetic constructor <init>(Lb5/a4;)V
    .locals 0

    invoke-static {}, Lb5/r4;->t()Lb5/r4;

    move-result-object p1

    invoke-direct {p0, p1}, Lb5/u8;-><init>(Lb5/x8;)V

    return-void
.end method


# virtual methods
.method public final t(Lb5/s4;)Lb5/q4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/r4;

    invoke-virtual {p1}, Lb5/u8;->i()Lb5/x8;

    move-result-object p1

    check-cast p1, Lb5/t4;

    invoke-static {v0, p1}, Lb5/r4;->w(Lb5/r4;Lb5/t4;)V

    return-object p0
.end method

.method public final u(I)Lb5/t4;
    .locals 1

    iget-object p1, p0, Lb5/u8;->b:Lb5/x8;

    check-cast p1, Lb5/r4;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lb5/r4;->u(I)Lb5/t4;

    move-result-object p1

    return-object p1
.end method
