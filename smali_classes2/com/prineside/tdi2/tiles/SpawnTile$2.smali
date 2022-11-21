.class Lcom/prineside/tdi2/tiles/SpawnTile$2;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/tiles/SpawnTile;->fillItemCreationForm(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

.field public final synthetic b:Lcom/prineside/tdi2/enums/EnemyType;

.field public final synthetic c:Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

.field public final synthetic d:Lcom/prineside/tdi2/tiles/SpawnTile;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/tiles/SpawnTile;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;Lcom/prineside/tdi2/enums/EnemyType;Lcom/prineside/tdi2/ui/actors/LabelToggleButton;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/SpawnTile$2;->d:Lcom/prineside/tdi2/tiles/SpawnTile;

    iput-object p2, p0, Lcom/prineside/tdi2/tiles/SpawnTile$2;->a:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    iput-object p3, p0, Lcom/prineside/tdi2/tiles/SpawnTile$2;->b:Lcom/prineside/tdi2/enums/EnemyType;

    iput-object p4, p0, Lcom/prineside/tdi2/tiles/SpawnTile$2;->c:Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2

    :try_start_0
    iget-object p1, p0, Lcom/prineside/tdi2/tiles/SpawnTile$2;->a:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_1

    iget-object p2, p0, Lcom/prineside/tdi2/tiles/SpawnTile$2;->d:Lcom/prineside/tdi2/tiles/SpawnTile;

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile$2;->b:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/tiles/SpawnTile;->getEnemyConfig(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    move-result-object p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/prineside/tdi2/tiles/SpawnTile$2;->d:Lcom/prineside/tdi2/tiles/SpawnTile;

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile$2;->b:Lcom/prineside/tdi2/enums/EnemyType;

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1, p1}, Lcom/prineside/tdi2/tiles/SpawnTile;->addAllowedEnemy(Lcom/prineside/tdi2/enums/EnemyType;II)V

    iget-object p1, p0, Lcom/prineside/tdi2/tiles/SpawnTile$2;->c:Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iput p1, p2, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->lastWave:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method
