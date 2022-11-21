.class Lcom/prineside/tdi2/tiles/DummyTile$4;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/tiles/DummyTile;->fillItemCreationForm(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

.field public final synthetic c:Lcom/prineside/tdi2/tiles/DummyTile;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/tiles/DummyTile;Ljava/lang/String;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/DummyTile$4;->c:Lcom/prineside/tdi2/tiles/DummyTile;

    iput-object p2, p0, Lcom/prineside/tdi2/tiles/DummyTile$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/prineside/tdi2/tiles/DummyTile$4;->b:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/prineside/tdi2/tiles/DummyTile$4;->c:Lcom/prineside/tdi2/tiles/DummyTile;

    iget-object p2, p0, Lcom/prineside/tdi2/tiles/DummyTile$4;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/DummyTile$4;->b:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/prineside/tdi2/tiles/DummyTile;->setData(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "DummyTile"

    const-string v0, "invalid value"

    invoke-static {p2, v0, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
