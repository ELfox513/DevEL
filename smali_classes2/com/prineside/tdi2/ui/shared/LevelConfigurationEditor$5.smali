.class Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$5;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->N0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/enums/ResourceType;

.field public final synthetic b:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

.field public final synthetic c:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/enums/ResourceType;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$5;->c:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$5;->a:Lcom/prineside/tdi2/enums/ResourceType;

    iput-object p3, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$5;->b:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$5;->c:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->O(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/BasicLevel;->priceInResources:[I

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$5;->a:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$5;->b:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, p1, p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
