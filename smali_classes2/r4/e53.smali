.class public final Lr4/e53;
.super Lr4/y33;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lr4/y33<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final transient d:Lr4/s33;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/s33<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public final transient k:[Ljava/lang/Object;

.field public final transient p:I


# direct methods
.method public constructor <init>(Lr4/s33;[Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/s33<",
            "TK;TV;>;[",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    invoke-direct {p0}, Lr4/y33;-><init>()V

    iput-object p1, p0, Lr4/e53;->d:Lr4/s33;

    iput-object p2, p0, Lr4/e53;->k:[Ljava/lang/Object;

    iput p4, p0, Lr4/e53;->p:I

    return-void
.end method

.method public static synthetic A(Lr4/e53;)I
    .locals 0

    iget p0, p0, Lr4/e53;->p:I

    return p0
.end method

.method public static synthetic z(Lr4/e53;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lr4/e53;->k:[Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lr4/e53;->d:Lr4/s33;

    invoke-virtual {v2, v0}, Lr4/s33;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final d()Lr4/r53;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/r53<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lr4/j33;->k()Lr4/o33;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr4/o33;->B(I)Lr4/s53;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 2

    invoke-virtual {p0}, Lr4/j33;->k()Lr4/o33;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr4/o33;->B(I)Lr4/s53;

    move-result-object v0

    return-object v0
.end method

.method public final m([Ljava/lang/Object;I)I
    .locals 1

    invoke-virtual {p0}, Lr4/j33;->k()Lr4/o33;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lr4/j33;->m([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lr4/e53;->p:I

    return v0
.end method

.method public final v()Lr4/o33;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/o33<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lr4/d53;

    invoke-direct {v0, p0}, Lr4/d53;-><init>(Lr4/e53;)V

    return-object v0
.end method
