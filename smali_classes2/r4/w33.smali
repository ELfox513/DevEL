.class public Lr4/w33;
.super Lr4/l23;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lr4/l23<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final transient k:Lr4/s33;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/s33<",
            "TK;+",
            "Lr4/j33<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field public final transient p:I


# direct methods
.method public constructor <init>(Lr4/s33;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/s33<",
            "TK;+",
            "Lr4/j33<",
            "TV;>;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Lr4/l23;-><init>()V

    iput-object p1, p0, Lr4/w33;->k:Lr4/s33;

    iput p2, p0, Lr4/w33;->p:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method public final b()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "unreachable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final bridge synthetic c()Ljava/util/Collection;
    .locals 1

    new-instance v0, Lr4/v33;

    invoke-direct {v0, p0}, Lr4/v33;-><init>(Lr4/w33;)V

    return-object v0
.end method

.method public final e()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final f(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Lr4/k23;->f(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final g()I
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final j()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    throw v0
.end method

.method public final bridge synthetic n()Ljava/util/Collection;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final bridge synthetic t()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lr4/w33;->k:Lr4/s33;

    return-object v0
.end method
