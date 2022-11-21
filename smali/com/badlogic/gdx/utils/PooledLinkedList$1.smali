.class Lcom/badlogic/gdx/utils/PooledLinkedList$1;
.super Lcom/badlogic/gdx/utils/Pool;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/utils/PooledLinkedList;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Pool<",
        "Lcom/badlogic/gdx/utils/PooledLinkedList$Item<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/badlogic/gdx/utils/PooledLinkedList;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/PooledLinkedList;II)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/utils/PooledLinkedList$1;->b:Lcom/badlogic/gdx/utils/PooledLinkedList;

    invoke-direct {p0, p2, p3}, Lcom/badlogic/gdx/utils/Pool;-><init>(II)V

    return-void
.end method


# virtual methods
.method public c()Lcom/badlogic/gdx/utils/PooledLinkedList$Item;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/PooledLinkedList$Item<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/PooledLinkedList$1;->c()Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    move-result-object v0

    return-object v0
.end method
