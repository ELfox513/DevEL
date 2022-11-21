.class Lcom/prineside/tdi2/tiles/CoreTile$5;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/tiles/CoreTile;->fillItemCreationForm(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

.field public final synthetic b:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

.field public final synthetic c:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

.field public final synthetic d:Lcom/prineside/tdi2/tiles/CoreTile;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/tiles/CoreTile;Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/CoreTile$5;->d:Lcom/prineside/tdi2/tiles/CoreTile;

    iput-object p2, p0, Lcom/prineside/tdi2/tiles/CoreTile$5;->a:Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    iput-object p3, p0, Lcom/prineside/tdi2/tiles/CoreTile$5;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iput-object p4, p0, Lcom/prineside/tdi2/tiles/CoreTile$5;->c:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2

    iget-object p1, p0, Lcom/prineside/tdi2/tiles/CoreTile$5;->a:Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    iget-object p2, p0, Lcom/prineside/tdi2/tiles/CoreTile$5;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getSelected()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->setGameValueType(Lcom/prineside/tdi2/enums/GameValueType;)V

    iget-object p1, p0, Lcom/prineside/tdi2/tiles/CoreTile$5;->d:Lcom/prineside/tdi2/tiles/CoreTile;

    iget-object p2, p0, Lcom/prineside/tdi2/tiles/CoreTile$5;->c:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    iget v0, p2, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->customIntA:I

    iget p2, p2, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->customIntB:I

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/CoreTile$5;->a:Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    invoke-virtual {p1, v0, p2, v1}, Lcom/prineside/tdi2/tiles/CoreTile;->setUpgrade(IILcom/prineside/tdi2/tiles/CoreTile$Upgrade;)V

    iget-object p1, p0, Lcom/prineside/tdi2/tiles/CoreTile$5;->c:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateForm()V

    return-void
.end method
