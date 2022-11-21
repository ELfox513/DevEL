.class public interface abstract Lcom/prineside/tdi2/systems/InputSystem$InputSystemListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/GameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/InputSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InputSystemListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/systems/InputSystem$InputSystemListener$InputSystemListenerAdapter;
    }
.end annotation


# virtual methods
.method public abstract backButtonPressed()V
.end method

.method public abstract mapEntityTouched(Lcom/prineside/tdi2/Tile;Lcom/prineside/tdi2/Gate;)V
.end method

.method public abstract pointingMapElementChanged(Lcom/prineside/tdi2/Tile;Lcom/prineside/tdi2/Tile;Lcom/prineside/tdi2/Gate;Lcom/prineside/tdi2/Gate;)V
.end method
