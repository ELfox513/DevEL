.class Lcom/prineside/tdi2/GameSystemProvider$1;
.super Lcom/prineside/tdi2/utils/PMath$ClassComparator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/GameSystemProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/utils/PMath$ClassComparator<",
        "Lcom/prineside/tdi2/GameSystemProvider;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/utils/PMath$ClassComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/GameSystemProvider;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/GameSystemProvider;",
            "Lcom/prineside/tdi2/GameSystemProvider;",
            "Lcom/badlogic/gdx/utils/StringBuilder;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/badlogic/gdx/utils/IntIntMap;",
            "Z)V"
        }
    .end annotation

    move-object v7, p3

    move-object/from16 v8, p4

    const/4 v9, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/prineside/tdi2/GameSystemProvider;->a(Lcom/prineside/tdi2/GameSystemProvider;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_1

    invoke-static {p1}, Lcom/prineside/tdi2/GameSystemProvider;->a(Lcom/prineside/tdi2/GameSystemProvider;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/GameSystem;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/prineside/tdi2/GameSystem;->affectsGameState()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_1
    invoke-static {p2}, Lcom/prineside/tdi2/GameSystemProvider;->a(Lcom/prineside/tdi2/GameSystemProvider;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v3, :cond_3

    invoke-static {p2}, Lcom/prineside/tdi2/GameSystemProvider;->a(Lcom/prineside/tdi2/GameSystemProvider;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/GameSystem;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/prineside/tdi2/GameSystem;->affectsGameState()Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    if-eq v1, v2, :cond_5

    const/4 v0, 0x0

    :goto_2
    iget v3, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v3, :cond_4

    iget-object v3, v8, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p3, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const-string v0, ": system count differ ("

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/prineside/tdi2/utils/PMath;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    const-string v1, ")\n"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_5
    const/4 v10, 0x0

    :goto_3
    invoke-static {p1}, Lcom/prineside/tdi2/GameSystemProvider;->a(Lcom/prineside/tdi2/GameSystemProvider;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v10, v0, :cond_8

    invoke-static {p1}, Lcom/prineside/tdi2/GameSystemProvider;->a(Lcom/prineside/tdi2/GameSystemProvider;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/GameSystem;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Lcom/prineside/tdi2/GameSystem;->affectsGameState()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    move-object v11, p2

    invoke-static {p2, v1}, Lcom/prineside/tdi2/GameSystemProvider;->b(Lcom/prineside/tdi2/GameSystemProvider;Ljava/lang/Class;)Lcom/prineside/tdi2/GameSystem;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-static {v10}, Lcom/prineside/tdi2/utils/PMath;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const-string v2, " "

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const-string v2, "]"

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v4, p5, -0x1

    move-object v2, p3

    move-object/from16 v3, p4

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-static/range {v0 .. v6}, Lcom/prineside/tdi2/utils/PMath;->compareObjects(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V

    const/4 v0, 0x0

    :goto_4
    const/4 v1, 0x5

    if-ge v0, v1, :cond_7

    invoke-virtual/range {p4 .. p4}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    move-object v11, p2

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V
    .locals 0

    check-cast p1, Lcom/prineside/tdi2/GameSystemProvider;

    check-cast p2, Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual/range {p0 .. p7}, Lcom/prineside/tdi2/GameSystemProvider$1;->compare(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/GameSystemProvider;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V

    return-void
.end method

.method public forClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/prineside/tdi2/GameSystemProvider;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/prineside/tdi2/GameSystemProvider;

    return-object v0
.end method
