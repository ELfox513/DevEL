.class public interface abstract Lcom/prineside/tdi2/systems/MapEditorSystem$MapEditorSystemListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/GameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/MapEditorSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MapEditorSystemListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/systems/MapEditorSystem$MapEditorSystemListener$MapEditorSystemListenerAdapter;
    }
.end annotation


# virtual methods
.method public abstract draggingPositionChanged()V
.end method

.method public abstract mapGateChanged(IILcom/prineside/tdi2/Gate$Side;Lcom/prineside/tdi2/Gate;)V
.end method

.method public abstract mapSizeChanged()V
.end method

.method public abstract mapTileChanged(IILcom/prineside/tdi2/Tile;)V
.end method

.method public abstract mapValidationFailed(Lcom/prineside/tdi2/Map$InvalidMapException;)V
.end method

.method public abstract modeChanged(Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;)V
.end method

.method public abstract startedDragging()V
.end method

.method public abstract stoppedDragging(Lcom/prineside/tdi2/Item;)V
.end method
