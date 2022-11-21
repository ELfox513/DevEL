.class Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$11;
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
.field public final synthetic a:Lcom/prineside/tdi2/EnemyGroup;

.field public final synthetic b:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

.field public final synthetic c:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/EnemyGroup;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$11;->c:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$11;->a:Lcom/prineside/tdi2/EnemyGroup;

    iput-object p3, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$11;->b:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$11;->a:Lcom/prineside/tdi2/EnemyGroup;

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$11;->b:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    iput p2, p1, Lcom/prineside/tdi2/EnemyGroup;->delay:F

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$11;->a:Lcom/prineside/tdi2/EnemyGroup;

    iget p2, p1, Lcom/prineside/tdi2/EnemyGroup;->delay:F

    const/4 v0, 0x0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_0

    iput v0, p1, Lcom/prineside/tdi2/EnemyGroup;->delay:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
