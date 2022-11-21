.class Lcom/badlogic/gdx/ai/btree/utils/PooledBehaviorTreeLibrary$1;
.super Lcom/badlogic/gdx/utils/Pool;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/ai/btree/utils/PooledBehaviorTreeLibrary;->b(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Pool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Pool<",
        "Lcom/badlogic/gdx/ai/btree/BehaviorTree;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/badlogic/gdx/ai/btree/utils/PooledBehaviorTreeLibrary;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/ai/btree/utils/PooledBehaviorTreeLibrary;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/ai/btree/utils/PooledBehaviorTreeLibrary$1;->c:Lcom/badlogic/gdx/ai/btree/utils/PooledBehaviorTreeLibrary;

    iput-object p2, p0, Lcom/badlogic/gdx/ai/btree/utils/PooledBehaviorTreeLibrary$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Pool;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lcom/badlogic/gdx/ai/btree/BehaviorTree;
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/utils/PooledBehaviorTreeLibrary$1;->c:Lcom/badlogic/gdx/ai/btree/utils/PooledBehaviorTreeLibrary;

    iget-object v1, p0, Lcom/badlogic/gdx/ai/btree/utils/PooledBehaviorTreeLibrary$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/ai/btree/utils/PooledBehaviorTreeLibrary;->c(Ljava/lang/String;)Lcom/badlogic/gdx/ai/btree/BehaviorTree;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/btree/utils/PooledBehaviorTreeLibrary$1;->c()Lcom/badlogic/gdx/ai/btree/BehaviorTree;

    move-result-object v0

    return-object v0
.end method
