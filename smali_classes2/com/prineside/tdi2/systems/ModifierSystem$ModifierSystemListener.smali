.class public interface abstract Lcom/prineside/tdi2/systems/ModifierSystem$ModifierSystemListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/GameListener;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    classOnly = true
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/ModifierSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ModifierSystemListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/systems/ModifierSystem$ModifierSystemListener$ModifierSystemListenerAdapter;
    }
.end annotation


# virtual methods
.method public abstract customButtonPressed(Lcom/prineside/tdi2/Modifier;)V
.end method

.method public abstract modifierBuilt(Lcom/prineside/tdi2/Modifier;I)V
.end method

.method public abstract modifierSold(Lcom/prineside/tdi2/Modifier;I)V
.end method
