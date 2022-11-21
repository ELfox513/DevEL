.class public abstract Lcom/prineside/luaj/WeakTable$WeakSlot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/luaj/LuaTable$Slot;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/WeakTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WeakSlot"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public d:Lcom/prineside/luaj/LuaTable$Slot;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/prineside/luaj/LuaTable$Slot;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/WeakTable$WeakSlot;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/prineside/luaj/WeakTable$WeakSlot;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/prineside/luaj/WeakTable$WeakSlot;->d:Lcom/prineside/luaj/LuaTable$Slot;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/prineside/luaj/LuaTable$Slot;)Lcom/prineside/luaj/WeakTable$WeakSlot;
.end method

.method public add(Lcom/prineside/luaj/LuaTable$Slot;)Lcom/prineside/luaj/LuaTable$Slot;
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/WeakTable$WeakSlot;->d:Lcom/prineside/luaj/LuaTable$Slot;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/prineside/luaj/LuaTable$Slot;->add(Lcom/prineside/luaj/LuaTable$Slot;)Lcom/prineside/luaj/LuaTable$Slot;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/prineside/luaj/WeakTable$WeakSlot;->d:Lcom/prineside/luaj/LuaTable$Slot;

    invoke-virtual {p0}, Lcom/prineside/luaj/WeakTable$WeakSlot;->strongkey()Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/prineside/luaj/WeakTable$WeakSlot;->strongvalue()Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    iget-object p1, p0, Lcom/prineside/luaj/WeakTable$WeakSlot;->d:Lcom/prineside/luaj/LuaTable$Slot;

    return-object p1
.end method

.method public arraykey(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public find(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable$StrongSlot;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/WeakTable$WeakSlot;->first()Lcom/prineside/luaj/LuaTable$StrongSlot;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/prineside/luaj/LuaTable$Slot;->find(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable$StrongSlot;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public first()Lcom/prineside/luaj/LuaTable$StrongSlot;
    .locals 3

    invoke-virtual {p0}, Lcom/prineside/luaj/WeakTable$WeakSlot;->strongkey()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {p0}, Lcom/prineside/luaj/WeakTable$WeakSlot;->strongvalue()Lcom/prineside/luaj/LuaValue;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    new-instance v2, Lcom/prineside/luaj/LuaTable$NormalEntry;

    invoke-direct {v2, v0, v1}, Lcom/prineside/luaj/LuaTable$NormalEntry;-><init>(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/luaj/WeakTable$WeakSlot;->a:Ljava/lang/Object;

    iput-object v0, p0, Lcom/prineside/luaj/WeakTable$WeakSlot;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public keyeq(Lcom/prineside/luaj/LuaValue;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/WeakTable$WeakSlot;->first()Lcom/prineside/luaj/LuaTable$StrongSlot;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/prineside/luaj/LuaTable$Slot;->keyeq(Lcom/prineside/luaj/LuaValue;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract keyindex(I)I
.end method

.method public relink(Lcom/prineside/luaj/LuaTable$Slot;)Lcom/prineside/luaj/LuaTable$Slot;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/WeakTable$WeakSlot;->strongkey()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/prineside/luaj/WeakTable$WeakSlot;->strongvalue()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/prineside/luaj/WeakTable$WeakSlot;->d:Lcom/prineside/luaj/LuaTable$Slot;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/prineside/luaj/WeakTable$WeakSlot;->a(Lcom/prineside/luaj/LuaTable$Slot;)Lcom/prineside/luaj/WeakTable$WeakSlot;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public remove(Lcom/prineside/luaj/LuaTable$StrongSlot;)Lcom/prineside/luaj/LuaTable$Slot;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/WeakTable$WeakSlot;->strongkey()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/luaj/WeakTable$WeakSlot;->d:Lcom/prineside/luaj/LuaTable$Slot;

    invoke-interface {v0, p1}, Lcom/prineside/luaj/LuaTable$Slot;->remove(Lcom/prineside/luaj/LuaTable$StrongSlot;)Lcom/prineside/luaj/LuaTable$Slot;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1, v0}, Lcom/prineside/luaj/LuaTable$Slot;->keyeq(Lcom/prineside/luaj/LuaValue;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/prineside/luaj/WeakTable$WeakSlot;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/prineside/luaj/WeakTable$WeakSlot;->d:Lcom/prineside/luaj/LuaTable$Slot;

    invoke-interface {v0, p1}, Lcom/prineside/luaj/LuaTable$Slot;->remove(Lcom/prineside/luaj/LuaTable$StrongSlot;)Lcom/prineside/luaj/LuaTable$Slot;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/luaj/WeakTable$WeakSlot;->d:Lcom/prineside/luaj/LuaTable$Slot;

    return-object p0
.end method

.method public rest()Lcom/prineside/luaj/LuaTable$Slot;
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/WeakTable$WeakSlot;->d:Lcom/prineside/luaj/LuaTable$Slot;

    return-object v0
.end method

.method public set(Lcom/prineside/luaj/LuaTable$StrongSlot;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable$Slot;
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/luaj/WeakTable$WeakSlot;->strongkey()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lcom/prineside/luaj/LuaTable$Slot;->find(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable$StrongSlot;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/prineside/luaj/WeakTable$WeakSlot;->set(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable$Slot;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/luaj/WeakTable$WeakSlot;->d:Lcom/prineside/luaj/LuaTable$Slot;

    invoke-interface {v0, p1, p2}, Lcom/prineside/luaj/LuaTable$Slot;->set(Lcom/prineside/luaj/LuaTable$StrongSlot;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable$Slot;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/luaj/WeakTable$WeakSlot;->d:Lcom/prineside/luaj/LuaTable$Slot;

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/prineside/luaj/WeakTable$WeakSlot;->d:Lcom/prineside/luaj/LuaTable$Slot;

    invoke-interface {v0, p1, p2}, Lcom/prineside/luaj/LuaTable$Slot;->set(Lcom/prineside/luaj/LuaTable$StrongSlot;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable$Slot;

    move-result-object p1

    return-object p1
.end method

.method public abstract set(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable$Slot;
.end method

.method public strongkey()Lcom/prineside/luaj/LuaValue;
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/WeakTable$WeakSlot;->a:Ljava/lang/Object;

    check-cast v0, Lcom/prineside/luaj/LuaValue;

    return-object v0
.end method

.method public strongvalue()Lcom/prineside/luaj/LuaValue;
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/WeakTable$WeakSlot;->b:Ljava/lang/Object;

    check-cast v0, Lcom/prineside/luaj/LuaValue;

    return-object v0
.end method
