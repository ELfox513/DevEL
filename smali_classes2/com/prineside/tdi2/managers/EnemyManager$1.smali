.class Lcom/prineside/tdi2/managers/EnemyManager$1;
.super Lcom/badlogic/gdx/utils/Pool;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/EnemyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Pool<",
        "[",
        "Lcom/badlogic/gdx/utils/DelayedRemovalArray;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/prineside/tdi2/managers/EnemyManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/EnemyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/EnemyManager$1;->b:Lcom/prineside/tdi2/managers/EnemyManager;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Pool;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/EnemyManager$1;->d([Lcom/badlogic/gdx/utils/DelayedRemovalArray;)V

    return-void
.end method

.method public c()[Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->values:[Lcom/prineside/tdi2/enums/BuffType;

    array-length v0, v0

    new-array v0, v0, [Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/prineside/tdi2/enums/BuffType;->values:[Lcom/prineside/tdi2/enums/BuffType;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    new-instance v3, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    sget-object v4, Lcom/prineside/tdi2/enums/BuffType;->relevantClasses:[Ljava/lang/Class;

    aget-object v4, v4, v2

    invoke-direct {v3, v1, v1, v4}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZILjava/lang/Class;)V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public d([Lcom/badlogic/gdx/utils/DelayedRemovalArray;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/prineside/tdi2/enums/BuffType;->values:[Lcom/prineside/tdi2/enums/BuffType;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    aget-object v2, p1, v1

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    iget v4, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v4, :cond_0

    iget-object v4, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    aget-object v4, v4, v3

    check-cast v4, Lcom/prineside/tdi2/Buff;

    invoke-virtual {v4}, Lcom/prineside/tdi2/Buff;->free()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/EnemyManager$1;->c()[Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    return-object v0
.end method
