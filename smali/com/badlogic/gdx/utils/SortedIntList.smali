.class public Lcom/badlogic/gdx/utils/SortedIntList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/SortedIntList$NodePool;,
        Lcom/badlogic/gdx/utils/SortedIntList$Node;,
        Lcom/badlogic/gdx/utils/SortedIntList$Iterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/SortedIntList$Node<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/utils/SortedIntList$NodePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/SortedIntList$NodePool<",
            "TE;>;"
        }
    .end annotation
.end field

.field public transient b:Lcom/badlogic/gdx/utils/SortedIntList$Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/SortedIntList<",
            "TE;>.Iterator;"
        }
    .end annotation
.end field

.field public d:I

.field public k:Lcom/badlogic/gdx/utils/SortedIntList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/SortedIntList$Node<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/SortedIntList$NodePool;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/SortedIntList$NodePool;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->a:Lcom/badlogic/gdx/utils/SortedIntList$NodePool;

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->d:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->k:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/SortedIntList;->a:Lcom/badlogic/gdx/utils/SortedIntList$NodePool;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->k:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->b:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->k:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->d:I

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->k:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    if-eqz v0, :cond_1

    :goto_0
    iget-object v1, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->b:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    if-eqz v1, :cond_0

    iget v2, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->index:I

    if-ge v2, p1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->index:I

    if-ne v1, p1, :cond_1

    iget-object p1, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->value:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public insert(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->k:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    :goto_0
    iget-object v2, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->b:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    if-eqz v2, :cond_0

    iget v3, v2, Lcom/badlogic/gdx/utils/SortedIntList$Node;->index:I

    if-gt v3, p1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget v3, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->index:I

    if-le p1, v3, :cond_2

    iget-object v3, p0, Lcom/badlogic/gdx/utils/SortedIntList;->a:Lcom/badlogic/gdx/utils/SortedIntList$NodePool;

    invoke-virtual {v3, v0, v2, p2, p1}, Lcom/badlogic/gdx/utils/SortedIntList$NodePool;->obtain(Lcom/badlogic/gdx/utils/SortedIntList$Node;Lcom/badlogic/gdx/utils/SortedIntList$Node;Ljava/lang/Object;I)Lcom/badlogic/gdx/utils/SortedIntList$Node;

    move-result-object p1

    iput-object p1, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->b:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    iget-object p2, p1, Lcom/badlogic/gdx/utils/SortedIntList$Node;->b:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    if-eqz p2, :cond_1

    iput-object p1, p2, Lcom/badlogic/gdx/utils/SortedIntList$Node;->a:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    :cond_1
    iget p1, p0, Lcom/badlogic/gdx/utils/SortedIntList;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/SortedIntList;->d:I

    goto :goto_1

    :cond_2
    if-ge p1, v3, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->a:Lcom/badlogic/gdx/utils/SortedIntList$NodePool;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/SortedIntList;->k:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    invoke-virtual {v0, v1, v2, p2, p1}, Lcom/badlogic/gdx/utils/SortedIntList$NodePool;->obtain(Lcom/badlogic/gdx/utils/SortedIntList$Node;Lcom/badlogic/gdx/utils/SortedIntList$Node;Ljava/lang/Object;I)Lcom/badlogic/gdx/utils/SortedIntList$Node;

    move-result-object p1

    iget-object p2, p0, Lcom/badlogic/gdx/utils/SortedIntList;->k:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    iput-object p1, p2, Lcom/badlogic/gdx/utils/SortedIntList$Node;->a:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/SortedIntList;->k:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    iget p1, p0, Lcom/badlogic/gdx/utils/SortedIntList;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/SortedIntList;->d:I

    goto :goto_1

    :cond_3
    iput-object p2, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->value:Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->a:Lcom/badlogic/gdx/utils/SortedIntList$NodePool;

    invoke-virtual {v0, v1, v1, p2, p1}, Lcom/badlogic/gdx/utils/SortedIntList$NodePool;->obtain(Lcom/badlogic/gdx/utils/SortedIntList$Node;Lcom/badlogic/gdx/utils/SortedIntList$Node;Ljava/lang/Object;I)Lcom/badlogic/gdx/utils/SortedIntList$Node;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/utils/SortedIntList;->k:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    iget p1, p0, Lcom/badlogic/gdx/utils/SortedIntList;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/SortedIntList;->d:I

    :goto_1
    return-object v1
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/badlogic/gdx/utils/SortedIntList$Node<",
            "TE;>;>;"
        }
    .end annotation

    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/SortedIntList$Iterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/SortedIntList$Iterator;-><init>(Lcom/badlogic/gdx/utils/SortedIntList;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->b:Lcom/badlogic/gdx/utils/SortedIntList$Iterator;

    if-nez v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/utils/SortedIntList$Iterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/SortedIntList$Iterator;-><init>(Lcom/badlogic/gdx/utils/SortedIntList;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->b:Lcom/badlogic/gdx/utils/SortedIntList$Iterator;

    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SortedIntList$Iterator;->reset()Lcom/badlogic/gdx/utils/SortedIntList$Iterator;

    move-result-object v0

    return-object v0
.end method

.method public notEmpty()Z
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->d:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->d:I

    return v0
.end method
