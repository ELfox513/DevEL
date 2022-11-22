.class public Lcom/prineside/tdi2/managers/BasicLevelManager;
.super Lcom/prineside/tdi2/Manager$ManagerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/BasicLevelManager$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;,
        Lcom/prineside/tdi2/managers/BasicLevelManager$QuestsPrestigeMilestone;,
        Lcom/prineside/tdi2/managers/BasicLevelManager$BasicLevelManagerListener;,
        Lcom/prineside/tdi2/managers/BasicLevelManager$Serializer;
    }
.end annotation


# static fields
.field public static final PREVIEW_HEIGHT:I = 0xe6

.field public static final PREVIEW_WIDTH:I = 0x136

.field public static final z:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/BasicLevel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Lcom/prineside/tdi2/BasicLevelStage;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Lcom/prineside/tdi2/BasicLevel;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/badlogic/gdx/utils/ObjectSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final defaultLevelNames:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lcom/badlogic/gdx/utils/ObjectSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final levelsOrdered:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/BasicLevel;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Lcom/prineside/tdi2/BasicLevelQuestConfig;",
            ">;"
        }
    .end annotation
.end field

.field public q:Z

.field public r:Z

.field public s:I

.field public final stagesOrdered:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/BasicLevelStage;",
            ">;"
        }
    .end annotation
.end field

.field public t:Lcom/badlogic/gdx/graphics/OrthographicCamera;

.field public u:Lcom/prineside/tdi2/CameraController;

.field public v:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

.field public w:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

.field public x:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;",
            ">;"
        }
    .end annotation
.end field

.field public final y:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/managers/BasicLevelManager$BasicLevelManagerListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/BasicLevel;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/prineside/tdi2/managers/BasicLevelManager;->z:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/prineside/tdi2/Manager$ManagerAdapter;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/BasicLevelStage;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->stagesOrdered:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->defaultLevelNames:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/BasicLevel;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->levelsOrdered:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->d:Lcom/badlogic/gdx/utils/ObjectSet;

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->k:Lcom/badlogic/gdx/utils/ObjectSet;

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->p:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->x:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZI)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->y:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;

    const/high16 v1, 0x439b0000    # 310.0f

    const/high16 v3, 0x43660000    # 230.0f

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/graphics/OrthographicCamera;-><init>(FF)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->t:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    new-instance v0, Lcom/prineside/tdi2/CameraController;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->t:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-direct {v0, v1, v2, v2}, Lcom/prineside/tdi2/CameraController;-><init>(Lcom/badlogic/gdx/graphics/OrthographicCamera;II)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->u:Lcom/prineside/tdi2/CameraController;

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->reload()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/prineside/tdi2/managers/BasicLevelManager;->i()V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/managers/BasicLevelManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->reload()V

    return-void
.end method

.method public static synthetic c(Lcom/prineside/tdi2/managers/BasicLevelManager;)Lcom/badlogic/gdx/graphics/g2d/SpriteCache;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->w:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    return-object p0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/managers/BasicLevelManager;Lcom/badlogic/gdx/graphics/g2d/SpriteCache;)Lcom/badlogic/gdx/graphics/g2d/SpriteCache;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->w:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    return-object p1
.end method

.method public static synthetic e(Lcom/prineside/tdi2/managers/BasicLevelManager;)Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->v:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    return-object p0
.end method

.method public static synthetic f(Lcom/prineside/tdi2/managers/BasicLevelManager;Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;)Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->v:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    return-object p1
.end method

.method public static synthetic g(Lcom/prineside/tdi2/managers/BasicLevelManager;)Lcom/prineside/tdi2/CameraController;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->u:Lcom/prineside/tdi2/CameraController;

    return-object p0
.end method

.method public static synthetic h(Lcom/prineside/tdi2/managers/BasicLevelManager;)Lcom/badlogic/gdx/graphics/OrthographicCamera;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->t:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    return-object p0
.end method

