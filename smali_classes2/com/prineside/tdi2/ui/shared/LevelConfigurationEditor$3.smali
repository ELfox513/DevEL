.class Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$3;
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
.field public final synthetic a:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

.field public final synthetic b:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$3;->b:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$3;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$3;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getSelected()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, " - "

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$3;->b:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->O(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->unloadLevel(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$3;->b:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

    invoke-static {p2}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->O(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object p2

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iput-object p1, p2, Lcom/prineside/tdi2/BasicLevel;->stageName:Ljava/lang/String;

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$3;->b:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

    invoke-static {p2}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->O(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/managers/BasicLevelManager;->registerLevel(Lcom/prineside/tdi2/BasicLevel;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$3;->b:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->Q(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V

    return-void
.end method
