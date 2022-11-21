.class Lcom/prineside/tdi2/serializers/ArraySerializer$1;
.super Lcom/prineside/tdi2/utils/PMath$ClassComparator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/serializers/ArraySerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/utils/PMath$ClassComparator<",
        "Lcom/badlogic/gdx/utils/Array;",
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
.method public compare(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array;",
            "Lcom/badlogic/gdx/utils/Array;",
            "Lcom/badlogic/gdx/utils/StringBuilder;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/badlogic/gdx/utils/IntIntMap;",
            "Z)V"
        }
    .end annotation

    move-object v0, p1

    move-object v1, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    iget v3, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v11, 0x0

    if-eq v2, v3, :cond_1

    :goto_0
    iget v2, v10, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v11, v2, :cond_0

    iget-object v2, v10, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    aget-object v2, v2, v11

    invoke-virtual {v9, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    const-string v2, ": sizes differ ("

    invoke-virtual {v9, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    const-string v1, ")\n"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_4

    :cond_1
    const/4 v12, 0x0

    :goto_1
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v12, v2, :cond_5

    invoke-virtual {p1, v12}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v12}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    invoke-virtual {p2, v12}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p2, v12}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    const-string v2, "?"

    :goto_2
    const-string v3, "["

    invoke-virtual {v10, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-static {v12}, Lcom/prineside/tdi2/utils/PMath;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const-string v3, " "

    invoke-virtual {v10, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {v10, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const-string v2, "]"

    invoke-virtual {v10, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {p1, v12}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v12}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v6, p5, -0x1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v8}, Lcom/prineside/tdi2/utils/PMath;->compareObjects(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V

    const/4 v2, 0x0

    :goto_3
    const/4 v3, 0x5

    if-ge v2, v3, :cond_4

    invoke-virtual/range {p4 .. p4}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_5
    :goto_4
    return-void
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/utils/Array;

    check-cast p2, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual/range {p0 .. p7}, Lcom/prineside/tdi2/serializers/ArraySerializer$1;->compare(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V

    return-void
.end method

.method public forClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/badlogic/gdx/utils/Array;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method
