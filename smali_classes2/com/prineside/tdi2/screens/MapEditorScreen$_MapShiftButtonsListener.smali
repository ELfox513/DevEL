.class Lcom/prineside/tdi2/screens/MapEditorScreen$_MapShiftButtonsListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/ui/components/MapShiftButtons$MapShiftButtonsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/screens/MapEditorScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_MapShiftButtonsListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/MapEditorScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/MapEditorScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapShiftButtonsListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/screens/MapEditorScreen$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapShiftButtonsListener;-><init>(Lcom/prineside/tdi2/screens/MapEditorScreen;)V

    return-void
.end method


# virtual methods
.method public expanded(Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapShiftButtonsListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/systems/MapEditorSystem;->expandMap(Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;)V

    return-void
.end method

.method public reduced(Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapShiftButtonsListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/systems/MapEditorSystem;->reduceMap(Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;)V

    return-void
.end method

.method public shifted(Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapShiftButtonsListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/systems/MapEditorSystem;->shiftMap(Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;)V

    return-void
.end method
