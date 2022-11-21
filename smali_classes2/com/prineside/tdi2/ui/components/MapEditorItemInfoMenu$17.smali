.class Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$17;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->setItem(Lcom/prineside/tdi2/Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:I

.field public final synthetic p:I

.field public final synthetic q:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;II)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$17;->q:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    iput p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$17;->o:I

    iput p3, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$17;->p:I

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$17;->q:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    iget p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$17;->o:I

    invoke-static {p1, p2}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->e(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;I)I

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$17;->q:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    iget p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$17;->p:I

    invoke-static {p1, p2}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->f(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;I)I

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object p2, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$17;->q:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    iget-object p2, p1, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->currentItem:Lcom/prineside/tdi2/Item;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->setItem(Lcom/prineside/tdi2/Item;)V

    return-void
.end method
