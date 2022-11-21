.class Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$3;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;-><init>(Lcom/prineside/tdi2/screens/MapEditorScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$3;->o:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$3;->o:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->setMinimized(Z)V

    return-void
.end method
