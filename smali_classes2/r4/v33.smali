.class public final Lr4/v33;
.super Lr4/j33;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lr4/j33<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final transient b:Lr4/w33;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/w33<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/w33;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/w33<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lr4/j33;-><init>()V

    iput-object p1, p0, Lr4/v33;->b:Lr4/w33;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lr4/v33;->b:Lr4/w33;

    invoke-virtual {v0, p1}, Lr4/k23;->f(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final d()Lr4/r53;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/r53<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lr4/v33;->b:Lr4/w33;

    new-instance v1, Lr4/t33;

    invoke-direct {v1, v0}, Lr4/t33;-><init>(Lr4/w33;)V

    return-object v1
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lr4/v33;->b:Lr4/w33;

    new-instance v1, Lr4/t33;

    invoke-direct {v1, v0}, Lr4/t33;-><init>(Lr4/w33;)V

    return-object v1
.end method

.method public final m([Ljava/lang/Object;I)I
    .locals 2

    iget-object v0, p0, Lr4/v33;->b:Lr4/w33;

    iget-object v0, v0, Lr4/w33;->k:Lr4/s33;

    invoke-virtual {v0}, Lr4/s33;->f()Lr4/j33;

    move-result-object v0

    check-cast v0, Lr4/o33;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr4/o33;->B(I)Lr4/s53;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/j33;

    invoke-virtual {v1, p1, p2}, Lr4/j33;->m([Ljava/lang/Object;I)I

    move-result p2

    goto :goto_0

    :cond_0
    return p2
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lr4/v33;->b:Lr4/w33;

    iget v0, v0, Lr4/w33;->p:I

    return v0
.end method
