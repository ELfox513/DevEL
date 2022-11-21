.class public final Lr4/j53;
.super Lr4/y33;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lr4/y33<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final s:[Ljava/lang/Object;

.field public static final t:Lr4/j53;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/j53<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final transient d:[Ljava/lang/Object;

.field public final transient k:I

.field public final transient p:[Ljava/lang/Object;

.field public final transient q:I

.field public final transient r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x0

    new-array v4, v0, [Ljava/lang/Object;

    sput-object v4, Lr4/j53;->s:[Ljava/lang/Object;

    new-instance v0, Lr4/j53;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, v4

    invoke-direct/range {v1 .. v6}, Lr4/j53;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    sput-object v0, Lr4/j53;->t:Lr4/j53;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Lr4/y33;-><init>()V

    iput-object p1, p0, Lr4/j53;->d:[Ljava/lang/Object;

    iput p2, p0, Lr4/j53;->k:I

    iput-object p3, p0, Lr4/j53;->p:[Ljava/lang/Object;

    iput p4, p0, Lr4/j53;->q:I

    iput p5, p0, Lr4/j53;->r:I

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lr4/j53;->p:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lr4/g33;->b(Ljava/lang/Object;)I

    move-result v2

    :goto_0
    iget v3, p0, Lr4/j53;->q:I

    and-int/2addr v2, v3

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public final d()Lr4/r53;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/r53<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lr4/j33;->k()Lr4/o33;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr4/o33;->B(I)Lr4/s53;

    move-result-object v0

    return-object v0
.end method

.method public final e()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/j53;->d:[Ljava/lang/Object;

    return-object v0
.end method

.method public final g()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lr4/j53;->k:I

    return v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lr4/j53;->r:I

    return v0
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
    .locals 3

    iget-object v0, p0, Lr4/j53;->d:[Ljava/lang/Object;

    iget v1, p0, Lr4/j53;->r:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lr4/j53;->r:I

    add-int/2addr p2, p1

    return p2
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lr4/j53;->r:I

    return v0
.end method

.method public final u()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final v()Lr4/o33;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/o33<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lr4/j53;->d:[Ljava/lang/Object;

    iget v1, p0, Lr4/j53;->r:I

    invoke-static {v0, v1}, Lr4/o33;->A([Ljava/lang/Object;I)Lr4/o33;

    move-result-object v0

    return-object v0
.end method
