.class Lcom/prineside/tdi2/serializers/IntIntMapSerializer$3;
.super Lcom/prineside/tdi2/utils/PMath$ClassComparator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/serializers/IntIntMapSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/utils/PMath$ClassComparator<",
        "Lcom/badlogic/gdx/utils/IntIntMap;",
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
.method public compare(Lcom/badlogic/gdx/utils/IntIntMap;Lcom/badlogic/gdx/utils/IntIntMap;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/IntIntMap;",
            "Lcom/badlogic/gdx/utils/IntIntMap;",
            "Lcom/badlogic/gdx/utils/StringBuilder;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/badlogic/gdx/utils/IntIntMap;",
            "Z)V"
        }
    .end annotation

    iget p5, p1, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    iget p6, p2, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    const-string p7, "\n"

    const-string v0, " != "

    const/4 v1, 0x0

    if-eq p5, p6, :cond_1

    const/4 p5, 0x0

    :goto_0
    iget p6, p4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p5, p6, :cond_0

    iget-object p6, p4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast p6, [Ljava/lang/String;

    aget-object p6, p6, p5

    invoke-virtual {p3, p6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_0
    const-string p5, ": sizes do not match"

    invoke-virtual {p3, p5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p5

    iget p6, p1, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    invoke-virtual {p5, p6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p5

    iget p6, p2, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    invoke-virtual {p5, p6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/IntIntMap;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    iget p6, p5, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->key:I

    invoke-virtual {p2, p6}, Lcom/badlogic/gdx/utils/IntIntMap;->containsKey(I)Z

    move-result p6

    const-string v2, "["

    if-nez p6, :cond_4

    const/4 p6, 0x0

    :goto_2
    iget v3, p4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p6, v3, :cond_3

    iget-object v3, p4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    aget-object v3, v3, p6

    invoke-virtual {p3, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 p6, p6, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p3, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p6

    iget p5, p5, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->key:I

    invoke-virtual {p6, p5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p5

    const-string p6, "]: key not exists\n"

    invoke-virtual {p5, p6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_1

    :cond_4
    iget p6, p5, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->value:I

    iget v3, p5, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->key:I

    invoke-virtual {p2, v3, v1}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result v3

    if-eq p6, v3, :cond_2

    const/4 p6, 0x0

    :goto_3
    iget v3, p4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p6, v3, :cond_5

    iget-object v3, p4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    aget-object v3, v3, p6

    invoke-virtual {p3, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 p6, p6, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p3, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p6

    iget v2, p5, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->key:I

    invoke-virtual {p6, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p6

    const-string v2, "]: "

    invoke-virtual {p6, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p6

    iget v2, p5, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->value:I

    invoke-virtual {p6, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p6

    invoke-virtual {p6, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p6

    iget p5, p5, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->key:I

    invoke-virtual {p2, p5, v1}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result p5

    invoke-virtual {p6, p5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_1

    :cond_6
    return-void
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/utils/IntIntMap;

    check-cast p2, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual/range {p0 .. p7}, Lcom/prineside/tdi2/serializers/IntIntMapSerializer$3;->compare(Lcom/badlogic/gdx/utils/IntIntMap;Lcom/badlogic/gdx/utils/IntIntMap;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V

    return-void
.end method

.method public forClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/badlogic/gdx/utils/IntIntMap;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/badlogic/gdx/utils/IntIntMap;

    return-object v0
.end method
