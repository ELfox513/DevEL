.class Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$2$1;->input(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$2$1;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$2$1;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$2$1$1;->b:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$2$1;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$2$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$2$1$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$2$1$1;->b:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$2$1;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$2$1;->a:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$2;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$2;->a:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/Item;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Item;

    move-result-object v0

    iput-object v0, v1, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->currentItem:Lcom/prineside/tdi2/Item;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$2$1$1;->b:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$2$1;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$2$1;->a:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$2;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$2;->a:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateForm()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    const/4 v1, 0x0

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lcom/prineside/tdi2/enums/StaticSoundType;->FAIL:Lcom/prineside/tdi2/enums/StaticSoundType;

    const-string v4, "Failed to parse JSON"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    :goto_0
    return-void
.end method
