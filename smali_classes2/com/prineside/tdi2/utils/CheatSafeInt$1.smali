.class Lcom/prineside/tdi2/utils/CheatSafeInt$1;
.super Lcom/prineside/tdi2/utils/PMath$ClassComparator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/utils/CheatSafeInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/utils/PMath$ClassComparator<",
        "Lcom/prineside/tdi2/utils/CheatSafeInt;",
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
.method public compare(Lcom/prineside/tdi2/utils/CheatSafeInt;Lcom/prineside/tdi2/utils/CheatSafeInt;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/utils/CheatSafeInt;",
            "Lcom/prineside/tdi2/utils/CheatSafeInt;",
            "Lcom/badlogic/gdx/utils/StringBuilder;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/badlogic/gdx/utils/IntIntMap;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result p5

    invoke-virtual {p2}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result p6

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
    const-string p4, ": "

    invoke-virtual {p3, p4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    const-string p3, " != "

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_1
    return-void
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V
    .locals 0

    check-cast p1, Lcom/prineside/tdi2/utils/CheatSafeInt;

    check-cast p2, Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual/range {p0 .. p7}, Lcom/prineside/tdi2/utils/CheatSafeInt$1;->compare(Lcom/prineside/tdi2/utils/CheatSafeInt;Lcom/prineside/tdi2/utils/CheatSafeInt;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V

    return-void
.end method

.method public forClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/prineside/tdi2/utils/CheatSafeInt;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/prineside/tdi2/utils/CheatSafeInt;

    return-object v0
.end method