.method public static synthetic i()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ResearchManager;->updateAndValidateStarBranch()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/prineside/tdi2/managers/BasicLevelManager$BasicLevelManagerListener;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->y:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->y:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public canBePurchased(Lcom/prineside/tdi2/BasicLevel;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Lcom/prineside/tdi2/BasicLevel;->openRequirements:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/Requirement;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Requirement;->isSatisfied()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v1, p1, Lcom/prineside/tdi2/BasicLevel;->priceInMoney:I

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/ProgressManager;->getGreenPapers()I

    move-result v2

    if-le v1, v2, :cond_2

    return v0

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p1, Lcom/prineside/tdi2/BasicLevel;->priceInResources:[I

    array-length v3, v2

    if-ge v1, v3, :cond_4

    aget v2, v2, v1

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    sget-object v4, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/ProgressManager;->getResources(Lcom/prineside/tdi2/enums/ResourceType;)I

    move-result v3

    if-le v2, v3, :cond_3

    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public generateLevelsJson()Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    const-string v2, "stages"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->stagesOrdered:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v4, :cond_0

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/BasicLevelStage;

    aget-object v3, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    const-string v2, "levels"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generatePreview(Lcom/prineside/tdi2/Map;)Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;-><init>(Lcom/prineside/tdi2/managers/BasicLevelManager;Lcom/prineside/tdi2/Map;Lcom/prineside/tdi2/managers/BasicLevelManager$1;)V

    iget-object p1, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->x:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getGainedStars()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->stagesOrdered:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v3, :cond_0

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/BasicLevelStage;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getGainedStars(Lcom/prineside/tdi2/BasicLevelStage;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getGainedStars(Lcom/prineside/tdi2/BasicLevel;)I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p1, Lcom/prineside/tdi2/BasicLevel;->waveQuests:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v4, :cond_2

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/BasicLevel$WaveQuest;

    invoke-virtual {v3}, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->isCompleted()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    :goto_1
    iget-object v5, v3, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->prizes:Lcom/badlogic/gdx/utils/Array;

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v6, :cond_1

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v5}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v6

    sget-object v7, Lcom/prineside/tdi2/Item$D;->STAR:Lcom/prineside/tdi2/items/StarItem;

    if-ne v6, v7, :cond_0

    invoke-virtual {v5}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v5

    add-int/2addr v2, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lcom/prineside/tdi2/BasicLevel;->quests:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v4, :cond_5

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/BasicLevelQuestConfig;

    invoke-virtual {v3}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->isCompleted()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    :goto_3
    iget-object v5, v3, Lcom/prineside/tdi2/BasicLevelQuestConfig;->prizes:Lcom/badlogic/gdx/utils/Array;

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v6, :cond_4

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v5}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v6

    sget-object v7, Lcom/prineside/tdi2/Item$D;->STAR:Lcom/prineside/tdi2/items/StarItem;

    if-ne v6, v7, :cond_3

    invoke-virtual {v5}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v5

    add-int/2addr v2, v5

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return v2
.end method

.method public getGainedStars(Lcom/prineside/tdi2/BasicLevelStage;)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Lcom/prineside/tdi2/BasicLevelStage;->levels:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v3, :cond_1

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, [Lcom/prineside/tdi2/BasicLevel;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/prineside/tdi2/BasicLevel;->dailyQuest:Z

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    check-cast v2, [Lcom/prineside/tdi2/BasicLevel;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getGainedStars(Lcom/prineside/tdi2/BasicLevel;)I

    move-result v2

    add-int/2addr v1, v2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/BasicLevel;

    return-object p1
.end method

.method public getLevelStage(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevelStage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/BasicLevel;->stageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getStage(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevelStage;

    move-result-object p1

    return-object p1
.end method

.method public getMasteredLevels()Lcom/badlogic/gdx/utils/Array;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/BasicLevel;",
            ">;"
        }
    .end annotation

    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getStage(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevelStage;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/managers/BasicLevelManager;->z:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->levelsOrdered:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_1

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/BasicLevel;

    aget-object v2, v2, v1

    iget-object v3, v2, Lcom/prineside/tdi2/BasicLevel;->stageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getStage(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevelStage;

    move-result-object v3

    if-eq v3, v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/managers/BasicLevelManager;->isMastered(Lcom/prineside/tdi2/BasicLevel;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/prineside/tdi2/managers/BasicLevelManager;->z:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/managers/BasicLevelManager;->z:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getMaxStars(Lcom/prineside/tdi2/BasicLevelStage;Z)I
    .locals 3

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/prineside/tdi2/BasicLevelStage;->levels:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p2, v2, :cond_1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/BasicLevel;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/managers/BasicLevelManager;->isVisible(Lcom/prineside/tdi2/BasicLevel;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x3

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    iget-object p1, p1, Lcom/prineside/tdi2/BasicLevelStage;->levels:Lcom/badlogic/gdx/utils/Array;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    mul-int/lit8 p1, p1, 0x3

    return p1
.end method

.method public getMaxStarsCount()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->s:I

    return v0
.end method

.method public getPrestigeCompletedQuests()I
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->stagesOrdered:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v4, :cond_3

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/BasicLevelStage;

    aget-object v3, v3, v1

    iget-boolean v4, v3, Lcom/prineside/tdi2/BasicLevelStage;->regular:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    :goto_1
    iget-object v5, v3, Lcom/prineside/tdi2/BasicLevelStage;->levels:Lcom/badlogic/gdx/utils/Array;

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v6, :cond_2

    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/BasicLevel;

    aget-object v5, v5, v4

    const/4 v6, 0x0

    :goto_2
    iget-object v7, v5, Lcom/prineside/tdi2/BasicLevel;->quests:Lcom/badlogic/gdx/utils/Array;

    iget v8, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v6, v8, :cond_1

    iget-object v7, v7, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/BasicLevelQuestConfig;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->isCompleted()Z

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public getPrestigeMaxCompletedQuests()I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->stagesOrdered:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v4, :cond_1

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/BasicLevelStage;

    aget-object v3, v3, v1

    iget-boolean v4, v3, Lcom/prineside/tdi2/BasicLevelStage;->regular:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    :goto_1
    iget-object v5, v3, Lcom/prineside/tdi2/BasicLevelStage;->levels:Lcom/badlogic/gdx/utils/Array;

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v6, :cond_0

    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/BasicLevel;

    aget-object v5, v5, v4

    iget-object v5, v5, Lcom/prineside/tdi2/BasicLevel;->quests:Lcom/badlogic/gdx/utils/Array;

    iget v5, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getQuestSkipPrice(Lcom/prineside/tdi2/BasicLevelQuestConfig;)I
    .locals 5

    iget-boolean v0, p1, Lcom/prineside/tdi2/BasicLevelQuestConfig;->scripted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p1, Lcom/prineside/tdi2/BasicLevelQuestConfig;->level:Lcom/prineside/tdi2/BasicLevel;

    iget-object v0, v0, Lcom/prineside/tdi2/BasicLevel;->stageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getStage(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevelStage;

    move-result-object v0

    iget-boolean v0, v0, Lcom/prineside/tdi2/BasicLevelStage;->regular:Z

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p1, Lcom/prineside/tdi2/BasicLevelQuestConfig;->prizes:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v3, :cond_4

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/ItemStack;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/Item$D;->STAR:Lcom/prineside/tdi2/items/StarItem;

    if-ne v2, v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p1, Lcom/prineside/tdi2/BasicLevelQuestConfig;->level:Lcom/prineside/tdi2/BasicLevel;

    iget-object v2, v2, Lcom/prineside/tdi2/BasicLevel;->quests:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_6

    iget-object v0, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/BasicLevelQuestConfig;

    aget-object v0, v0, v1

    if-ne v0, p1, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_1

    :cond_6
    move v1, v0

    :goto_2
    add-int/lit8 v1, v1, 0xa

    return v1
.end method

.method public getQuestsPrestigeMilestones()[Lcom/prineside/tdi2/managers/BasicLevelManager$QuestsPrestigeMilestone;
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->PRESTIGE_DUST_DROP_RATE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/prineside/tdi2/managers/BasicLevelManager$QuestsPrestigeMilestone;

    new-instance v2, Lcom/prineside/tdi2/managers/BasicLevelManager$QuestsPrestigeMilestone;

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v3, v3, v0

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v3

    const/16 v4, 0x19

    invoke-direct {v2, v4, v3}, Lcom/prineside/tdi2/managers/BasicLevelManager$QuestsPrestigeMilestone;-><init>(II)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/prineside/tdi2/managers/BasicLevelManager$QuestsPrestigeMilestone;

    const/high16 v3, 0x437a0000    # 250.0f

    mul-float v3, v3, v0

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v3

    const/16 v4, 0x32

    invoke-direct {v2, v4, v3}, Lcom/prineside/tdi2/managers/BasicLevelManager$QuestsPrestigeMilestone;-><init>(II)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lcom/prineside/tdi2/managers/BasicLevelManager$QuestsPrestigeMilestone;

    const/high16 v3, 0x44160000    # 600.0f

    mul-float v3, v3, v0

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v3

    const/16 v4, 0x4b

    invoke-direct {v2, v4, v3}, Lcom/prineside/tdi2/managers/BasicLevelManager$QuestsPrestigeMilestone;-><init>(II)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lcom/prineside/tdi2/managers/BasicLevelManager$QuestsPrestigeMilestone;

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v0, v0, v3

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v0

    const/16 v3, 0x64

    invoke-direct {v2, v3, v0}, Lcom/prineside/tdi2/managers/BasicLevelManager$QuestsPrestigeMilestone;-><init>(II)V

    const/4 v0, 0x3

    aput-object v2, v1, v0

    return-object v1
.end method

.method public getRegularQuestById(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevelQuestConfig;
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->p:Lcom/badlogic/gdx/utils/ObjectMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/BasicLevelQuestConfig;

    return-object p1
.end method

.method public getStage(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevelStage;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/BasicLevelStage;

    return-object p1
.end method

.method public isMastered(Lcom/prineside/tdi2/BasicLevel;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Lcom/prineside/tdi2/BasicLevel;->quests:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/BasicLevelQuestConfig;

    invoke-virtual {v2}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->isCompleted()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p1, Lcom/prineside/tdi2/BasicLevel;->waveQuests:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_3

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/BasicLevel$WaveQuest;

    invoke-virtual {v2}, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->isCompleted()Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public isOpened(Lcom/prineside/tdi2/BasicLevel;)Z
    .locals 5

    iget-boolean v0, p1, Lcom/prineside/tdi2/BasicLevel;->purchased:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p1, Lcom/prineside/tdi2/BasicLevel;->priceInMoney:I

    const/4 v2, 0x0

    if-lez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p1, Lcom/prineside/tdi2/BasicLevel;->priceInResources:[I

    array-length v4, v3

    if-ge v0, v4, :cond_3

    aget v3, v3, v0

    if-lez v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p1, Lcom/prineside/tdi2/BasicLevel;->openRequirements:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v4, :cond_5

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/Requirement;

    invoke-virtual {v3}, Lcom/prineside/tdi2/Requirement;->isSatisfied()Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return v1
.end method

.method public isQuestCompleted(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->d:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isQuestEverCompleted(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->k:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isVisible(Lcom/prineside/tdi2/BasicLevel;)Z
    .locals 4

    iget-object v0, p1, Lcom/prineside/tdi2/BasicLevel;->stageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getStage(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevelStage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->isVisible(Lcom/prineside/tdi2/BasicLevelStage;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p1, Lcom/prineside/tdi2/BasicLevel;->showRequirements:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v3, :cond_2

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/Requirement;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Requirement;->isSatisfied()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public isVisible(Lcom/prineside/tdi2/BasicLevelStage;)Z
    .locals 4

    invoke-static {}, Lcom/prineside/tdi2/Config;->isModdingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/prineside/tdi2/BasicLevelStage;->name:Ljava/lang/String;

    const-string v0, "-1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Lcom/prineside/tdi2/BasicLevelStage;->showRequirements:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/Requirement;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Requirement;->isSatisfied()Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public loadAndRegisterLevelFromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/BasicLevel;
    .locals 0

    invoke-static {p1}, Lcom/prineside/tdi2/BasicLevel;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/BasicLevelManager;->registerLevel(Lcom/prineside/tdi2/BasicLevel;)V

    return-object p1
.end method

.method public mapEditingAvailable()Z
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->isDeveloperModeEnabled()Z

    move-result v0

    return v0
.end method

.method public playedBefore(Lcom/prineside/tdi2/BasicLevel;)Z
    .locals 0

    iget p1, p1, Lcom/prineside/tdi2/BasicLevel;->gameStartsCount:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public postRender(F)V
    .locals 1

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->q:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->r:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->save()V

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->x:Lcom/badlogic/gdx/utils/Array;

    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->generate()V

    :cond_2
    return-void
.end method

.method public registerLevel(Lcom/prineside/tdi2/BasicLevel;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/prineside/tdi2/BasicLevel;->quests:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_0

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/BasicLevelQuestConfig;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->p:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v3, v1, Lcom/prineside/tdi2/BasicLevelQuestConfig;->id:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->unloadLevel(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/prineside/tdi2/BasicLevel;->stageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getStage(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevelStage;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/prineside/tdi2/Config;->isModdingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/prineside/tdi2/BasicLevelStage;->name:Ljava/lang/String;

    const-string v2, "-1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skipping level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from stage "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/prineside/tdi2/BasicLevelStage;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " due to the modding mode"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BasicLevelManager"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcom/prineside/tdi2/BasicLevelStage;->levels:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->levelsOrdered:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v1, p1, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/prineside/tdi2/BasicLevel;->stageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final reload()V
    .locals 12

    const-string v0, "failed to parse json: "

    const-string v1, "BasicLevelManager"

    const-string v2, "reload"

    invoke-static {v1, v2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->levelsOrdered:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v2, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    iget-object v2, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    iget-object v2, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->stagesOrdered:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v2, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->d:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ObjectSet;->clear()V

    iget-object v2, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->k:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ObjectSet;->clear()V

    new-instance v2, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    const-string v3, "res/basic-level-stages.json"

    invoke-static {v3}, Lcom/prineside/tdi2/managers/AssetManager;->localOrInternalFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-static {v3}, Lcom/prineside/tdi2/BasicLevelStage;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/BasicLevelStage;

    move-result-object v3

    iget-object v4, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v5, v3, Lcom/prineside/tdi2/BasicLevelStage;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v5, v3, Lcom/prineside/tdi2/BasicLevelStage;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->stagesOrdered:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stage with name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/prineside/tdi2/BasicLevelStage;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->defaultLevelNames:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    new-instance v2, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v4, "res/basic-levels.json"

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v4, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->defaultLevelNames:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v2}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    const-string v4, "UTF-8"

    if-eq v2, v3, :cond_3

    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v2}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/Application$ApplicationType;->HeadlessDesktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->defaultLevelNames:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v5}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    sget-object v6, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "levels/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".json"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/files/FileHandle;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/prineside/tdi2/managers/BasicLevelManager;->loadAndRegisterLevelFromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/BasicLevel;

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v3, "levels"

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    array-length v3, v2

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v3, :cond_5

    aget-object v7, v2, v6

    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_4

    :cond_4
    :try_start_0
    new-instance v8, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v8}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/files/FileHandle;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/prineside/tdi2/managers/BasicLevelManager;->loadAndRegisterLevelFromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/BasicLevel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to load local level "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7, v8}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_5
    iget-object v3, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->stagesOrdered:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v4, :cond_6

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/BasicLevelStage;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/prineside/tdi2/BasicLevelStage;->sortLevels()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v3, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_PROGRESS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v2

    const-string v3, "basicLevelCompletedQuests"

    const-string v4, "[]"

    invoke-virtual {v2, v3, v4}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_1
    new-instance v6, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v6}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v6, v3}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v8, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->d:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v6}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    const-string v3, "basicLevelEverCompletedQuests"

    invoke-virtual {v2, v3, v4}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_2
    new-instance v6, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v6}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v6, v3}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v8, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->k:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_2
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v6}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    iget-object v3, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->d:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/ObjectSet;->iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    move-result-object v3

    :cond_9
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->k:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/ObjectSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->k:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_a
    const-string v3, "basicLevels"

    invoke-virtual {v2, v3, v4}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_3
    new-instance v3, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v3

    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    const-string v6, "n"

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/prineside/tdi2/BasicLevel;

    if-eqz v6, :cond_b

    const-string v7, "ms"

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v7, v8, v9}, Lcom/badlogic/gdx/utils/JsonValue;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/prineside/tdi2/BasicLevel;->maxScore:J

    const-string v7, "mrw"

    invoke-virtual {v4, v7, v5}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/prineside/tdi2/BasicLevel;->maxReachedWave:I

    const-string v7, "mpt"

    invoke-virtual {v4, v7, v5}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/prineside/tdi2/BasicLevel;->maxPlayingTime:I

    const-string v7, "p"

    invoke-virtual {v4, v7, v5}, Lcom/badlogic/gdx/utils/JsonValue;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v6, Lcom/prineside/tdi2/BasicLevel;->purchased:Z

    const-string v7, "gsc"

    invoke-virtual {v4, v7, v5}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/prineside/tdi2/BasicLevel;->gameStartsCount:I

    const-string v7, "sv"

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/utils/JsonValue;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_a
    :try_start_4
    iget-object v10, v6, Lcom/prineside/tdi2/BasicLevel;->quests:Lcom/badlogic/gdx/utils/Array;

    iget v11, v10, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v9, v11, :cond_d

    invoke-virtual {v10, v9}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/prineside/tdi2/BasicLevelQuestConfig;

    invoke-virtual {v10}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->getId()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v7, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    iget-object v8, v6, Lcom/prineside/tdi2/BasicLevel;->quests:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/prineside/tdi2/BasicLevelQuestConfig;

    goto :goto_b

    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_d
    :goto_b
    if-eqz v8, :cond_e

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v9

    long-to-double v9, v9

    iput-wide v9, v8, Lcom/prineside/tdi2/BasicLevelQuestConfig;->savedValue:D

    goto :goto_9

    :cond_e
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Quest not found"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    move-exception v8

    :try_start_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to load quest \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' savedValue"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7, v8}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_9

    :catch_4
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>()V

    const/4 v1, 0x0

    :goto_c
    iget-object v2, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->levelsOrdered:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_14

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/BasicLevel;

    const/4 v3, 0x0

    :goto_d
    iget-object v4, v2, Lcom/prineside/tdi2/BasicLevel;->quests:Lcom/badlogic/gdx/utils/Array;

    iget v6, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    const-string v7, "Duplicate quest id "

    if-ge v3, v6, :cond_11

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/BasicLevelQuestConfig;

    invoke-virtual {v4}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/ObjectSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-virtual {v4}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    const/4 v3, 0x0

    :goto_e
    iget-object v4, v2, Lcom/prineside/tdi2/BasicLevel;->waveQuests:Lcom/badlogic/gdx/utils/Array;

    iget v6, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v6, :cond_13

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/BasicLevel$WaveQuest;

    iget-object v6, v4, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->id:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/ObjectSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    iget-object v4, v4, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->id:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v4, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_14
    iput v5, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->s:I

    const/4 v0, 0x0

    :goto_f
    iget-object v1, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->levelsOrdered:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_1b

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/BasicLevel;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    :goto_10
    iget-object v3, v1, Lcom/prineside/tdi2/BasicLevel;->quests:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_17

    const/4 v3, 0x0

    :goto_11
    iget-object v4, v1, Lcom/prineside/tdi2/BasicLevel;->quests:Lcom/badlogic/gdx/utils/Array;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v6, v4

    check-cast v6, [Lcom/prineside/tdi2/BasicLevelQuestConfig;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/prineside/tdi2/BasicLevelQuestConfig;->prizes:Lcom/badlogic/gdx/utils/Array;

    iget v6, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v6, :cond_16

    check-cast v4, [Lcom/prineside/tdi2/BasicLevelQuestConfig;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/prineside/tdi2/BasicLevelQuestConfig;->prizes:Lcom/badlogic/gdx/utils/Array;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/ItemStack;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v6

    sget-object v7, Lcom/prineside/tdi2/Item$D;->STAR:Lcom/prineside/tdi2/items/StarItem;

    if-ne v6, v7, :cond_15

    iget v6, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->s:I

    invoke-virtual {v4}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v4

    add-int/2addr v6, v4

    iput v6, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->s:I

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_17
    const/4 v2, 0x0

    :goto_12
    iget-object v3, v1, Lcom/prineside/tdi2/BasicLevel;->waveQuests:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_1a

    const/4 v3, 0x0

    :goto_13
    iget-object v4, v1, Lcom/prineside/tdi2/BasicLevel;->waveQuests:Lcom/badlogic/gdx/utils/Array;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v6, v4

    check-cast v6, [Lcom/prineside/tdi2/BasicLevel$WaveQuest;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->prizes:Lcom/badlogic/gdx/utils/Array;

    iget v6, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v6, :cond_19

    check-cast v4, [Lcom/prineside/tdi2/BasicLevel$WaveQuest;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->prizes:Lcom/badlogic/gdx/utils/Array;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/ItemStack;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v6

    sget-object v7, Lcom/prineside/tdi2/Item$D;->STAR:Lcom/prineside/tdi2/items/StarItem;

    if-ne v6, v7, :cond_18

    iget v6, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->s:I

    invoke-virtual {v4}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v4

    add-int/2addr v6, v4

    iput v6, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->s:I

    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_f

    :cond_1b
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/managers/f;

    invoke-direct {v1}, Lcom/prineside/tdi2/managers/f;-><init>()V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeListener(Lcom/prineside/tdi2/managers/BasicLevelManager$BasicLevelManagerListener;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->y:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    return-void
.end method

.method public resetQuestsForPrestige()V
    .locals 11

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getPrestigeMaxCompletedQuests()I

    move-result v0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getPrestigeCompletedQuests()I

    move-result v1

    int-to-double v1, v1

    int-to-double v3, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double v1, v1, v3

    const-wide v3, 0x3f1a36e2eb1c432dL    # 1.0E-4

    add-double/2addr v1, v3

    double-to-int v0, v1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getQuestsPrestigeMilestones()[Lcom/prineside/tdi2/managers/BasicLevelManager$QuestsPrestigeMilestone;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_8

    aget-object v4, v1, v2

    iget v5, v4, Lcom/prineside/tdi2/managers/BasicLevelManager$QuestsPrestigeMilestone;->percentage:I

    if-lt v0, v5, :cond_7

    iget v0, v4, Lcom/prineside/tdi2/managers/BasicLevelManager$QuestsPrestigeMilestone;->tokensCount:I

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    sget-object v2, Lcom/prineside/tdi2/Item$D;->PRESTIGE_TOKEN:Lcom/prineside/tdi2/items/PrestigeTokenItem;

    invoke-virtual {v1, v2, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->addItems(Lcom/prineside/tdi2/Item;I)V

    new-instance v1, Lcom/prineside/tdi2/IssuedItems;

    sget-object v2, Lcom/prineside/tdi2/IssuedItems$IssueReason;->QUESTS_PRESTIGE:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v4

    invoke-direct {v1, v2, v4}, Lcom/prineside/tdi2/IssuedItems;-><init>(Lcom/prineside/tdi2/IssuedItems$IssueReason;I)V

    iget-object v2, v1, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    new-instance v4, Lcom/prineside/tdi2/ItemStack;

    sget-object v5, Lcom/prineside/tdi2/Item$D;->PRESTIGE_TOKEN:Lcom/prineside/tdi2/items/PrestigeTokenItem;

    invoke-direct {v4, v5, v0}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v2, v1, v3}, Lcom/prineside/tdi2/managers/ProgressManager;->addIssuedPrizes(Lcom/prineside/tdi2/IssuedItems;Z)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v2, Lcom/prineside/tdi2/enums/StatisticsType;->PQR:Lcom/prineside/tdi2/enums/StatisticsType;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v1, v2, v4, v5}, Lcom/prineside/tdi2/managers/StatisticsManager;->registerDelta(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v2, Lcom/prineside/tdi2/enums/StatisticsType;->PPG:Lcom/prineside/tdi2/enums/StatisticsType;

    int-to-double v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lcom/prineside/tdi2/managers/StatisticsManager;->registerDelta(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->stagesOrdered:Lcom/badlogic/gdx/utils/Array;

    iget v4, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v4, :cond_5

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/BasicLevelStage;

    aget-object v2, v2, v1

    iget-boolean v4, v2, Lcom/prineside/tdi2/BasicLevelStage;->regular:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    :goto_2
    iget-object v5, v2, Lcom/prineside/tdi2/BasicLevelStage;->levels:Lcom/badlogic/gdx/utils/Array;

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v6, :cond_4

    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/BasicLevel;

    aget-object v5, v5, v4

    const/4 v6, 0x0

    :goto_3
    iget-object v7, v5, Lcom/prineside/tdi2/BasicLevel;->quests:Lcom/badlogic/gdx/utils/Array;

    iget v8, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v6, v8, :cond_3

    iget-object v7, v7, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/BasicLevelQuestConfig;

    aget-object v7, v7, v6

    const/4 v8, 0x0

    :goto_4
    iget-object v9, v7, Lcom/prineside/tdi2/BasicLevelQuestConfig;->prizes:Lcom/badlogic/gdx/utils/Array;

    iget v10, v9, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v8, v10, :cond_1

    iget-object v9, v9, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v9, [Lcom/prineside/tdi2/ItemStack;

    aget-object v9, v9, v8

    invoke-virtual {v9}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v9

    sget-object v10, Lcom/prineside/tdi2/Item$D;->STAR:Lcom/prineside/tdi2/items/StarItem;

    if-ne v9, v10, :cond_0

    goto :goto_5

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_1
    invoke-virtual {v7}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->isCompleted()Z

    move-result v8

    if-eqz v8, :cond_2

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Lcom/prineside/tdi2/BasicLevelQuestConfig;->savedValue:D

    invoke-virtual {v7, v0}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->setCompleted(Z)V

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->save()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->dailyQuestManager:Lcom/prineside/tdi2/managers/DailyQuestManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/DailyQuestManager;->getDailyLootCurrentQuest()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_resetQuests"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->dailyQuestManager:Lcom/prineside/tdi2/managers/DailyQuestManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/DailyQuestManager;->setDailyLootQuestCompleted()Lcom/prineside/tdi2/IssuedItems;

    :cond_6
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->showNewlyIssuedPrizesPopup()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->PRESTIGE:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v0, v1, v3}, Lcom/prineside/tdi2/managers/AchievementManager;->setProgress(Lcom/prineside/tdi2/enums/AchievementType;I)V

    goto :goto_6

    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    :cond_8
    :goto_6
    const-string v0, "BasicLevelManager"

    const-string v1, "no milestone reached, can\'t prestige quests"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public save()V
    .locals 13

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->r:Z

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v2, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_PROGRESS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v1

    new-instance v2, Lcom/badlogic/gdx/utils/Json;

    sget-object v3, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart()V

    iget-object v4, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->d:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/ObjectSet;->iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "basicLevelCompletedQuests"

    invoke-virtual {v1, v3, v2}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/badlogic/gdx/utils/Json;

    sget-object v3, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart()V

    iget-object v4, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->k:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/ObjectSet;->iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "basicLevelEverCompletedQuests"

    invoke-virtual {v1, v3, v2}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/badlogic/gdx/utils/Json;

    sget-object v3, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart()V

    const/4 v4, 0x0

    :goto_2
    iget-object v5, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->levelsOrdered:Lcom/badlogic/gdx/utils/Array;

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v6, :cond_5

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/BasicLevel;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    iget-object v6, v5, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    const-string v7, "n"

    invoke-virtual {v2, v7, v6}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v6, v5, Lcom/prineside/tdi2/BasicLevel;->purchased:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "p"

    invoke-virtual {v2, v7, v6}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v6, v5, Lcom/prineside/tdi2/BasicLevel;->gameStartsCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "gsc"

    invoke-virtual {v2, v7, v6}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v6, v5, Lcom/prineside/tdi2/BasicLevel;->maxReachedWave:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "mrw"

    invoke-virtual {v2, v7, v6}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v6, v5, Lcom/prineside/tdi2/BasicLevel;->maxPlayingTime:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "mpt"

    invoke-virtual {v2, v7, v6}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v6, v5, Lcom/prineside/tdi2/BasicLevel;->maxScore:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v2, v7, v6}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "sv"

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V

    const/4 v6, 0x0

    :goto_3
    iget-object v7, v5, Lcom/prineside/tdi2/BasicLevel;->quests:Lcom/badlogic/gdx/utils/Array;

    iget v8, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v6, v8, :cond_4

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/prineside/tdi2/BasicLevelQuestConfig;

    invoke-virtual {v7}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->isCompleted()Z

    move-result v8

    if-nez v8, :cond_3

    iget-wide v8, v7, Lcom/prineside/tdi2/BasicLevelQuestConfig;->savedValue:D

    const-wide/16 v10, 0x0

    cmpl-double v12, v8, v10

    if-eqz v12, :cond_3

    invoke-virtual {v7}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->getId()Ljava/lang/String;

    move-result-object v8

    iget-wide v9, v7, Lcom/prineside/tdi2/BasicLevelQuestConfig;->savedValue:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v2, v8, v7}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "basicLevels"

    invoke-virtual {v1, v2, v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    return-void
.end method

.method public setMap(Lcom/prineside/tdi2/BasicLevel;Lcom/prineside/tdi2/Map;)V
    .locals 5

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->mapEditingAvailable()Z

    move-result v0

    const-string v1, "BasicLevelManager"

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    sget-object v2, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/Map;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "levels/maps/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    invoke-virtual {v0, v2, v3, v4}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/BasicLevel;->setMap(Lcom/prineside/tdi2/Map;)V

    const-string p1, "map saved"

    invoke-static {v1, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "unable to write map"

    invoke-static {v1, p2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string p1, "unable to set basic level map on this OS or not in developer mode"

    invoke-static {v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setPurchased(Lcom/prineside/tdi2/BasicLevel;)V
    .locals 5

    iget-boolean v0, p1, Lcom/prineside/tdi2/BasicLevel;->purchased:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p1, Lcom/prineside/tdi2/BasicLevel;->purchased:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->save()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    iget-object p1, p1, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    aput-object p1, v2, v1

    const-string p1, "basic_level_purchased"

    invoke-interface {v0, p1, v2}, Lcom/prineside/tdi2/ActionResolver;->logCustomEvent(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/managers/ResearchManager;->checkResearchesStatus(Z)V

    return-void
.end method

.method public setQuestCompleted(Ljava/lang/String;Z)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->d:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->d:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->r:Z

    iget-object p2, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->k:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->k:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "id"

    aput-object v3, v1, v2

    aput-object p1, v1, v0

    const-string p1, "basic_level_quest_completed"

    invoke-interface {p2, p1, v1}, Lcom/prineside/tdi2/ActionResolver;->logCustomEvent(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/ProgressManager;->checkSpecialTrophiesGiven()V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->d:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleared completed quest: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "BasicLevelManager"

    invoke-static {v1, p2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->d:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->remove(Ljava/lang/Object;)Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->r:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setup()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    new-instance v1, Lcom/prineside/tdi2/managers/BasicLevelManager$1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/BasicLevelManager$1;-><init>(Lcom/prineside/tdi2/managers/BasicLevelManager;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->addListener(Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->q:Z

    return-void
.end method

.method public skipQuest(Lcom/prineside/tdi2/BasicLevelQuestConfig;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getQuestSkipPrice(Lcom/prineside/tdi2/BasicLevelQuestConfig;)I

    move-result v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    sget-object v2, Lcom/prineside/tdi2/Item$D;->ACCELERATOR:Lcom/prineside/tdi2/items/AcceleratorItem;

    invoke-virtual {v1, v2, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->removeItems(Lcom/prineside/tdi2/Item;I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    const-string v2, "quest_skip"

    const-string v3, "accelerator"

    invoke-interface {v1, v2, v3, v0}, Lcom/prineside/tdi2/ActionResolver;->logCurrencySpent(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->setCompleted(Z)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->dailyQuestManager:Lcom/prineside/tdi2/managers/DailyQuestManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/DailyQuestManager;->getDailyLootCurrentQuest()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/prineside/tdi2/BasicLevelQuestConfig;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->dailyQuestManager:Lcom/prineside/tdi2/managers/DailyQuestManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/DailyQuestManager;->setDailyLootQuestCompleted()Lcom/prineside/tdi2/IssuedItems;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "not_enough_accelerators"

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "icon-times"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lcom/prineside/tdi2/enums/StaticSoundType;->FAIL:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    :cond_1
    :goto_0
    return-void
.end method

.method public test()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->levelsOrdered:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/BasicLevel;

    :try_start_0
    invoke-virtual {v1}, Lcom/prineside/tdi2/BasicLevel;->getPreview()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Test: failed BasicLevel#getPreview() for level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BasicLevelManager"

    invoke-static {v2, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public unloadLevel(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->stagesOrdered:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/BasicLevelStage;

    const/4 v3, 0x0

    :goto_1
    iget-object v4, v2, Lcom/prineside/tdi2/BasicLevelStage;->levels:Lcom/badlogic/gdx/utils/Array;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v5, :cond_1

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/BasicLevel;

    iget-object v4, v4, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v2, v2, Lcom/prineside/tdi2/BasicLevelStage;->levels:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_3
    iget-object v1, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->levelsOrdered:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_4

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/BasicLevel;

    iget-object v1, v1, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->levelsOrdered:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/prineside/tdi2/managers/BasicLevelManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method
