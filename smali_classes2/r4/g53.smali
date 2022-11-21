.class public final Lr4/g53;
.super Lr4/y33;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lr4/y33<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final transient d:Lr4/s33;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/s33<",
            "TK;*>;"
        }
    .end annotation
.end field

.field public final transient k:Lr4/o33;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/o33<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/s33;Lr4/o33;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/s33<",
            "TK;*>;",
            "Lr4/o33<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lr4/y33;-><init>()V

    iput-object p1, p0, Lr4/g53;->d:Lr4/s33;

    iput-object p2, p0, Lr4/g53;->k:Lr4/o33;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lr4/g53;->d:Lr4/s33;

    invoke-virtual {v0, p1}, Lr4/s33;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d()Lr4/r53;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/r53<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lr4/g53;->k:Lr4/o33;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr4/o33;->B(I)Lr4/s53;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lr4/g53;->k:Lr4/o33;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr4/o33;->B(I)Lr4/s53;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lr4/o33;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/o33<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lr4/g53;->k:Lr4/o33;

    return-object v0
.end method

.method public final m([Ljava/lang/Object;I)I
    .locals 1

    iget-object v0, p0, Lr4/g53;->k:Lr4/o33;

    invoke-virtual {v0, p1, p2}, Lr4/j33;->m([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lr4/g53;->d:Lr4/s33;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
