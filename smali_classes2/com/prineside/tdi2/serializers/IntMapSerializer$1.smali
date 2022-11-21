.class Lcom/prineside/tdi2/serializers/IntMapSerializer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/serializers/IntMapSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/badlogic/gdx/utils/IntIntMap$Entry;",
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
.method public compare(Lcom/badlogic/gdx/utils/IntIntMap$Entry;Lcom/badlogic/gdx/utils/IntIntMap$Entry;)I
    .locals 0

    iget p1, p1, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->key:I

    iget p2, p2, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->key:I

    invoke-static {p1, p2}, Lx1/i;->a(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    check-cast p2, Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/serializers/IntMapSerializer$1;->compare(Lcom/badlogic/gdx/utils/IntIntMap$Entry;Lcom/badlogic/gdx/utils/IntIntMap$Entry;)I

    move-result p1

    return p1
.end method
