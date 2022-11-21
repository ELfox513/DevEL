.class public final Lr4/fr;
.super Lr4/lm3;
.source "SourceFile"

# interfaces
.implements Lr4/bo3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/lm3<",
        "Lr4/nr;",
        "Lr4/fr;",
        ">;",
        "Lr4/bo3;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lr4/nr;->J()Lr4/nr;

    move-result-object v0

    invoke-direct {p0, v0}, Lr4/lm3;-><init>(Lr4/pm3;)V

    return-void
.end method

.method public synthetic constructor <init>(Lr4/np;)V
    .locals 0

    invoke-static {}, Lr4/nr;->J()Lr4/nr;

    move-result-object p1

    invoke-direct {p0, p1}, Lr4/lm3;-><init>(Lr4/pm3;)V

    return-void
.end method


# virtual methods
.method public final v(I)Lr4/fr;
    .locals 1

    iget-boolean v0, p0, Lr4/lm3;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr4/lm3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/lm3;->d:Z

    :cond_0
    iget-object v0, p0, Lr4/lm3;->b:Lr4/pm3;

    check-cast v0, Lr4/nr;

    invoke-static {v0, p1}, Lr4/nr;->M(Lr4/nr;I)V

    return-object p0
.end method

.method public final x(I)Lr4/fr;
    .locals 1

    iget-boolean v0, p0, Lr4/lm3;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr4/lm3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/lm3;->d:Z

    :cond_0
    iget-object v0, p0, Lr4/lm3;->b:Lr4/pm3;

    check-cast v0, Lr4/nr;

    invoke-static {v0, p1}, Lr4/nr;->N(Lr4/nr;I)V

    return-object p0
.end method
