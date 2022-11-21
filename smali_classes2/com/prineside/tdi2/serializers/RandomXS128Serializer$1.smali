.class Lcom/prineside/tdi2/serializers/RandomXS128Serializer$1;
.super Lcom/prineside/tdi2/utils/PMath$ClassComparator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/serializers/RandomXS128Serializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/utils/PMath$ClassComparator<",
        "Lcom/badlogic/gdx/math/RandomXS128;",
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
.method public compare(Lcom/badlogic/gdx/math/RandomXS128;Lcom/badlogic/gdx/math/RandomXS128;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/math/RandomXS128;",
            "Lcom/badlogic/gdx/math/RandomXS128;",
            "Lcom/badlogic/gdx/utils/StringBuilder;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/badlogic/gdx/utils/IntIntMap;",
            "Z)V"
        }
    .end annotation

    const/4 p5, 0x0

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/math/RandomXS128;->getState(I)J

    move-result-wide p6

    invoke-virtual {p2, p5}, Lcom/badlogic/gdx/math/RandomXS128;->getState(I)J

    move-result-wide v0

    const-string v2, ")\n"

    const-string v3, ", "

    cmp-long v4, p6, v0

    if-eqz v4, :cond_1

    const/4 p6, 0x0

    :goto_0
    iget p7, p4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p6, p7, :cond_0

    iget-object p7, p4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast p7, [Ljava/lang/String;

    aget-object p7, p7, p6

    invoke-virtual {p3, p7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_0
    const-string p4, ": seed 0 differ ("

    invoke-virtual {p3, p4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p3

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/math/RandomXS128;->getState(I)J

    move-result-wide p6

    invoke-virtual {p3, p6, p7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {p2, p5}, Lcom/badlogic/gdx/math/RandomXS128;->getState(I)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_2

    :cond_1
    const/4 p6, 0x1

    invoke-virtual {p1, p6}, Lcom/badlogic/gdx/math/RandomXS128;->getState(I)J

    move-result-wide v0

    invoke-virtual {p2, p6}, Lcom/badlogic/gdx/math/RandomXS128;->getState(I)J

    move-result-wide v4

    cmp-long p7, v0, v4

    if-eqz p7, :cond_3

    :goto_1
    iget p7, p4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p5, p7, :cond_2

    iget-object p7, p4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast p7, [Ljava/lang/String;

    aget-object p7, p7, p5

    invoke-virtual {p3, p7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    :cond_2
    const-string p4, ": seed 1 differ ("

    invoke-virtual {p3, p4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p3

    invoke-virtual {p1, p6}, Lcom/badlogic/gdx/math/RandomXS128;->getState(I)J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {p2, p6}, Lcom/badlogic/gdx/math/RandomXS128;->getState(I)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_3
    :goto_2
    return-void
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/RandomXS128;

    check-cast p2, Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual/range {p0 .. p7}, Lcom/prineside/tdi2/serializers/RandomXS128Serializer$1;->compare(Lcom/badlogic/gdx/math/RandomXS128;Lcom/badlogic/gdx/math/RandomXS128;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V

    return-void
.end method

.method public forClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/badlogic/gdx/math/RandomXS128;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/badlogic/gdx/math/RandomXS128;

    return-object v0
.end method
