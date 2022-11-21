.class public Lcom/badlogic/gdx/utils/SnapshotArray;
.super Lcom/badlogic/gdx/utils/Array;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/Array<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public d:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public k:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public p:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/Array;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZILjava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Z[Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[TT;II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/utils/Array;-><init>(Z[Ljava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs with([Ljava/lang/Object;)Lcom/badlogic/gdx/utils/SnapshotArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lcom/badlogic/gdx/utils/SnapshotArray<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/SnapshotArray;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public begin()[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->e()V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->d:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->p:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->p:I

    return-object v0
.end method

.method public clear()V
    .locals 0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->e()V

    invoke-super {p0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-void
.end method

.method public final e()V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->d:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->k:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    array-length v2, v0

    iget v3, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt v2, v3, :cond_1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->k:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->k:[Ljava/lang/Object;

    goto :goto_0

    :cond_1
    array-length v0, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->d(I)[Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public end()V
    .locals 5

    iget v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->p:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->p:I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->d:[Ljava/lang/Object;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    if-nez v0, :cond_1

    iput-object v2, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->k:[Ljava/lang/Object;

    array-length v0, v2

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->k:[Ljava/lang/Object;

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput-object v4, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->d:[Ljava/lang/Object;

    return-void
.end method

.method public insert(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->e()V

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->insert(ILjava/lang/Object;)V

    return-void
.end method

.method public insertRange(II)V
    .locals 0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->e()V

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->insertRange(II)V

    return-void
.end method

.method public pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->e()V

    invoke-super {p0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Lcom/badlogic/gdx/utils/Array;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "+TT;>;Z)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->e()V

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->removeAll(Lcom/badlogic/gdx/utils/Array;Z)Z

    move-result p1

    return p1
.end method

.method public removeIndex(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->e()V

    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public removeRange(II)V
    .locals 0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->e()V

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->removeRange(II)V

    return-void
.end method

.method public removeValue(Ljava/lang/Object;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->e()V

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    move-result p1

    return p1
.end method

.method public reverse()V
    .locals 0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->e()V

    invoke-super {p0}, Lcom/badlogic/gdx/utils/Array;->reverse()V

    return-void
.end method

.method public set(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->e()V

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->set(ILjava/lang/Object;)V

    return-void
.end method

.method public setSize(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->e()V

    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/Array;->setSize(I)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public shuffle()V
    .locals 0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->e()V

    invoke-super {p0}, Lcom/badlogic/gdx/utils/Array;->shuffle()V

    return-void
.end method

.method public sort()V
    .locals 0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->e()V

    invoke-super {p0}, Lcom/badlogic/gdx/utils/Array;->sort()V

    return-void
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->e()V

    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    return-void
.end method

.method public swap(II)V
    .locals 0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->e()V

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->swap(II)V

    return-void
.end method

.method public truncate(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->e()V

    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/Array;->truncate(I)V

    return-void
.end method
