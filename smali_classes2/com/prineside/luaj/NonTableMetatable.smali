.class Lcom/prineside/luaj/NonTableMetatable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/luaj/Metatable;


# instance fields
.field public final a:Lcom/prineside/luaj/LuaValue;


# direct methods
.method public constructor <init>(Lcom/prineside/luaj/LuaValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/NonTableMetatable;->a:Lcom/prineside/luaj/LuaValue;

    return-void
.end method


# virtual methods
.method public arrayget([Lcom/prineside/luaj/LuaValue;I)Lcom/prineside/luaj/LuaValue;
    .locals 0

    aget-object p1, p1, p2

    return-object p1
.end method

.method public entry(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable$Slot;
    .locals 0

    invoke-static {p1, p2}, Lcom/prineside/luaj/LuaTable;->v(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable$Entry;

    move-result-object p1

    return-object p1
.end method

.method public toLuaValue()Lcom/prineside/luaj/LuaValue;
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/NonTableMetatable;->a:Lcom/prineside/luaj/LuaValue;

    return-object v0
.end method

.method public useWeakKeys()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public useWeakValues()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public wrap(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    return-object p1
.end method
