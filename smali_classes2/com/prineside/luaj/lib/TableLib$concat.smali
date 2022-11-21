.class public Lcom/prineside/luaj/lib/TableLib$concat;
.super Lcom/prineside/luaj/lib/TableLibFunction;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/TableLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "concat"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/TableLibFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Lcom/prineside/luaj/LuaValue;
    .locals 1

    invoke-super {p0}, Lcom/prineside/luaj/lib/TableLibFunction;->call()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public call(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 3

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checktable()Lcom/prineside/luaj/LuaTable;

    move-result-object v0

    sget-object v1, Lcom/prineside/luaj/LuaValue;->EMPTYSTRING:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->length()I

    move-result p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Lcom/prineside/luaj/LuaTable;->concat(Lcom/prineside/luaj/LuaString;II)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 2

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checktable()Lcom/prineside/luaj/LuaTable;

    move-result-object v0

    invoke-virtual {p2}, Lcom/prineside/luaj/LuaValue;->checkstring()Lcom/prineside/luaj/LuaString;

    move-result-object p2

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->length()I

    move-result p1

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1, p1}, Lcom/prineside/luaj/LuaTable;->concat(Lcom/prineside/luaj/LuaString;II)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checktable()Lcom/prineside/luaj/LuaTable;

    move-result-object v0

    invoke-virtual {p2}, Lcom/prineside/luaj/LuaValue;->checkstring()Lcom/prineside/luaj/LuaString;

    move-result-object p2

    invoke-virtual {p3}, Lcom/prineside/luaj/LuaValue;->checkint()I

    move-result p3

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->length()I

    move-result p1

    invoke-virtual {v0, p2, p3, p1}, Lcom/prineside/luaj/LuaTable;->concat(Lcom/prineside/luaj/LuaString;II)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checktable()Lcom/prineside/luaj/LuaTable;

    move-result-object p1

    invoke-virtual {p2}, Lcom/prineside/luaj/LuaValue;->checkstring()Lcom/prineside/luaj/LuaString;

    move-result-object p2

    invoke-virtual {p3}, Lcom/prineside/luaj/LuaValue;->checkint()I

    move-result p3

    invoke-virtual {p4}, Lcom/prineside/luaj/LuaValue;->checkint()I

    move-result p4

    invoke-virtual {p1, p2, p3, p4}, Lcom/prineside/luaj/LuaTable;->concat(Lcom/prineside/luaj/LuaString;II)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method
