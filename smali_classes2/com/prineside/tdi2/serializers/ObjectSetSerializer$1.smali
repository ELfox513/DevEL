.class Lcom/prineside/tdi2/serializers/ObjectSetSerializer$1;
.super Lcom/prineside/tdi2/utils/PMath$ClassComparator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/serializers/ObjectSetSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/utils/PMath$ClassComparator<",
        "Lcom/badlogic/gdx/utils/ObjectSet;",
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
.method public compare(Lcom/badlogic/gdx/utils/ObjectSet;Lcom/badlogic/gdx/utils/ObjectSet;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectSet;",
            "Lcom/badlogic/gdx/utils/ObjectSet;",
            "Lcom/badlogic/gdx/utils/StringBuilder;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/badlogic/gdx/utils/IntIntMap;",
            "Z)V"
        }
    .end annotation

    iget p5, p1, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    iget p6, p2, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    const/4 p7, 0x0

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

    iget p6, p1, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    invoke-virtual {p5, p6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p5

    const-string p6, " != "

    invoke-virtual {p5, p6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p5

    iget p6, p2, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    invoke-virtual {p5, p6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p5

    const-string p6, "\n"

    invoke-virtual {p5, p6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/ObjectSet;->iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    move-result-object p1

    :cond_2
    :goto_1
    iget-boolean p5, p1, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->hasNext:Z

    if-eqz p5, :cond_4

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->next()Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Class;->isEnum()Z

    move-result p6

    if-eqz p6, :cond_2

    invoke-virtual {p2, p5}, Lcom/badlogic/gdx/utils/ObjectSet;->contains(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_2

    const/4 p6, 0x0

    :goto_2
    iget v0, p4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p6, v0, :cond_3

    iget-object v0, p4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, p6

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 p6, p6, 0x1

    goto :goto_2

    :cond_3
    const-string p6, "["

    invoke-virtual {p3, p6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p6

    invoke-virtual {p6, p5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p5

    const-string p6, "]: key not exists\n"

    invoke-virtual {p5, p6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_1

    :cond_4
    return-void
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/utils/ObjectSet;

    check-cast p2, Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual/range {p0 .. p7}, Lcom/prineside/tdi2/serializers/ObjectSetSerializer$1;->compare(Lcom/badlogic/gdx/utils/ObjectSet;Lcom/badlogic/gdx/utils/ObjectSet;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V

    return-void
.end method

.method public forClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/badlogic/gdx/utils/ObjectSet;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/badlogic/gdx/utils/ObjectSet;

    return-object v0
.end method
