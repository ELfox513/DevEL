.class Lcom/prineside/tdi2/serializers/IntFloatMapSerializer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/serializers/IntFloatMapSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/badlogic/gdx/utils/IntFloatMap$Entry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/badlogic/gdx/utils/IntFloatMap$Entry;Lcom/badlogic/gdx/utils/IntFloatMap$Entry;)I
    .locals 0

    iget p1, p1, Lcom/badlogic/gdx/utils/IntFloatMap$Entry;->key:I

    int-to-float p1, p1

    iget p2, p2, Lcom/badlogic/gdx/utils/IntFloatMap$Entry;->key:I

    int-to-float p2, p2

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/utils/IntFloatMap$Entry;

    check-cast p2, Lcom/badlogic/gdx/utils/IntFloatMap$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/serializers/IntFloatMapSerializer$2;->compare(Lcom/badlogic/gdx/utils/IntFloatMap$Entry;Lcom/badlogic/gdx/utils/IntFloatMap$Entry;)I

    move-result p1

    return p1
.end method
