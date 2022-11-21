.class Lcom/badlogic/gdx/utils/SortedIntList$NodePool;
.super Lcom/badlogic/gdx/utils/Pool;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/SortedIntList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NodePool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/Pool<",
        "Lcom/badlogic/gdx/utils/SortedIntList$Node<",
        "TE;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Pool;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lcom/badlogic/gdx/utils/SortedIntList$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/SortedIntList$Node<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/SortedIntList$Node;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/SortedIntList$NodePool;->c()Lcom/badlogic/gdx/utils/SortedIntList$Node;

    move-result-object v0

    return-object v0
.end method

.method public obtain(Lcom/badlogic/gdx/utils/SortedIntList$Node;Lcom/badlogic/gdx/utils/SortedIntList$Node;Ljava/lang/Object;I)Lcom/badlogic/gdx/utils/SortedIntList$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/SortedIntList$Node<",
            "TE;>;",
            "Lcom/badlogic/gdx/utils/SortedIntList$Node<",
            "TE;>;TE;I)",
            "Lcom/badlogic/gdx/utils/SortedIntList$Node<",
            "TE;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;

    iput-object p1, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->a:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    iput-object p2, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->b:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    iput-object p3, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->value:Ljava/lang/Object;

    iput p4, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->index:I

    return-object v0
.end method
