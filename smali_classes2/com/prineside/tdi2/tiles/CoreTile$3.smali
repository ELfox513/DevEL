.class Lcom/prineside/tdi2/tiles/CoreTile$3;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
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
.field public final synthetic o:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

.field public final synthetic p:I

.field public final synthetic q:I

.field public final synthetic r:Lcom/prineside/tdi2/tiles/CoreTile;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/tiles/CoreTile;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;II)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/CoreTile$3;->r:Lcom/prineside/tdi2/tiles/CoreTile;

    iput-object p2, p0, Lcom/prineside/tdi2/tiles/CoreTile$3;->o:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    iput p3, p0, Lcom/prineside/tdi2/tiles/CoreTile$3;->p:I

    iput p4, p0, Lcom/prineside/tdi2/tiles/CoreTile$3;->q:I

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/tiles/CoreTile$3;->o:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    iget p2, p0, Lcom/prineside/tdi2/tiles/CoreTile$3;->p:I

    iput p2, p1, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->customIntA:I

    iget p2, p0, Lcom/prineside/tdi2/tiles/CoreTile$3;->q:I

    iput p2, p1, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->customIntB:I

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateForm()V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object p2, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    return-void
.end method
