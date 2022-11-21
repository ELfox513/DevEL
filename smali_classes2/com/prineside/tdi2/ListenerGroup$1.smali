.class Lcom/prineside/tdi2/ListenerGroup$1;
.super Lcom/prineside/tdi2/utils/PMath$ClassComparator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ListenerGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/utils/PMath$ClassComparator<",
        "Lcom/prineside/tdi2/ListenerGroup;",
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
.method public compare(Lcom/prineside/tdi2/ListenerGroup;Lcom/prineside/tdi2/ListenerGroup;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/ListenerGroup;",
            "Lcom/prineside/tdi2/ListenerGroup;",
            "Lcom/badlogic/gdx/utils/StringBuilder;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/badlogic/gdx/utils/IntIntMap;",
            "Z)V"
        }
    .end annotation

    move-object v7, p4

    const-string v0, ".stateAffectingListeners"

    invoke-virtual {p4, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/prineside/tdi2/ListenerGroup;->b(Lcom/prineside/tdi2/ListenerGroup;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    invoke-static {p2}, Lcom/prineside/tdi2/ListenerGroup;->b(Lcom/prineside/tdi2/ListenerGroup;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v1

    add-int/lit8 v8, p5, -0x1

    move-object v2, p3

    move-object v3, p4

    move v4, v8

    move-object v5, p6

    move/from16 v6, p7

    invoke-static/range {v0 .. v6}, Lcom/prineside/tdi2/utils/PMath;->compareObjects(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V

    invoke-virtual {p4}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    const-string v0, ".removing"

    invoke-virtual {p4, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/prineside/tdi2/ListenerGroup;->d(Lcom/prineside/tdi2/ListenerGroup;)Lcom/badlogic/gdx/utils/ObjectSet;

    move-result-object v0

    invoke-static {p2}, Lcom/prineside/tdi2/ListenerGroup;->d(Lcom/prineside/tdi2/ListenerGroup;)Lcom/badlogic/gdx/utils/ObjectSet;

    move-result-object v1

    invoke-static/range {v0 .. v6}, Lcom/prineside/tdi2/utils/PMath;->compareObjects(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V

    invoke-virtual {p4}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    const-string v0, ".adding"

    invoke-virtual {p4, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/prineside/tdi2/ListenerGroup;->f(Lcom/prineside/tdi2/ListenerGroup;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-static {p2}, Lcom/prineside/tdi2/ListenerGroup;->f(Lcom/prineside/tdi2/ListenerGroup;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-static/range {v0 .. v6}, Lcom/prineside/tdi2/utils/PMath;->compareObjects(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V

    invoke-virtual {p4}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V
    .locals 0

    check-cast p1, Lcom/prineside/tdi2/ListenerGroup;

    check-cast p2, Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual/range {p0 .. p7}, Lcom/prineside/tdi2/ListenerGroup$1;->compare(Lcom/prineside/tdi2/ListenerGroup;Lcom/prineside/tdi2/ListenerGroup;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V

    return-void
.end method

.method public forClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/prineside/tdi2/ListenerGroup;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/prineside/tdi2/ListenerGroup;

    return-object v0
.end method
