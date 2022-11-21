.class Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

.field public final synthetic b:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$3;->b:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$3;->a:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object v1, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$3;->b:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    iget-object v2, v2, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->currentItem:Lcom/prineside/tdi2/Item;

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/Item;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ItemCreationOverlay"

    invoke-static {v2, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$3;->a:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$3;->a:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$3;->a:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setKeyboardFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$3;->a:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectAll()V

    return-void
.end method
