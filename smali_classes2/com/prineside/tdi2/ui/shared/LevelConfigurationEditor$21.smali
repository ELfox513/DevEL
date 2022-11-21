.class Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$21;
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
.field public final synthetic a:Lcom/prineside/tdi2/BasicLevelQuestConfig;

.field public final synthetic b:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

.field public final synthetic c:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/BasicLevelQuestConfig;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$21;->c:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$21;->a:Lcom/prineside/tdi2/BasicLevelQuestConfig;

    iput-object p3, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$21;->b:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2

    :try_start_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$21;->a:Lcom/prineside/tdi2/BasicLevelQuestConfig;

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$21;->b:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/prineside/tdi2/BasicLevelQuestConfig;->requiredValue:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
