.class Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$1;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;-><init>(Lcom/prineside/tdi2/ui/actors/SideMenu;Lcom/prineside/tdi2/CameraController;Lcom/prineside/tdi2/GameSystemProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

.field public final synthetic p:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;Lcom/prineside/tdi2/enums/ItemSubcategoryType;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$1;->p:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$1;->o:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$1;->p:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$1;->o:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->setActiveTab(Lcom/prineside/tdi2/enums/ItemSubcategoryType;)V

    return-void
.end method
