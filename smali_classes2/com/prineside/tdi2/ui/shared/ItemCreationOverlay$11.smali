.class Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$11;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateForm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

.field public final synthetic b:Lcom/prineside/tdi2/GameValueConfig;

.field public final synthetic c:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;Lcom/prineside/tdi2/GameValueConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$11;->c:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$11;->a:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    iput-object p3, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$11;->b:Lcom/prineside/tdi2/GameValueConfig;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$11;->a:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getText()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$11;->b:Lcom/prineside/tdi2/GameValueConfig;

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p2, Lcom/prineside/tdi2/GameValueConfig;->value:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bad value: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ItemCreationOverlay"

    invoke-static {p2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$11;->c:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateItemIcon()V

    return-void
.end method
