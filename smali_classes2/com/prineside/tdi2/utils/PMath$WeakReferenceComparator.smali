.class Lcom/prineside/tdi2/utils/PMath$WeakReferenceComparator;
.super Lcom/prineside/tdi2/utils/PMath$ClassComparator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/utils/PMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeakReferenceComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/utils/PMath$ClassComparator<",
        "Ljava/lang/ref/WeakReference;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/utils/PMath$ClassComparator;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/utils/PMath$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/utils/PMath$WeakReferenceComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V
    .locals 0

    check-cast p1, Ljava/lang/ref/WeakReference;

    check-cast p2, Ljava/lang/ref/WeakReference;

    invoke-virtual/range {p0 .. p7}, Lcom/prineside/tdi2/utils/PMath$WeakReferenceComparator;->compare(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V

    return-void
.end method

.method public compare(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference;",
            "Ljava/lang/ref/WeakReference;",
            "Lcom/badlogic/gdx/utils/StringBuilder;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/badlogic/gdx/utils/IntIntMap;",
            "Z)V"
        }
    .end annotation

    const-string v0, ".get()"

    invoke-virtual {p4, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v5, p5, -0x1

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    move v7, p7

    invoke-static/range {v1 .. v7}, Lcom/prineside/tdi2/utils/PMath;->compareObjects(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V

    invoke-virtual {p4}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    return-void
.end method

.method public forClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/ref/WeakReference;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/lang/ref/WeakReference;

    return-object v0
.end method
