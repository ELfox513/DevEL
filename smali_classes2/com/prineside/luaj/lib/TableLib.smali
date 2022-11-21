.class public Lcom/prineside/luaj/lib/TableLib;
.super Lcom/prineside/luaj/lib/TwoArgFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/luaj/lib/TableLib$concat;,
        Lcom/prineside/luaj/lib/TableLib$insert;,
        Lcom/prineside/luaj/lib/TableLib$pack;,
        Lcom/prineside/luaj/lib/TableLib$remove;,
        Lcom/prineside/luaj/lib/TableLib$sort;,
        Lcom/prineside/luaj/lib/TableLib$unpack;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 3

    new-instance p1, Lcom/prineside/luaj/LuaTable;

    invoke-direct {p1}, Lcom/prineside/luaj/LuaTable;-><init>()V

    new-instance v0, Lcom/prineside/luaj/lib/TableLib$concat;

    invoke-direct {v0}, Lcom/prineside/luaj/lib/TableLib$concat;-><init>()V

    const-string v1, "concat"

    invoke-virtual {p1, v1, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v0, Lcom/prineside/luaj/lib/TableLib$insert;

    invoke-direct {v0}, Lcom/prineside/luaj/lib/TableLib$insert;-><init>()V

    const-string v1, "insert"

    invoke-virtual {p1, v1, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v0, Lcom/prineside/luaj/lib/TableLib$pack;

    invoke-direct {v0}, Lcom/prineside/luaj/lib/TableLib$pack;-><init>()V

    const-string v1, "pack"

    invoke-virtual {p1, v1, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v0, Lcom/prineside/luaj/lib/TableLib$remove;

    invoke-direct {v0}, Lcom/prineside/luaj/lib/TableLib$remove;-><init>()V

    const-string v1, "remove"

    invoke-virtual {p1, v1, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v0, Lcom/prineside/luaj/lib/TableLib$sort;

    invoke-direct {v0}, Lcom/prineside/luaj/lib/TableLib$sort;-><init>()V

    const-string v1, "sort"

    invoke-virtual {p1, v1, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v0, Lcom/prineside/luaj/lib/TableLib$unpack;

    invoke-direct {v0}, Lcom/prineside/luaj/lib/TableLib$unpack;-><init>()V

    const-string v1, "unpack"

    invoke-virtual {p1, v1, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    const-string v0, "table"

    invoke-virtual {p2, v0, p1}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    const-string v1, "package"

    invoke-virtual {p2, v1}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2, v1}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p2

    const-string v1, "loaded"

    invoke-virtual {p2, v1}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    :cond_0
    sget-object p1, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    return-object p1
.end method
