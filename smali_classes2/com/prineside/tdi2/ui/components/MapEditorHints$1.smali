.class Lcom/prineside/tdi2/ui/components/MapEditorHints$1;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/MapEditorHints;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/prineside/tdi2/ui/components/MapEditorHints;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/MapEditorHints;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorHints$1;->o:Lcom/prineside/tdi2/ui/components/MapEditorHints;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    const-string p1, "MapEditorHints"

    const-string p2, "click"

    invoke-static {p1, p2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorHints$1;->o:Lcom/prineside/tdi2/ui/components/MapEditorHints;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/components/MapEditorHints;->hide()V

    return-void
.end method
