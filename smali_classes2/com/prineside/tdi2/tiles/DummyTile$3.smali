.class Lcom/prineside/tdi2/tiles/DummyTile$3;
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
.field public final synthetic a:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final synthetic d:Lcom/prineside/tdi2/tiles/DummyTile;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/tiles/DummyTile;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Image;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/DummyTile$3;->d:Lcom/prineside/tdi2/tiles/DummyTile;

    iput-object p2, p0, Lcom/prineside/tdi2/tiles/DummyTile$3;->a:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    iput-object p3, p0, Lcom/prineside/tdi2/tiles/DummyTile$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/prineside/tdi2/tiles/DummyTile$3;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/prineside/tdi2/tiles/DummyTile$3;->a:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/badlogic/gdx/graphics/Color;->valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    iget-object p2, p0, Lcom/prineside/tdi2/tiles/DummyTile$3;->d:Lcom/prineside/tdi2/tiles/DummyTile;

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/DummyTile$3;->b:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lcom/prineside/tdi2/tiles/DummyTile;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/prineside/tdi2/tiles/DummyTile$3;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
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
