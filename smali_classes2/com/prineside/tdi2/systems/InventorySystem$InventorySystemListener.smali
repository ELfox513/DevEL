.class public interface abstract Lcom/prineside/tdi2/systems/InventorySystem$InventorySystemListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/GameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/InventorySystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InventorySystemListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/systems/InventorySystem$InventorySystemListener$InventorySystemListenerAdapter;
    }
.end annotation


# virtual methods
.method public abstract added(Lcom/prineside/tdi2/ItemStack;)V
.end method

.method public abstract removed(Lcom/prineside/tdi2/ItemStack;)V
.end method
