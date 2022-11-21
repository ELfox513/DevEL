.class Lcom/prineside/luaj/LuaTable$1;
.super Lcom/prineside/tdi2/utils/PMath$ClassComparator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/utils/PMath$ClassComparator<",
        "Lcom/prineside/luaj/LuaTable;",
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
.method public compare(Lcom/prineside/luaj/LuaTable;Lcom/prineside/luaj/LuaTable;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/luaj/LuaTable;",
            "Lcom/prineside/luaj/LuaTable;",
            "Lcom/badlogic/gdx/utils/StringBuilder;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/badlogic/gdx/utils/IntIntMap;",
            "Z)V"
        }
    .end annotation

    move-object v0, p1

    move-object v8, p4

    const-string v1, "_noSyncCheck"

    invoke-virtual {p1, v1}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object v1

    sget-object v2, Lcom/prineside/luaj/LuaValue;->TRUE:Lcom/prineside/luaj/LuaBoolean;

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    :goto_0
    invoke-virtual {p1, v1}, Lcom/prineside/luaj/LuaTable;->next(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object v9

    invoke-virtual {v9}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {p4, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {v9}, Lcom/prineside/luaj/LuaValue;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    move-object v10, p2

    invoke-virtual {p2, v9}, Lcom/prineside/luaj/LuaTable;->get(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v2

    add-int/lit8 v5, p5, -0x1

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v1 .. v7}, Lcom/prineside/tdi2/utils/PMath;->compareObjects(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V

    invoke-virtual {p4}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    invoke-virtual {p4}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-object v1, v9

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V
    .locals 0

    check-cast p1, Lcom/prineside/luaj/LuaTable;

    check-cast p2, Lcom/prineside/luaj/LuaTable;

    invoke-virtual/range {p0 .. p7}, Lcom/prineside/luaj/LuaTable$1;->compare(Lcom/prineside/luaj/LuaTable;Lcom/prineside/luaj/LuaTable;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V

    return-void
.end method

.method public forClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/prineside/luaj/LuaTable;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/prineside/luaj/LuaTable;

    return-object v0
.end method
