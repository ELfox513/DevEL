.class public Lcom/prineside/luaj/WeakTable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/luaj/Metatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/luaj/WeakTable$WeakKeyAndValueSlot;,
        Lcom/prineside/luaj/WeakTable$WeakKeySlot;,
        Lcom/prineside/luaj/WeakTable$WeakValueSlot;,
        Lcom/prineside/luaj/WeakTable$WeakValue;,
        Lcom/prineside/luaj/WeakTable$WeakUserdata;,
        Lcom/prineside/luaj/WeakTable$WeakSlot;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public d:Lcom/prineside/luaj/LuaValue;


# direct methods
.method public constructor <init>(ZZLcom/prineside/luaj/LuaValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/prineside/luaj/WeakTable;->a:Z

    iput-boolean p2, p0, Lcom/prineside/luaj/WeakTable;->b:Z

    iput-object p3, p0, Lcom/prineside/luaj/WeakTable;->d:Lcom/prineside/luaj/LuaValue;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    instance-of v0, p0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    :cond_0
    instance-of v0, p0, Lcom/prineside/luaj/WeakTable$WeakValue;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/prineside/luaj/WeakTable$WeakValue;

    invoke-virtual {p0}, Lcom/prineside/luaj/WeakTable$WeakValue;->strongvalue()Lcom/prineside/luaj/LuaValue;

    move-result-object p0

    return-object p0

    :cond_1
    check-cast p0, Lcom/prineside/luaj/LuaValue;

    return-object p0
.end method

.method public static b(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaValue;->type()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    return-object p0

    :cond_0
    new-instance v0, Lcom/prineside/luaj/WeakTable$WeakUserdata;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/prineside/luaj/WeakTable$WeakUserdata;-><init>(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/WeakTable$1;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/prineside/luaj/WeakTable$WeakValue;

    invoke-direct {v0, p0}, Lcom/prineside/luaj/WeakTable$WeakValue;-><init>(Lcom/prineside/luaj/LuaValue;)V

    return-object v0
.end method

.method public static make(ZZ)Lcom/prineside/luaj/LuaTable;
    .locals 3

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string p0, "kv"

    invoke-static {p0}, Lcom/prineside/luaj/LuaString;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    const-string p0, "k"

    invoke-static {p0}, Lcom/prineside/luaj/LuaString;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const-string p0, "v"

    invoke-static {p0}, Lcom/prineside/luaj/LuaString;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object p0

    :goto_0
    invoke-static {}, Lcom/prineside/luaj/LuaValue;->tableOf()Lcom/prineside/luaj/LuaTable;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/prineside/luaj/LuaValue;

    const/4 v1, 0x0

    sget-object v2, Lcom/prineside/luaj/LuaValue;->MODE:Lcom/prineside/luaj/LuaString;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->tableOf([Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/LuaTable;->setmetatable(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    return-object p1

    :cond_2
    invoke-static {}, Lcom/prineside/luaj/LuaValue;->tableOf()Lcom/prineside/luaj/LuaTable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public arrayget([Lcom/prineside/luaj/LuaValue;I)Lcom/prineside/luaj/LuaValue;
    .locals 2

    aget-object v0, p1, p2

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/prineside/luaj/WeakTable;->a(Ljava/lang/Object;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    aput-object v1, p1, p2

    :cond_0
    return-object v0
.end method

.method public entry(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable$Slot;
    .locals 2

    invoke-virtual {p2}, Lcom/prineside/luaj/LuaValue;->strongvalue()Lcom/prineside/luaj/LuaValue;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/prineside/luaj/WeakTable;->a:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->isnumber()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->isstring()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->isboolean()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/prineside/luaj/WeakTable;->b:Z

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/prineside/luaj/LuaValue;->isnumber()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lcom/prineside/luaj/LuaValue;->isstring()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lcom/prineside/luaj/LuaValue;->isboolean()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/prineside/luaj/WeakTable$WeakKeyAndValueSlot;

    invoke-direct {v1, p1, p2, v0}, Lcom/prineside/luaj/WeakTable$WeakKeyAndValueSlot;-><init>(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaTable$Slot;)V

    return-object v1

    :cond_1
    new-instance v1, Lcom/prineside/luaj/WeakTable$WeakKeySlot;

    invoke-direct {v1, p1, p2, v0}, Lcom/prineside/luaj/WeakTable$WeakKeySlot;-><init>(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaTable$Slot;)V

    return-object v1

    :cond_2
    iget-boolean v1, p0, Lcom/prineside/luaj/WeakTable;->b:Z

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/prineside/luaj/LuaValue;->isnumber()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Lcom/prineside/luaj/LuaValue;->isstring()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Lcom/prineside/luaj/LuaValue;->isboolean()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/prineside/luaj/WeakTable$WeakValueSlot;

    invoke-direct {v1, p1, p2, v0}, Lcom/prineside/luaj/WeakTable$WeakValueSlot;-><init>(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaTable$Slot;)V

    return-object v1

    :cond_3
    invoke-static {p1, p2}, Lcom/prineside/luaj/LuaTable;->v(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable$Entry;

    move-result-object p1

    return-object p1
.end method

.method public toLuaValue()Lcom/prineside/luaj/LuaValue;
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/WeakTable;->d:Lcom/prineside/luaj/LuaValue;

    return-object v0
.end method

.method public useWeakKeys()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/luaj/WeakTable;->a:Z

    return v0
.end method

.method public useWeakValues()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/luaj/WeakTable;->b:Z

    return v0
.end method

.method public wrap(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/luaj/WeakTable;->b:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/prineside/luaj/WeakTable;->b(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    :cond_0
    return-object p1
.end method
