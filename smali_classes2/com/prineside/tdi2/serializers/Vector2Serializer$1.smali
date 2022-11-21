.class Lcom/prineside/tdi2/serializers/Vector2Serializer$1;
.super Lcom/prineside/tdi2/utils/PMath$ClassComparator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/serializers/Vector2Serializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/utils/PMath$ClassComparator<",
        "Lcom/badlogic/gdx/math/Vector2;",
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
.method public compare(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/math/Vector2;",
            "Lcom/badlogic/gdx/math/Vector2;",
            "Lcom/badlogic/gdx/utils/StringBuilder;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/badlogic/gdx/utils/IntIntMap;",
            "Z)V"
        }
    .end annotation

    iget p5, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p6, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpl-float p5, p5, p6

    if-nez p5, :cond_0

    iget p5, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget p6, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float p5, p5, p6

    if-eqz p5, :cond_3

    :cond_0
    const/4 p5, 0x0

    :goto_0
    iget p6, p4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p5, p6, :cond_1

    iget-object p6, p4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast p6, [Ljava/lang/String;

    aget-object p6, p6, p5

    invoke-virtual {p3, p6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_1
    iget p4, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p5, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    const-string p6, "\n"

    const-string p7, " != "

    cmpl-float p4, p4, p5

    if-eqz p4, :cond_2

    const-string p4, ".x: "

    invoke-virtual {p3, p4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p4

    iget p5, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p4, p5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(F)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p4

    iget p5, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p4, p5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(F)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_2
    iget p4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget p5, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float p4, p4, p5

    if-eqz p4, :cond_3

    const-string p4, ".y: "

    invoke-virtual {p3, p4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p3

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(F)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(F)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_3
    return-void
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    check-cast p2, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual/range {p0 .. p7}, Lcom/prineside/tdi2/serializers/Vector2Serializer$1;->compare(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V

    return-void
.end method

.method public forClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method
