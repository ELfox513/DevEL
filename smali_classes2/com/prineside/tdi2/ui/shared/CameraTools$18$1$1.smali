.class Lcom/prineside/tdi2/ui/shared/CameraTools$18$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/CameraTools$18$1;->input(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/prineside/tdi2/ui/shared/CameraTools$18$1;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/CameraTools$18$1;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$18$1$1;->b:Lcom/prineside/tdi2/ui/shared/CameraTools$18$1;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$18$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$18$1$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$18$1$1;->b:Lcom/prineside/tdi2/ui/shared/CameraTools$18$1;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/shared/CameraTools$18$1;->a:Lcom/prineside/tdi2/ui/shared/CameraTools$18;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/shared/CameraTools$18;->a:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/CameraTools;->c(Lcom/prineside/tdi2/ui/shared/CameraTools;)[Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

    move-result-object v1

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$18$1$1;->b:Lcom/prineside/tdi2/ui/shared/CameraTools$18$1;

    iget-object v2, v2, Lcom/prineside/tdi2/ui/shared/CameraTools$18$1;->a:Lcom/prineside/tdi2/ui/shared/CameraTools$18;

    iget-object v2, v2, Lcom/prineside/tdi2/ui/shared/CameraTools$18;->a:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/shared/CameraTools;->d(Lcom/prineside/tdi2/ui/shared/CameraTools;)I

    move-result v2

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

    move-result-object v0

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$18$1$1;->b:Lcom/prineside/tdi2/ui/shared/CameraTools$18$1;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$18$1;->a:Lcom/prineside/tdi2/ui/shared/CameraTools$18;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$18;->a:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/CameraTools;->updateScenarioMenu()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to load scenario from json: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$18$1$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraTools"

    invoke-static {v2, v1, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "icon-times"

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lcom/prineside/tdi2/enums/StaticSoundType;->FAIL:Lcom/prineside/tdi2/enums/StaticSoundType;

    const-string v4, "Failed to load scenario from JSON"

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    :goto_0
    return-void
.end method
