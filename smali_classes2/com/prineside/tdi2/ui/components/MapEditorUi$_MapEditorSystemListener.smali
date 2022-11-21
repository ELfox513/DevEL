.class Lcom/prineside/tdi2/ui/components/MapEditorUi$_MapEditorSystemListener;
.super Lcom/prineside/tdi2/systems/MapEditorSystem$MapEditorSystemListener$MapEditorSystemListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/MapEditorUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_MapEditorSystemListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/MapEditorUi;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/MapEditorUi;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorUi$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/ui/components/MapEditorUi;

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/MapEditorSystem$MapEditorSystemListener$MapEditorSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/components/MapEditorUi;Lcom/prineside/tdi2/ui/components/MapEditorUi$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/components/MapEditorUi$_MapEditorSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/MapEditorUi;)V

    return-void
.end method


# virtual methods
.method public mapGateChanged(IILcom/prineside/tdi2/Gate$Side;Lcom/prineside/tdi2/Gate;)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorUi$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/ui/components/MapEditorUi;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/MapEditorUi;->h(Lcom/prineside/tdi2/ui/components/MapEditorUi;)V

    return-void
.end method

.method public mapTileChanged(IILcom/prineside/tdi2/Tile;)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorUi$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/ui/components/MapEditorUi;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/MapEditorUi;->h(Lcom/prineside/tdi2/ui/components/MapEditorUi;)V

    return-void
.end method

.method public modeChanged(Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorUi$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/ui/components/MapEditorUi;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/MapEditorUi;->g(Lcom/prineside/tdi2/ui/components/MapEditorUi;)V

    return-void
.end method
