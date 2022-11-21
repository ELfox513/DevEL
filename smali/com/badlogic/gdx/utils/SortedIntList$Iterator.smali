.class public Lcom/badlogic/gdx/utils/SortedIntList$Iterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/SortedIntList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Iterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/badlogic/gdx/utils/SortedIntList$Node<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/utils/SortedIntList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/SortedIntList$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field public b:Lcom/badlogic/gdx/utils/SortedIntList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/SortedIntList$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final synthetic d:Lcom/badlogic/gdx/utils/SortedIntList;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/SortedIntList;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/utils/SortedIntList$Iterator;->d:Lcom/badlogic/gdx/utils/SortedIntList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/SortedIntList$Iterator;->reset()Lcom/badlogic/gdx/utils/SortedIntList$Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/SortedIntList$Iterator;->a:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Lcom/badlogic/gdx/utils/SortedIntList$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/SortedIntList$Node<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/utils/SortedIntList$Iterator;->a:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/SortedIntList$Iterator;->b:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    iget-object v1, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->b:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    iput-object v1, p0, Lcom/badlogic/gdx/utils/SortedIntList$Iterator;->a:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/SortedIntList$Iterator;->next()Lcom/badlogic/gdx/utils/SortedIntList$Node;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/SortedIntList$Iterator;->b:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/utils/SortedIntList$Iterator;->d:Lcom/badlogic/gdx/utils/SortedIntList;

    iget-object v2, v1, Lcom/badlogic/gdx/utils/SortedIntList;->k:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/SortedIntList$Iterator;->a:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    iput-object v0, v1, Lcom/badlogic/gdx/utils/SortedIntList;->k:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->a:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/SortedIntList$Iterator;->a:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    iput-object v2, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->b:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    if-eqz v2, :cond_1

    iput-object v0, v2, Lcom/badlogic/gdx/utils/SortedIntList$Node;->a:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    :cond_1
    :goto_0
    iget v0, v1, Lcom/badlogic/gdx/utils/SortedIntList;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Lcom/badlogic/gdx/utils/SortedIntList;->d:I

    :cond_2
    return-void
.end method

.method public reset()Lcom/badlogic/gdx/utils/SortedIntList$Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/SortedIntList<",
            "TE;>.Iterator;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/utils/SortedIntList$Iterator;->d:Lcom/badlogic/gdx/utils/SortedIntList;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/SortedIntList;->k:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/SortedIntList$Iterator;->a:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/SortedIntList$Iterator;->b:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    return-object p0
.end method
