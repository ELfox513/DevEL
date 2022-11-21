.class Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$4;
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

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$4;->b:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$4;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$4;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getSelected()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$4;->b:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->O(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object p1

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/prineside/tdi2/BasicLevel;->forcedDifficulty:Lcom/prineside/tdi2/enums/DifficultyMode;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$4;->b:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

    invoke-static {p2}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->O(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object p2

    invoke-static {p1}, Lcom/prineside/tdi2/enums/DifficultyMode;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/DifficultyMode;

    move-result-object p1

    iput-object p1, p2, Lcom/prineside/tdi2/BasicLevel;->forcedDifficulty:Lcom/prineside/tdi2/enums/DifficultyMode;

    :goto_0
    return-void
.end method
