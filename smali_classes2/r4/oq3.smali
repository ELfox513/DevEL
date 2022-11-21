.class public final Lr4/oq3;
.super Lr4/lm3;
.source "SourceFile"

# interfaces
.implements Lr4/bo3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/lm3<",
        "Lr4/qq3;",
        "Lr4/oq3;",
        ">;",
        "Lr4/bo3;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lr4/qq3;->D()Lr4/qq3;

    move-result-object v0

    invoke-direct {p0, v0}, Lr4/lm3;-><init>(Lr4/pm3;)V

    return-void
.end method

.method public synthetic constructor <init>(Lr4/zp3;)V
    .locals 0

    invoke-static {}, Lr4/qq3;->D()Lr4/qq3;

    move-result-object p1

    invoke-direct {p0, p1}, Lr4/lm3;-><init>(Lr4/pm3;)V

    return-void
.end method


# virtual methods
.method public final v(Ljava/lang/String;)Lr4/oq3;
    .locals 1

    iget-boolean p1, p0, Lr4/lm3;->d:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lr4/lm3;->j()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr4/lm3;->d:Z

    :cond_0
    iget-object p1, p0, Lr4/lm3;->b:Lr4/pm3;

    check-cast p1, Lr4/qq3;

    const-string v0, "image/png"

    invoke-static {p1, v0}, Lr4/qq3;->E(Lr4/qq3;Ljava/lang/String;)V

    return-object p0
.end method

.method public final x(Lr4/ll3;)Lr4/oq3;
    .locals 1

    iget-boolean v0, p0, Lr4/lm3;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr4/lm3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/lm3;->d:Z

    :cond_0
    iget-object v0, p0, Lr4/lm3;->b:Lr4/pm3;

    check-cast v0, Lr4/qq3;

    invoke-static {v0, p1}, Lr4/qq3;->I(Lr4/qq3;Lr4/ll3;)V

    return-object p0
.end method

.method public final z(I)Lr4/oq3;
    .locals 1

    iget-boolean p1, p0, Lr4/lm3;->d:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lr4/lm3;->j()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr4/lm3;->d:Z

    :cond_0
    iget-object p1, p0, Lr4/lm3;->b:Lr4/pm3;

    check-cast p1, Lr4/qq3;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lr4/qq3;->J(Lr4/qq3;I)V

    return-object p0
.end method
