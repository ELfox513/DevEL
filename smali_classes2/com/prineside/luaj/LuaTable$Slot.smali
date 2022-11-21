.class public interface abstract Lcom/prineside/luaj/LuaTable$Slot;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    arrayLevels = 0x1
    classOnly = true
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Slot"
.end annotation


# virtual methods
.method public abstract add(Lcom/prineside/luaj/LuaTable$Slot;)Lcom/prineside/luaj/LuaTable$Slot;
.end method

.method public abstract arraykey(I)I
.end method

.method public abstract find(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable$StrongSlot;
.end method

.method public abstract first()Lcom/prineside/luaj/LuaTable$StrongSlot;
.end method

.method public abstract keyeq(Lcom/prineside/luaj/LuaValue;)Z
.end method

.method public abstract keyindex(I)I
.end method

.method public abstract relink(Lcom/prineside/luaj/LuaTable$Slot;)Lcom/prineside/luaj/LuaTable$Slot;
.end method

.method public abstract remove(Lcom/prineside/luaj/LuaTable$StrongSlot;)Lcom/prineside/luaj/LuaTable$Slot;
.end method

.method public abstract rest()Lcom/prineside/luaj/LuaTable$Slot;
.end method

.method public abstract set(Lcom/prineside/luaj/LuaTable$StrongSlot;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable$Slot;
.end method
