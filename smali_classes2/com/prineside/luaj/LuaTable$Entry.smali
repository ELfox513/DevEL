.class abstract Lcom/prineside/luaj/LuaTable$Entry;
.super Lcom/prineside/luaj/Varargs;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/luaj/LuaTable$StrongSlot;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Entry"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/Varargs;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/prineside/luaj/LuaTable$Slot;)Lcom/prineside/luaj/LuaTable$Slot;
    .locals 1

    new-instance v0, Lcom/prineside/luaj/LuaTable$LinkSlot;

    invoke-direct {v0, p0, p1}, Lcom/prineside/luaj/LuaTable$LinkSlot;-><init>(Lcom/prineside/luaj/LuaTable$Entry;Lcom/prineside/luaj/LuaTable$Slot;)V

    return-object v0
.end method

.method public arg(I)Lcom/prineside/luaj/LuaValue;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/luaj/LuaTable$Entry;->value()Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/prineside/luaj/LuaTable$Entry;->key()Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public arg1()Lcom/prineside/luaj/LuaValue;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaTable$Entry;->key()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public arraykey(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public find(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable$StrongSlot;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaTable$Entry;->keyeq(Lcom/prineside/luaj/LuaValue;)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public first()Lcom/prineside/luaj/LuaTable$StrongSlot;
    .locals 0

    return-object p0
.end method

.method public abstract key()Lcom/prineside/luaj/LuaValue;
.end method

.method public abstract keyeq(Lcom/prineside/luaj/LuaValue;)Z
.end method

.method public abstract keyindex(I)I
.end method

.method public narg()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public relink(Lcom/prineside/luaj/LuaTable$Slot;)Lcom/prineside/luaj/LuaTable$Slot;
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/prineside/luaj/LuaTable$LinkSlot;

    invoke-direct {v0, p0, p1}, Lcom/prineside/luaj/LuaTable$LinkSlot;-><init>(Lcom/prineside/luaj/LuaTable$Entry;Lcom/prineside/luaj/LuaTable$Slot;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public remove(Lcom/prineside/luaj/LuaTable$StrongSlot;)Lcom/prineside/luaj/LuaTable$Slot;
    .locals 2

    new-instance p1, Lcom/prineside/luaj/LuaTable$DeadSlot;

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaTable$Entry;->key()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v1}, Lcom/prineside/luaj/LuaTable$DeadSlot;-><init>(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaTable$Slot;Lcom/prineside/luaj/LuaTable$1;)V

    return-object p1
.end method

.method public rest()Lcom/prineside/luaj/LuaTable$Slot;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract set(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable$Entry;
.end method

.method public set(Lcom/prineside/luaj/LuaTable$StrongSlot;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable$Slot;
    .locals 0

    invoke-virtual {p0, p2}, Lcom/prineside/luaj/LuaTable$Entry;->set(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable$Entry;

    move-result-object p1

    return-object p1
.end method

.method public subargs(I)Lcom/prineside/luaj/Varargs;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/luaj/LuaTable$Entry;->value()Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p0
.end method

.method public toVarargs()Lcom/prineside/luaj/Varargs;
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaTable$Entry;->key()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaTable$Entry;->value()Lcom/prineside/luaj/LuaValue;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prineside/luaj/LuaValue;->varargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object v0

    return-object v0
.end method

.method public abstract value()Lcom/prineside/luaj/LuaValue;
.end method
