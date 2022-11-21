.class Lcom/prineside/luaj/WeakTable$WeakKeyAndValueSlot;
.super Lcom/prineside/luaj/WeakTable$WeakSlot;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/WeakTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeakKeyAndValueSlot"
.end annotation


# instance fields
.field public final k:I


# direct methods
.method public constructor <init>(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaTable$Slot;)V
    .locals 1

    invoke-static {p1}, Lcom/prineside/luaj/WeakTable;->b(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-static {p2}, Lcom/prineside/luaj/WeakTable;->b(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p2

    invoke-direct {p0, v0, p2, p3}, Lcom/prineside/luaj/WeakTable$WeakSlot;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/prineside/luaj/LuaTable$Slot;)V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/prineside/luaj/WeakTable$WeakKeyAndValueSlot;->k:I

    return-void
.end method

.method public constructor <init>(Lcom/prineside/luaj/WeakTable$WeakKeyAndValueSlot;Lcom/prineside/luaj/LuaTable$Slot;)V
    .locals 2

    iget-object v0, p1, Lcom/prineside/luaj/WeakTable$WeakSlot;->a:Ljava/lang/Object;

    iget-object v1, p1, Lcom/prineside/luaj/WeakTable$WeakSlot;->b:Ljava/lang/Object;

    invoke-direct {p0, v0, v1, p2}, Lcom/prineside/luaj/WeakTable$WeakSlot;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/prineside/luaj/LuaTable$Slot;)V

    iget p1, p1, Lcom/prineside/luaj/WeakTable$WeakKeyAndValueSlot;->k:I

    iput p1, p0, Lcom/prineside/luaj/WeakTable$WeakKeyAndValueSlot;->k:I

    return-void
.end method


# virtual methods
.method public a(Lcom/prineside/luaj/LuaTable$Slot;)Lcom/prineside/luaj/WeakTable$WeakSlot;
    .locals 1

    new-instance v0, Lcom/prineside/luaj/WeakTable$WeakKeyAndValueSlot;

    invoke-direct {v0, p0, p1}, Lcom/prineside/luaj/WeakTable$WeakKeyAndValueSlot;-><init>(Lcom/prineside/luaj/WeakTable$WeakKeyAndValueSlot;Lcom/prineside/luaj/LuaTable$Slot;)V

    return-object v0
.end method

.method public keyindex(I)I
    .locals 1

    iget v0, p0, Lcom/prineside/luaj/WeakTable$WeakKeyAndValueSlot;->k:I

    invoke-static {v0, p1}, Lcom/prineside/luaj/LuaTable;->hashmod(II)I

    move-result p1

    return p1
.end method

.method public set(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable$Slot;
    .locals 0

    invoke-static {p1}, Lcom/prineside/luaj/WeakTable;->b(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/luaj/WeakTable$WeakSlot;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public strongkey()Lcom/prineside/luaj/LuaValue;
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/WeakTable$WeakSlot;->a:Ljava/lang/Object;

    invoke-static {v0}, Lcom/prineside/luaj/WeakTable;->a(Ljava/lang/Object;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public strongvalue()Lcom/prineside/luaj/LuaValue;
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/WeakTable$WeakSlot;->b:Ljava/lang/Object;

    invoke-static {v0}, Lcom/prineside/luaj/WeakTable;->a(Ljava/lang/Object;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    return-object v0
.end method
