.class Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$20;
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

.field public final synthetic b:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

.field public final synthetic c:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/BasicLevelQuestConfig;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$20;->c:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$20;->a:Lcom/prineside/tdi2/BasicLevelQuestConfig;

    iput-object p3, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$20;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$20;->a:Lcom/prineside/tdi2/BasicLevelQuestConfig;

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$20;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getSelected()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/prineside/tdi2/enums/StatisticsType;

    iput-object p2, p1, Lcom/prineside/tdi2/BasicLevelQuestConfig;->statisticsType:Lcom/prineside/tdi2/enums/StatisticsType;

    return-void
.end method
