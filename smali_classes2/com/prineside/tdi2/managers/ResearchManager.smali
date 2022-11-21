.class public Lcom/prineside/tdi2/managers/ResearchManager;
.super Lcom/prineside/tdi2/Manager$ManagerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/ResearchManager$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/ResearchManager$PolygonConfig;,
        Lcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;,
        Lcom/prineside/tdi2/managers/ResearchManager$ResearchManagerListener;,
        Lcom/prineside/tdi2/managers/ResearchManager$StartResearchFailReason;,
        Lcom/prineside/tdi2/managers/ResearchManager$Serializer;
    }
.end annotation


# static fields
.field public static final MAP_SIZE:I = 0x2000

.field public static final TAG:Ljava/lang/String; = "ResearchManager"


# instance fields
.field public A:I

.field public B:Z

.field public C:F

.field public final D:Lcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;

.field public final E:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/managers/ResearchManager$ResearchManagerListener;",
            ">;"
        }
    .end annotation
.end field

.field public final a:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Research;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Lcom/prineside/tdi2/enums/ResearchCategoryType;",
            "Lcom/prineside/tdi2/ResearchCategory;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Research$ResearchLink;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/managers/ResearchManager$PolygonConfig;",
            ">;"
        }
    .end annotation
.end field

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:Z

.field public w:F

.field public x:Lcom/prineside/tdi2/Research;

.field public y:J

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/prineside/tdi2/Manager$ManagerAdapter;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    sget-object v1, Lcom/prineside/tdi2/enums/ResearchType;->values:[Lcom/prineside/tdi2/enums/ResearchType;

    array-length v1, v1

    const-class v2, Lcom/prineside/tdi2/Research;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->a:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->d:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/managers/ResearchManager$PolygonConfig;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->k:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->v:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->B:Z

    new-instance v1, Lcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;-><init>(Lcom/prineside/tdi2/managers/ResearchManager;)V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/ResearchManager;->D:Lcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;

    new-instance v1, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-direct {v1, v0, v3}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZI)V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/ResearchManager;->E:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/Research;Lcom/prineside/tdi2/Research;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/prineside/tdi2/managers/ResearchManager;->h(Lcom/prineside/tdi2/Research;Lcom/prineside/tdi2/Research;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/managers/ResearchManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->B:Z

    return p0
.end method

.method public static synthetic h(Lcom/prineside/tdi2/Research;Lcom/prineside/tdi2/Research;)I
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/Research;->distanceToCenter:F

    iget p1, p1, Lcom/prineside/tdi2/Research;->distanceToCenter:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method


# virtual methods
.method public addListener(Lcom/prineside/tdi2/managers/ResearchManager$ResearchManagerListener;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->E:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->E:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c()V
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->v:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "manager is not set up yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public canResearchForToken(Lcom/prineside/tdi2/Research;Z)Z
    .locals 6

    iget v0, p1, Lcom/prineside/tdi2/Research;->priceInStars:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-nez p2, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/prineside/tdi2/managers/ResearchManager;->canStartResearching(Lcom/prineside/tdi2/Research;Z)Z

    move-result p2

    if-nez p2, :cond_1

    return v1

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iget-object v2, p1, Lcom/prineside/tdi2/Research;->levels:[Lcom/prineside/tdi2/Research$ResearchLevel;

    array-length v3, v2

    if-ge p2, v3, :cond_4

    aget-object v2, v2, p2

    const/4 v3, 0x0

    :goto_1
    iget-object v4, v2, Lcom/prineside/tdi2/Research$ResearchLevel;->price:Lcom/badlogic/gdx/utils/Array;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v5, :cond_3

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/ItemStack;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/enums/ItemType;->PRESTIGE_TOKEN:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v4, v5, :cond_2

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p1, Lcom/prineside/tdi2/Research;->type:Lcom/prineside/tdi2/enums/ResearchType;

    sget-object p2, Lcom/prineside/tdi2/enums/ResearchType;->DECRYPTING_QUEUE_SIZE:Lcom/prineside/tdi2/enums/ResearchType;

    if-ne p1, p2, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public canStartResearching(Lcom/prineside/tdi2/Research;Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->c()V

    :try_start_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->D:Lcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;

    invoke-virtual {p0, p1, p2, v0}, Lcom/prineside/tdi2/managers/ResearchManager;->tryStartResearching(Lcom/prineside/tdi2/Research;ZLcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;)V
    :try_end_0
    .catch Lcom/prineside/tdi2/managers/ResearchManager$StartResearchingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public checkResearchesStatus(Z)V
    .locals 8

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->c()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/managers/ResearchManager;->a:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_7

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Research;

    aget-object v2, v2, v1

    iget v3, v2, Lcom/prineside/tdi2/Research;->priceInStars:I

    if-lez v3, :cond_0

    goto :goto_4

    :cond_0
    iget v3, v2, Lcom/prineside/tdi2/Research;->installedLevel:I

    :goto_1
    iget-object v4, v2, Lcom/prineside/tdi2/Research;->levels:[Lcom/prineside/tdi2/Research$ResearchLevel;

    array-length v5, v4

    if-ge v3, v5, :cond_6

    aget-object v4, v4, v3

    iget-object v5, v4, Lcom/prineside/tdi2/Research$ResearchLevel;->price:Lcom/badlogic/gdx/utils/Array;

    iget v5, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v5, :cond_1

    goto :goto_3

    :cond_1
    iget-object v4, v4, Lcom/prineside/tdi2/Research$ResearchLevel;->requirements:[Lcom/prineside/tdi2/Requirement;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    invoke-virtual {v7}, Lcom/prineside/tdi2/Requirement;->isSatisfied()Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/managers/ResearchManager;->hasInstalledParents(Lcom/prineside/tdi2/Research;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    iget-object v4, v2, Lcom/prineside/tdi2/Research;->type:Lcom/prineside/tdi2/enums/ResearchType;

    add-int/lit8 v5, v3, 0x1

    const/4 v6, 0x1

    invoke-virtual {p0, v4, v5, v6}, Lcom/prineside/tdi2/managers/ResearchManager;->setInstalledLevel(Lcom/prineside/tdi2/enums/ResearchType;IZ)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New research completed: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Research;->getTitle()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", level "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ResearchManager"

    invoke-static {v5, v4}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/managers/ResearchManager;->i(Lcom/prineside/tdi2/Research;)V

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public create3dGraphModel()Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->c()V

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->begin()V

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/Material;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g3d/Material;-><init>()V

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/ModelBuilder;->end()Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 8

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getGainedStars()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/prineside/tdi2/managers/ResearchManager;->a:Lcom/badlogic/gdx/utils/Array;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v5, :cond_1

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, [Lcom/prineside/tdi2/Research;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/prineside/tdi2/Research;->priceInStars:I

    if-lez v5, :cond_0

    move-object v5, v4

    check-cast v5, [Lcom/prineside/tdi2/Research;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-lez v5, :cond_0

    check-cast v4, [Lcom/prineside/tdi2/Research;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/prineside/tdi2/Research;->priceInStars:I

    add-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v3

    iput v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->A:I

    const/4 v2, 0x1

    if-gez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unused stars count: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/prineside/tdi2/managers/ResearchManager;->A:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ResearchManager"

    invoke-static {v3, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v4, Lcom/prineside/tdi2/Research;

    invoke-direct {v0, v4}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lcom/prineside/tdi2/managers/ResearchManager;->a:Lcom/badlogic/gdx/utils/Array;

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v6, :cond_3

    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, [Lcom/prineside/tdi2/Research;

    aget-object v6, v6, v4

    iget v6, v6, Lcom/prineside/tdi2/Research;->priceInStars:I

    if-lez v6, :cond_2

    move-object v6, v5

    check-cast v6, [Lcom/prineside/tdi2/Research;

    aget-object v6, v6, v4

    iget v6, v6, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-eqz v6, :cond_2

    check-cast v5, [Lcom/prineside/tdi2/Research;

    aget-object v5, v5, v4

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    new-instance v4, Lcom/prineside/tdi2/managers/z;

    invoke-direct {v4}, Lcom/prineside/tdi2/managers/z;-><init>()V

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    iget v6, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v6, :cond_5

    iget-object v5, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/Research;

    aget-object v5, v5, v4

    iput v1, v5, Lcom/prineside/tdi2/Research;->installedLevel:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reverting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/prineside/tdi2/Research;->type:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " - exceeds amount of stars"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    iget v6, p0, Lcom/prineside/tdi2/managers/ResearchManager;->A:I

    iget v5, v5, Lcom/prineside/tdi2/Research;->priceInStars:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/prineside/tdi2/managers/ResearchManager;->A:I

    if-ltz v6, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    move v1, v5

    :cond_6
    :goto_3
    return v1
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public final e()Z
    .locals 7

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_0
    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    iget-object v5, p0, Lcom/prineside/tdi2/managers/ResearchManager;->a:Lcom/badlogic/gdx/utils/Array;

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v6, :cond_1

    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/Research;

    aget-object v5, v5, v3

    iget v6, v5, Lcom/prineside/tdi2/Research;->priceInStars:I

    if-lez v6, :cond_0

    iget v6, v5, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-lez v6, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectSet;->clear()V

    invoke-virtual {p0, v5, v0}, Lcom/prineside/tdi2/managers/ResearchManager;->g(Lcom/prineside/tdi2/Research;Lcom/badlogic/gdx/utils/ObjectSet;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reverting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v5, Lcom/prineside/tdi2/Research;->type:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " - not linked to ROOT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ResearchManager"

    invoke-static {v4, v3}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, v5, Lcom/prineside/tdi2/Research;->installedLevel:I

    const/4 v3, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    return v4
.end method

.method public final f(Lcom/prineside/tdi2/Research;I[I[I)V
    .locals 11

    iget v0, p1, Lcom/prineside/tdi2/Research;->priceInStars:I

    if-lez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/prineside/tdi2/Research;->type:Lcom/prineside/tdi2/enums/ResearchType;

    sget-object v1, Lcom/prineside/tdi2/enums/ResearchType;->PRESTIGE:Lcom/prineside/tdi2/enums/ResearchType;

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object p1, p1, Lcom/prineside/tdi2/Research;->linksToChildren:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/Research$ResearchLink;

    iget-object v0, v0, Lcom/prineside/tdi2/Research$ResearchLink;->child:Lcom/prineside/tdi2/Research;

    iget-object v1, v0, Lcom/prineside/tdi2/Research;->levels:[Lcom/prineside/tdi2/Research$ResearchLevel;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_8

    aget-object v5, v1, v4

    const/4 v6, 0x0

    :goto_2
    iget-object v7, v5, Lcom/prineside/tdi2/Research$ResearchLevel;->price:Lcom/badlogic/gdx/utils/Array;

    iget v8, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v9, 0x1

    if-ge v6, v8, :cond_3

    iget-object v7, v7, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/ItemStack;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v8

    invoke-virtual {v8}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v8

    sget-object v10, Lcom/prineside/tdi2/enums/ItemType;->RESOURCE:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v8, v10, :cond_2

    invoke-virtual {v7}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v7

    check-cast v7, Lcom/prineside/tdi2/items/ResourceItem;

    iget-object v7, v7, Lcom/prineside/tdi2/items/ResourceItem;->resourceType:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-le v7, p2, :cond_2

    const/4 v6, 0x0

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x1

    :goto_3
    if-eqz v6, :cond_7

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v6, v0, v9}, Lcom/prineside/tdi2/managers/ResearchManager;->canStartResearching(Lcom/prineside/tdi2/Research;Z)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x0

    :goto_4
    iget-object v7, v5, Lcom/prineside/tdi2/Research$ResearchLevel;->price:Lcom/badlogic/gdx/utils/Array;

    iget v8, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v6, v8, :cond_6

    iget-object v7, v7, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/ItemStack;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v8

    invoke-virtual {v8}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v8

    sget-object v9, Lcom/prineside/tdi2/enums/ItemType;->GREEN_PAPER:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v8, v9, :cond_4

    aget v8, p3, v3

    invoke-virtual {v7}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v7

    add-int/2addr v8, v7

    aput v8, p3, v3

    goto :goto_5

    :cond_4
    invoke-virtual {v7}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v8

    invoke-virtual {v8}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v8

    sget-object v9, Lcom/prineside/tdi2/enums/ItemType;->RESOURCE:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v8, v9, :cond_5

    invoke-virtual {v7}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v8

    check-cast v8, Lcom/prineside/tdi2/items/ResourceItem;

    iget-object v8, v8, Lcom/prineside/tdi2/items/ResourceItem;->resourceType:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v9, p4, v8

    invoke-virtual {v7}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v7

    add-int/2addr v9, v7

    aput v9, p4, v8

    :cond_5
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    iget v5, v5, Lcom/prineside/tdi2/Research$ResearchLevel;->number:I

    iput v5, v0, Lcom/prineside/tdi2/Research;->installedLevel:I

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/prineside/tdi2/managers/ResearchManager;->f(Lcom/prineside/tdi2/Research;I[I[I)V

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public finishCurrentResearch()V
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->c()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->getCurrentResearching()Lcom/prineside/tdi2/Research;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->y:J

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->l()V

    :cond_0
    return-void
.end method

.method public final g(Lcom/prineside/tdi2/Research;Lcom/badlogic/gdx/utils/ObjectSet;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/Research;",
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "Lcom/prineside/tdi2/enums/ResearchType;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p1, Lcom/prineside/tdi2/Research;->type:Lcom/prineside/tdi2/enums/ResearchType;

    sget-object v1, Lcom/prineside/tdi2/enums/ResearchType;->ROOT:Lcom/prineside/tdi2/enums/ResearchType;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    iget v0, p1, Lcom/prineside/tdi2/Research;->installedLevel:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p1, Lcom/prineside/tdi2/Research;->linksToParents:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v4, :cond_3

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Research$ResearchLink;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/prineside/tdi2/Research$ResearchLink;->parent:Lcom/prineside/tdi2/Research;

    iget-object v4, v3, Lcom/prineside/tdi2/Research;->type:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {p2, v4}, Lcom/badlogic/gdx/utils/ObjectSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v3, p2}, Lcom/prineside/tdi2/managers/ResearchManager;->g(Lcom/prineside/tdi2/Research;Lcom/badlogic/gdx/utils/ObjectSet;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p1, Lcom/prineside/tdi2/Research;->linksToChildren:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v4, :cond_5

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Research$ResearchLink;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/prineside/tdi2/Research$ResearchLink;->child:Lcom/prineside/tdi2/Research;

    iget-object v4, v3, Lcom/prineside/tdi2/Research;->type:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {p2, v4}, Lcom/badlogic/gdx/utils/ObjectSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0, v3, p2}, Lcom/prineside/tdi2/managers/ResearchManager;->g(Lcom/prineside/tdi2/Research;Lcom/badlogic/gdx/utils/ObjectSet;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return v1
.end method

.method public getAfforableResearchesCount()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->z:I

    return v0
.end method

.method public getCurrentResearching()Lcom/prineside/tdi2/Research;
    .locals 5

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->c()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->x:Lcom/prineside/tdi2/Research;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->y:J

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->x:Lcom/prineside/tdi2/Research;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getInstance(Lcom/prineside/tdi2/enums/ResearchType;)Lcom/prineside/tdi2/Research;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->c()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->a:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/Research;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getInstances()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Research;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->c()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->a:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getLinks()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Research$ResearchLink;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->c()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->d:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getMapHeight()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->u:I

    return v0
.end method

.method public getMapMaxX()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->q:I

    return v0
.end method

.method public getMapMaxY()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->s:I

    return v0
.end method

.method public getMapMinX()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->p:I

    return v0
.end method

.method public getMapMinY()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->r:I

    return v0
.end method

.method public getMapWidth()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->t:I

    return v0
.end method

.method public getMillisToResearchingEnd()J
    .locals 7

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->c()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->x:Lcom/prineside/tdi2/Research;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-wide v3, p0, Lcom/prineside/tdi2/managers/ResearchManager;->y:J

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-gez v0, :cond_1

    return-wide v1

    :cond_1
    return-wide v3
.end method

.method public getPolygonSprites()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/managers/ResearchManager$PolygonConfig;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->c()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->k:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getResearchInstance(Lcom/prineside/tdi2/enums/ResearchType;)Lcom/prineside/tdi2/Research;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->c()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->a:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/Research;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getResearchingDuration(Lcom/prineside/tdi2/Research;)J
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->c()V

    invoke-virtual {p1}, Lcom/prineside/tdi2/Research;->isMaxNormalLevel()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p1, Lcom/prineside/tdi2/Research;->levels:[Lcom/prineside/tdi2/Research$ResearchLevel;

    iget p1, p1, Lcom/prineside/tdi2/Research;->installedLevel:I

    aget-object p1, v0, p1

    iget p1, p1, Lcom/prineside/tdi2/Research$ResearchLevel;->researchDuration:I

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    return-wide v0
.end method

.method public getResetStarResearchesAcceleratorPrice()I
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->c()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/managers/ResearchManager;->a:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v3, :cond_1

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, [Lcom/prineside/tdi2/Research;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/prineside/tdi2/Research;->priceInStars:I

    if-lez v3, :cond_0

    check-cast v2, [Lcom/prineside/tdi2/Research;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-lez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getUnusedStarsCount()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->A:I

    return v0
.end method

.method public hasInstalledParents(Lcom/prineside/tdi2/Research;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->c()V

    iget-object v0, p1, Lcom/prineside/tdi2/Research;->linksToParents:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/Research$ResearchLink;

    iget-object v1, v1, Lcom/prineside/tdi2/Research$ResearchLink;->parent:Lcom/prineside/tdi2/Research;

    iget v1, v1, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-eqz v1, :cond_1

    return v2

    :cond_2
    iget v0, p1, Lcom/prineside/tdi2/Research;->priceInStars:I

    if-lez v0, :cond_4

    iget-object p1, p1, Lcom/prineside/tdi2/Research;->linksToChildren:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/Research$ResearchLink;

    iget-object v0, v0, Lcom/prineside/tdi2/Research$ResearchLink;->child:Lcom/prineside/tdi2/Research;

    iget v0, v0, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-eqz v0, :cond_3

    return v2

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public final i(Lcom/prineside/tdi2/Research;)V
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/prineside/tdi2/managers/ResearchManager;->v:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "research_completed"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Research;->getTitle()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "icon-research"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/prineside/tdi2/enums/StaticSoundType;->RESEARCH:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    :cond_0
    return-void
.end method

.method public installAllEndlessResearches()V
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->c()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/Research;

    iget v2, v1, Lcom/prineside/tdi2/Research;->installedLevel:I

    iget v3, v1, Lcom/prineside/tdi2/Research;->maxEndlessLevel:I

    if-ge v2, v3, :cond_0

    iput v3, v1, Lcom/prineside/tdi2/Research;->installedLevel:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->save()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->j()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->k()V

    return-void
.end method

.method public installAllResearches()V
    .locals 5

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->c()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/Research;

    iget-boolean v2, v1, Lcom/prineside/tdi2/Research;->endlessOnly:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget v2, v1, Lcom/prineside/tdi2/Research;->installedLevel:I

    iget-object v3, v1, Lcom/prineside/tdi2/Research;->levels:[Lcom/prineside/tdi2/Research$ResearchLevel;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    array-length v2, v3

    iput v2, v1, Lcom/prineside/tdi2/Research;->installedLevel:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->save()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->j()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->k()V

    return-void
.end method

.method public installRecursiveFree(I)V
    .locals 9

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->c()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v1, Lcom/prineside/tdi2/enums/StatisticsType;->TDD:Lcom/prineside/tdi2/enums/StatisticsType;

    const-wide v2, 0x4197d78400000000L    # 1.0E8

    invoke-virtual {v0, v1, v2, v3}, Lcom/prineside/tdi2/managers/StatisticsManager;->registerDelta(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    sget-object v0, Lcom/prineside/tdi2/enums/TowerType;->values:[Lcom/prineside/tdi2/enums/TowerType;

    array-length v1, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_0

    aget-object v6, v0, v5

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v7, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    invoke-virtual {v7, v6}, Lcom/prineside/tdi2/managers/TowerManager;->getDamageDealtStatisticType(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/enums/StatisticsType;

    move-result-object v6

    invoke-virtual {v8, v6, v2, v3}, Lcom/prineside/tdi2/managers/StatisticsManager;->registerDelta(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v4, v0, v4

    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sget-object v2, Lcom/prineside/tdi2/enums/ResearchType;->ROOT:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/managers/ResearchManager;->getInstance(Lcom/prineside/tdi2/enums/ResearchType;)Lcom/prineside/tdi2/Research;

    move-result-object v2

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/prineside/tdi2/managers/ResearchManager;->f(Lcom/prineside/tdi2/Research;I[I[I)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->j()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->k()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public isSetUp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->v:Z

    return v0
.end method

.method public isVisible(Lcom/prineside/tdi2/Research;)Z
    .locals 4

    iget-boolean v0, p1, Lcom/prineside/tdi2/Research;->endlessOnly:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyMode()Lcom/prineside/tdi2/enums/DifficultyMode;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/tdi2/enums/DifficultyMode;->isEndless(Lcom/prineside/tdi2/enums/DifficultyMode;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/prineside/tdi2/Config;->isModdingMode()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Lcom/prineside/tdi2/Research;->getRelatedToTowerType()Lcom/prineside/tdi2/enums/TowerType;

    move-result-object v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    invoke-virtual {v3, v0}, Lcom/prineside/tdi2/managers/TowerManager;->getFactory(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/Tower$Factory;

    move-result-object v0

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/Tower$Factory;->isAvailable(Lcom/prineside/tdi2/GameValueProvider;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    invoke-virtual {p1}, Lcom/prineside/tdi2/Research;->isUnlocksTower()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p1, Lcom/prineside/tdi2/Research;->linksToParents:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/Research$ResearchLink;

    iget-object p1, p1, Lcom/prineside/tdi2/Research$ResearchLink;->parent:Lcom/prineside/tdi2/Research;

    iget p1, p1, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-lez p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public final j()V
    .locals 3

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->updateAndValidateStarBranch()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AuthManager;->notifyNeedCloudSave(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->E:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->E:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/managers/ResearchManager;->E:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/managers/ResearchManager$ResearchManagerListener;

    invoke-interface {v2}, Lcom/prineside/tdi2/managers/ResearchManager$ResearchManagerListener;->researchesUpdated()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->E:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    return-void
.end method

.method public final k()V
    .locals 11

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->c()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/prineside/tdi2/managers/ResearchManager;->a:Lcom/badlogic/gdx/utils/Array;

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v6, :cond_4

    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/Research;

    aget-object v5, v5, v1

    iget v6, v5, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-lez v6, :cond_3

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    iget v6, v5, Lcom/prineside/tdi2/Research;->priceInStars:I

    if-nez v6, :cond_3

    iget-object v6, v5, Lcom/prineside/tdi2/Research;->type:Lcom/prineside/tdi2/enums/ResearchType;

    sget-object v7, Lcom/prineside/tdi2/enums/ResearchType;->DECRYPTING_QUEUE_SIZE:Lcom/prineside/tdi2/enums/ResearchType;

    const/4 v8, 0x1

    if-ne v6, v7, :cond_0

    goto :goto_2

    :cond_0
    iget-object v6, v5, Lcom/prineside/tdi2/Research;->levels:[Lcom/prineside/tdi2/Research$ResearchLevel;

    aget-object v6, v6, v0

    const/4 v7, 0x0

    :goto_1
    iget-object v9, v6, Lcom/prineside/tdi2/Research$ResearchLevel;->price:Lcom/badlogic/gdx/utils/Array;

    iget v10, v9, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v10, :cond_2

    iget-object v9, v9, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v9, [Lcom/prineside/tdi2/ItemStack;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v9

    invoke-virtual {v9}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v9

    sget-object v10, Lcom/prineside/tdi2/enums/ItemType;->PRESTIGE_TOKEN:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v9, v10, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_2
    if-nez v8, :cond_3

    iget-boolean v6, v5, Lcom/prineside/tdi2/Research;->endlessOnly:Z

    if-nez v6, :cond_3

    iget v6, v5, Lcom/prineside/tdi2/Research;->installedLevel:I

    iget-object v5, v5, Lcom/prineside/tdi2/Research;->levels:[Lcom/prineside/tdi2/Research$ResearchLevel;

    array-length v5, v5

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/2addr v4, v5

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v1, Lcom/prineside/tdi2/enums/StatisticsType;->RC:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v5

    int-to-double v7, v2

    cmpg-double v0, v5, v7

    if-gez v0, :cond_5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    invoke-virtual {v0, v1, v7, v8}, Lcom/prineside/tdi2/managers/StatisticsManager;->registerValue(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    :cond_5
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v1, Lcom/prineside/tdi2/enums/StatisticsType;->RCL:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v5

    int-to-double v7, v3

    cmpg-double v0, v5, v7

    if-gez v0, :cond_6

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    invoke-virtual {v0, v1, v7, v8}, Lcom/prineside/tdi2/managers/StatisticsManager;->registerValue(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    :cond_6
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->FIVE_HUNDRED_RESEARCH:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/managers/AchievementManager;->setProgress(Lcom/prineside/tdi2/enums/AchievementType;I)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->FULL_REGULAR_RESEARCH:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v0, v1, v4}, Lcom/prineside/tdi2/managers/AchievementManager;->setProgress(Lcom/prineside/tdi2/enums/AchievementType;I)V

    return-void
.end method

.method public final l()V
    .locals 6

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->c()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->x:Lcom/prineside/tdi2/Research;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/prineside/tdi2/Research;->isMaxEndlessLevel()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "ResearchManager"

    const-string v2, "current research can\'t have higher level, aborting"

    invoke-static {v0, v2}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/ResearchManager;->x:Lcom/prineside/tdi2/Research;

    return-void

    :cond_0
    iget-wide v2, p0, Lcom/prineside/tdi2/managers/ResearchManager;->y:J

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->x:Lcom/prineside/tdi2/Research;

    iget-object v2, v0, Lcom/prineside/tdi2/Research;->type:Lcom/prineside/tdi2/enums/ResearchType;

    iget v0, v0, Lcom/prineside/tdi2/Research;->installedLevel:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v2, v0, v3}, Lcom/prineside/tdi2/managers/ResearchManager;->setInstalledLevel(Lcom/prineside/tdi2/enums/ResearchType;IZ)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->x:Lcom/prineside/tdi2/Research;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ResearchManager;->i(Lcom/prineside/tdi2/Research;)V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/ResearchManager;->x:Lcom/prineside/tdi2/Research;

    iput-boolean v3, p0, Lcom/prineside/tdi2/managers/ResearchManager;->B:Z

    invoke-virtual {p0, v3}, Lcom/prineside/tdi2/managers/ResearchManager;->checkResearchesStatus(Z)V

    :cond_1
    return-void
.end method

.method public postRender(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->v:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->C:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->C:F

    const/high16 p1, 0x41f00000    # 30.0f

    cmpl-float p1, v0, p1

    if-lez p1, :cond_1

    iget-boolean p1, p0, Lcom/prineside/tdi2/managers/ResearchManager;->B:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/prineside/tdi2/managers/ResearchManager;->C:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->save()V

    :cond_1
    return-void
.end method

.method public preRender(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->v:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->w:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->w:F

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, v0, p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->l()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/prineside/tdi2/managers/ResearchManager;->w:F

    :cond_0
    return-void
.end method

.method public reload()V
    .locals 25

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/prineside/tdi2/managers/ResearchManager;->d:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v0, v1, Lcom/prineside/tdi2/managers/ResearchManager;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v0, v1, Lcom/prineside/tdi2/managers/ResearchManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    iget-object v0, v1, Lcom/prineside/tdi2/managers/ResearchManager;->k:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/prineside/tdi2/managers/ResearchManager;->x:Lcom/prineside/tdi2/Research;

    const v3, 0x7fffffff

    iput v3, v1, Lcom/prineside/tdi2/managers/ResearchManager;->p:I

    const/high16 v4, -0x80000000

    iput v4, v1, Lcom/prineside/tdi2/managers/ResearchManager;->q:I

    iput v3, v1, Lcom/prineside/tdi2/managers/ResearchManager;->r:I

    iput v4, v1, Lcom/prineside/tdi2/managers/ResearchManager;->s:I

    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v6, "res/researches.json"

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v5

    const-string v0, "categories"

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/utils/JsonValue;

    const-string v7, "alias"

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "research_title_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "research_description_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7}, Lcom/prineside/tdi2/enums/ResearchCategoryType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/ResearchCategoryType;

    move-result-object v7

    const-string v10, "icon"

    invoke-virtual {v6, v10}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v10, v1, Lcom/prineside/tdi2/managers/ResearchManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v11, Lcom/prineside/tdi2/ResearchCategory;

    invoke-direct {v11, v7, v8, v9, v6}, Lcom/prineside/tdi2/ResearchCategory;-><init>(Lcom/prineside/tdi2/enums/ResearchCategoryType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v7, v11}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/prineside/tdi2/managers/ResearchManager;->a:Lcom/badlogic/gdx/utils/Array;

    sget-object v6, Lcom/prineside/tdi2/enums/ResearchType;->values:[Lcom/prineside/tdi2/enums/ResearchType;

    array-length v6, v6

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/Array;->setSize(I)[Ljava/lang/Object;

    const-string v0, "researches"

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v0

    const/4 v7, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v10, "ResearchManager"

    if-eqz v8, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/utils/JsonValue;

    const-string v11, "name"

    invoke-virtual {v8, v11}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/prineside/tdi2/enums/ResearchType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/ResearchType;

    move-result-object v11

    const-string v12, "category"

    invoke-virtual {v8, v12}, Lcom/badlogic/gdx/utils/JsonValue;->has(Ljava/lang/String;)Z

    move-result v13

    const-string v14, "Research "

    if-eqz v13, :cond_f

    iget-object v13, v1, Lcom/prineside/tdi2/managers/ResearchManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v8, v12}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/prineside/tdi2/enums/ResearchCategoryType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/ResearchCategoryType;

    move-result-object v12

    invoke-virtual {v13, v12}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/prineside/tdi2/ResearchCategory;

    const-string v13, "maxEndlessModeLevels"

    invoke-virtual {v8, v13}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v13

    iget-object v15, v1, Lcom/prineside/tdi2/managers/ResearchManager;->a:Lcom/badlogic/gdx/utils/Array;

    iget-object v15, v15, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v15, [Lcom/prineside/tdi2/Research;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aget-object v15, v15, v16

    if-nez v15, :cond_e

    new-instance v14, Lcom/badlogic/gdx/utils/Array;

    const-class v15, Lcom/prineside/tdi2/Research$ResearchLevel;

    invoke-direct {v14, v15}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    const-string v15, "levels"

    invoke-virtual {v8, v15}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v15

    invoke-virtual {v15}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v15

    const/4 v9, 0x1

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    const-string v3, " for "

    if-eqz v16, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    const-class v6, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    invoke-direct {v2, v6}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    const-string v6, "effects"

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    check-cast v0, Lcom/badlogic/gdx/utils/JsonValue;

    move-object/from16 v17, v6

    :try_start_0
    iget-object v6, v0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-static {v6}, Lcom/prineside/tdi2/enums/GameValueType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v19, v15

    :try_start_1
    new-instance v15, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v20, v7

    move-object/from16 v21, v8

    :try_start_2
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide v7

    invoke-direct {v15, v6, v7, v8}, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;-><init>(Lcom/prineside/tdi2/enums/GameValueType;D)V

    invoke-virtual {v2, v15}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_0
    move/from16 v20, v7

    move-object/from16 v21, v8

    goto :goto_4

    :catch_1
    move/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v19, v15

    :catch_2
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed loading gv "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    move-object/from16 v6, v17

    move-object/from16 v0, v18

    move-object/from16 v15, v19

    move/from16 v7, v20

    move-object/from16 v8, v21

    goto :goto_3

    :cond_1
    move-object/from16 v18, v0

    move/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v19, v15

    const-string v0, "researchDuration"

    const/4 v3, 0x0

    invoke-virtual {v4, v0, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v3, Lcom/badlogic/gdx/utils/Array;

    const-class v6, Lcom/prineside/tdi2/Requirement;

    invoke-direct {v3, v6}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    const-string v6, "requirements"

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-static {v7}, Lcom/prineside/tdi2/Requirement;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Requirement;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_6

    :cond_2
    :try_start_3
    new-instance v6, Lcom/prineside/tdi2/Research$ResearchLevel;

    invoke-direct {v6}, Lcom/prineside/tdi2/Research$ResearchLevel;-><init>()V

    iput v9, v6, Lcom/prineside/tdi2/Research$ResearchLevel;->number:I

    iput v0, v6, Lcom/prineside/tdi2/Research$ResearchLevel;->researchDuration:I

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    iput-object v0, v6, Lcom/prineside/tdi2/Research$ResearchLevel;->effects:[Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    const-string v0, "price"

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v4, v2, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    const-string v7, "money"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v6, Lcom/prineside/tdi2/Research$ResearchLevel;->price:Lcom/badlogic/gdx/utils/Array;

    new-instance v7, Lcom/prineside/tdi2/ItemStack;

    sget-object v8, Lcom/prineside/tdi2/Item$D;->GREEN_PAPER:Lcom/prineside/tdi2/items/GreenPaperItem;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v2

    invoke-direct {v7, v8, v2}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_7

    :cond_3
    iget-object v4, v2, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    const-string v7, "bp_"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v2, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    const/4 v7, 0x3

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/prineside/tdi2/enums/BlueprintType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/BlueprintType;

    move-result-object v4

    iget-object v7, v6, Lcom/prineside/tdi2/Research$ResearchLevel;->price:Lcom/badlogic/gdx/utils/Array;

    new-instance v8, Lcom/prineside/tdi2/ItemStack;

    sget-object v15, Lcom/prineside/tdi2/Item$D;->F_BLUEPRINT:Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;

    invoke-virtual {v15, v4}, Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;->create(Lcom/prineside/tdi2/enums/BlueprintType;)Lcom/prineside/tdi2/items/BlueprintItem;

    move-result-object v4

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v2

    invoke-direct {v8, v4, v2}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_7

    :cond_4
    iget-object v4, v2, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    const-string v7, "PRESTIGE_TOKEN"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v6, Lcom/prineside/tdi2/Research$ResearchLevel;->price:Lcom/badlogic/gdx/utils/Array;

    new-instance v7, Lcom/prineside/tdi2/ItemStack;

    sget-object v8, Lcom/prineside/tdi2/Item$D;->PRESTIGE_TOKEN:Lcom/prineside/tdi2/items/PrestigeTokenItem;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v2

    invoke-direct {v7, v8, v2}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_7

    :cond_5
    iget-object v4, v6, Lcom/prineside/tdi2/Research$ResearchLevel;->price:Lcom/badlogic/gdx/utils/Array;

    new-instance v7, Lcom/prineside/tdi2/ItemStack;

    sget-object v8, Lcom/prineside/tdi2/Item$D;->F_RESOURCE:Lcom/prineside/tdi2/items/ResourceItem$ResourceItemFactory;

    iget-object v15, v2, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-static {v15}, Lcom/prineside/tdi2/enums/ResourceType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/ResourceType;

    move-result-object v15

    invoke-virtual {v8, v15}, Lcom/prineside/tdi2/items/ResourceItem$ResourceItemFactory;->create(Lcom/prineside/tdi2/enums/ResourceType;)Lcom/prineside/tdi2/items/ResourceItem;

    move-result-object v8

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v2

    invoke-direct {v7, v8, v2}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_6
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/Requirement;

    iput-object v0, v6, Lcom/prineside/tdi2/Research$ResearchLevel;->requirements:[Lcom/prineside/tdi2/Requirement;

    invoke-virtual {v14, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v18

    move-object/from16 v15, v19

    move/from16 v7, v20

    move-object/from16 v8, v21

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/high16 v4, -0x80000000

    goto/16 :goto_2

    :catch_3
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to add research level for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_7
    move-object/from16 v18, v0

    move/from16 v20, v7

    move-object/from16 v21, v8

    new-instance v0, Lcom/prineside/tdi2/Research;

    invoke-virtual {v14}, Lcom/badlogic/gdx/utils/Array;->toArray()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/prineside/tdi2/Research$ResearchLevel;

    invoke-direct {v0, v11, v12, v2, v13}, Lcom/prineside/tdi2/Research;-><init>(Lcom/prineside/tdi2/enums/ResearchType;Lcom/prineside/tdi2/ResearchCategory;[Lcom/prineside/tdi2/Research$ResearchLevel;I)V

    const-string v2, "endlessOnly"

    const/4 v4, 0x0

    invoke-virtual {v8, v2, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/prineside/tdi2/Research;->endlessOnly:Z

    const-string v2, "epe"

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v8, v2, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, v0, Lcom/prineside/tdi2/Research;->endlessPriceExp:F

    const-string v2, "epl"

    const/4 v6, -0x1

    invoke-virtual {v8, v2, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v6, :cond_9

    iget v6, v0, Lcom/prineside/tdi2/Research;->maxEndlessLevel:I

    if-le v2, v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "endless mode price level is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " while max is "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/prineside/tdi2/Research;->maxEndlessLevel:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v0, Lcom/prineside/tdi2/Research;->maxEndlessLevel:I

    :cond_8
    iput v2, v0, Lcom/prineside/tdi2/Research;->endlessPriceLevel:I

    :cond_9
    const-string v2, "x"

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/prineside/tdi2/Research;->x:I

    const-string v2, "y"

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/prineside/tdi2/Research;->y:I

    iget-object v2, v0, Lcom/prineside/tdi2/Research;->position3d:Lcom/badlogic/gdx/math/Vector3;

    const-string v3, "d3x"

    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v2, v0, Lcom/prineside/tdi2/Research;->position3d:Lcom/badlogic/gdx/math/Vector3;

    const-string v3, "d3y"

    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v2, v0, Lcom/prineside/tdi2/Research;->position3d:Lcom/badlogic/gdx/math/Vector3;

    const-string v3, "d3z"

    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    const-string v2, "cantBeIgnoredOnUserMaps"

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/prineside/tdi2/Research;->cantBeIgnoredOnUserMaps:Z

    const-string v2, "starsPrice"

    invoke-virtual {v8, v2, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/prineside/tdi2/Research;->priceInStars:I

    iget-object v2, v1, Lcom/prineside/tdi2/managers/ResearchManager;->a:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, v0, Lcom/prineside/tdi2/Research;->type:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/badlogic/gdx/utils/Array;->set(ILjava/lang/Object;)V

    iget v2, v0, Lcom/prineside/tdi2/Research;->x:I

    iget v3, v1, Lcom/prineside/tdi2/managers/ResearchManager;->p:I

    if-ge v2, v3, :cond_a

    iput v2, v1, Lcom/prineside/tdi2/managers/ResearchManager;->p:I

    :cond_a
    iget v3, v1, Lcom/prineside/tdi2/managers/ResearchManager;->q:I

    if-le v2, v3, :cond_b

    iput v2, v1, Lcom/prineside/tdi2/managers/ResearchManager;->q:I

    :cond_b
    iget v3, v0, Lcom/prineside/tdi2/Research;->y:I

    iget v6, v1, Lcom/prineside/tdi2/managers/ResearchManager;->r:I

    if-ge v3, v6, :cond_c

    iput v3, v1, Lcom/prineside/tdi2/managers/ResearchManager;->r:I

    :cond_c
    iget v6, v1, Lcom/prineside/tdi2/managers/ResearchManager;->s:I

    if-le v3, v6, :cond_d

    iput v3, v1, Lcom/prineside/tdi2/managers/ResearchManager;->s:I

    :cond_d
    int-to-float v2, v2

    int-to-float v3, v3

    const/high16 v6, 0x45800000    # 4096.0f

    invoke-static {v2, v3, v6, v6}, Lcom/prineside/tdi2/utils/PMath;->getDistanceBetweenPoints(FFFF)F

    move-result v2

    const/high16 v3, 0x46000000    # 8192.0f

    div-float/2addr v2, v3

    const v3, 0x3fb50481    # 1.4142f

    mul-float v2, v2, v3

    sub-float/2addr v4, v2

    iput v4, v0, Lcom/prineside/tdi2/Research;->distanceToCenter:F

    add-int/lit8 v7, v20, 0x1

    move-object/from16 v0, v18

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/high16 v4, -0x80000000

    goto/16 :goto_1

    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " already exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has no category"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    move/from16 v20, v7

    sget-object v0, Lcom/prineside/tdi2/enums/ResearchType;->values:[Lcom/prineside/tdi2/enums/ResearchType;

    array-length v2, v0

    move/from16 v6, v20

    if-ne v6, v2, :cond_26

    const-string v0, "links"

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v3, v1, Lcom/prineside/tdi2/managers/ResearchManager;->a:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Research;

    const-string v4, "parent"

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/prineside/tdi2/enums/ResearchType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/ResearchType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v3, v3, v4

    iget-object v4, v1, Lcom/prineside/tdi2/managers/ResearchManager;->a:Lcom/badlogic/gdx/utils/Array;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/Research;

    const-string v6, "child"

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/prineside/tdi2/enums/ResearchType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/ResearchType;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v4, v4, v6

    new-instance v6, Lcom/prineside/tdi2/Research$ResearchLink;

    const-string v7, "requiredLevels"

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v20

    const-string v7, "pivotX"

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v21

    const-string v7, "pivotY"

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v22

    const-string v7, "requiredLevelsLabelPos"

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;)F

    move-result v23

    move-object/from16 v17, v6

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    invoke-direct/range {v17 .. v23}, Lcom/prineside/tdi2/Research$ResearchLink;-><init>(Lcom/prineside/tdi2/Research;Lcom/prineside/tdi2/Research;IIIF)V

    iget-object v2, v3, Lcom/prineside/tdi2/Research;->linksToChildren:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v2, v4, Lcom/prineside/tdi2/Research;->linksToParents:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/prineside/tdi2/managers/ResearchManager;->d:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_8

    :cond_11
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v2, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_PROGRESS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    const-string v2, "installedResearches"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\' not found and was ignored"

    const-string v4, "failed to parse json: "

    if-eqz v2, :cond_13

    :try_start_4
    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/badlogic/gdx/utils/JsonValue;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    :try_start_5
    iget-object v0, v7, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/prineside/tdi2/enums/ResearchType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/ResearchType;

    move-result-object v0

    iget-object v8, v1, Lcom/prineside/tdi2/managers/ResearchManager;->a:Lcom/badlogic/gdx/utils/Array;

    iget-object v8, v8, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v8, [Lcom/prineside/tdi2/Research;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget-object v0, v8, v0

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v8

    iget v11, v0, Lcom/prineside/tdi2/Research;->maxEndlessLevel:I

    if-le v8, v11, :cond_12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "loaded from preferences installed level for research "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/prineside/tdi2/Research;->type:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " is too high ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", total levels: "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/prineside/tdi2/Research;->levels:[Lcom/prineside/tdi2/Research$ResearchLevel;

    array-length v8, v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "), lowered"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v0, Lcom/prineside/tdi2/Research;->levels:[Lcom/prineside/tdi2/Research$ResearchLevel;

    array-length v8, v8

    :cond_12
    iput v8, v0, Lcom/prineside/tdi2/Research;->installedLevel:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_9

    :catch_4
    move-exception v0

    :try_start_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Saved installed research \'"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_9

    :catch_5
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v2, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_PROGRESS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    const-string v2, "installedResearchesForTokens"

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v6}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_17

    :try_start_7
    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v6

    :cond_14
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/badlogic/gdx/utils/JsonValue;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    :try_start_8
    iget-object v0, v7, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/prineside/tdi2/enums/ResearchType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/ResearchType;

    move-result-object v0

    iget-object v8, v1, Lcom/prineside/tdi2/managers/ResearchManager;->a:Lcom/badlogic/gdx/utils/Array;

    iget-object v8, v8, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v8, [Lcom/prineside/tdi2/Research;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget-object v0, v8, v0

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v8

    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {v11}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v11

    iget v12, v0, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-lt v12, v11, :cond_16

    iget-object v12, v0, Lcom/prineside/tdi2/Research;->installedLevelsForToken:Lcom/badlogic/gdx/utils/IntArray;

    if-nez v12, :cond_15

    new-instance v12, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v12}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v12, v0, Lcom/prineside/tdi2/Research;->installedLevelsForToken:Lcom/badlogic/gdx/utils/IntArray;

    :cond_15
    iget-object v12, v0, Lcom/prineside/tdi2/Research;->installedLevelsForToken:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v12, v11}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    goto :goto_b

    :cond_16
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ilft > research.installedLevel "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v7, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " > "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/prineside/tdi2/Research;->installedLevel:I

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_b

    :catch_6
    move-exception v0

    :try_start_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Saved installed research levels for token \'"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto/16 :goto_a

    :catch_7
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_17
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v2, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_PROGRESS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    const-string v3, "currentlyResearching"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_a
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    iget-object v3, v1, Lcom/prineside/tdi2/managers/ResearchManager;->a:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Research;

    invoke-static {v0}, Lcom/prineside/tdi2/enums/ResearchType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/ResearchType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget-object v0, v3, v0

    iput-object v0, v1, Lcom/prineside/tdi2/managers/ResearchManager;->x:Lcom/prineside/tdi2/Research;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    const-string v2, "currentResearchEndTime"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/prineside/tdi2/managers/ResearchManager;->y:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currently researching: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/prineside/tdi2/managers/ResearchManager;->x:Lcom/prineside/tdi2/Research;

    iget-object v2, v2, Lcom/prineside/tdi2/Research;->type:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    const-string v2, "failed to load current research"

    invoke-static {v10, v2, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_18
    :goto_c
    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "polygons"

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/utils/JsonValue;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    new-instance v3, Lcom/badlogic/gdx/math/EarClippingTriangulator;

    invoke-direct {v3}, Lcom/badlogic/gdx/math/EarClippingTriangulator;-><init>()V

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v6}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v5

    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/JsonValue;

    :try_start_b
    const-string v7, "color"

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "visibleWith"

    invoke-virtual {v0, v8, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "points"

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    new-instance v11, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v11}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v12

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v0

    const/high16 v13, -0x80000000

    const v14, 0x7fffffff

    const/high16 v15, -0x80000000

    const v24, 0x7fffffff

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Lcom/badlogic/gdx/utils/JsonValue;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_d

    move-object/from16 v18, v0

    move-object/from16 v16, v4

    const/4 v4, 0x0

    :try_start_c
    invoke-virtual {v9, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(I)I

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    const/4 v4, 0x1

    :try_start_d
    invoke-virtual {v9, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(I)I

    move-result v9
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    if-ge v0, v14, :cond_19

    move v14, v0

    :cond_19
    if-le v0, v13, :cond_1a

    move v13, v0

    :cond_1a
    move/from16 v4, v24

    if-ge v9, v4, :cond_1b

    move/from16 v24, v9

    goto :goto_f

    :cond_1b
    move/from16 v24, v4

    :goto_f
    if-le v9, v15, :cond_1c

    move v15, v9

    :cond_1c
    int-to-float v0, v0

    int-to-float v4, v9

    :try_start_e
    invoke-virtual {v11, v0, v4}, Lcom/badlogic/gdx/utils/FloatArray;->add(FF)V

    move-object/from16 v4, v16

    move-object/from16 v0, v18

    goto :goto_e

    :catch_9
    move-exception v0

    move-object/from16 v19, v5

    goto/16 :goto_13

    :cond_1d
    move-object/from16 v16, v4

    move/from16 v4, v24

    sub-int/2addr v13, v14

    int-to-float v0, v13

    sub-int/2addr v15, v4

    int-to-float v9, v15

    const/4 v13, 0x0

    :goto_10
    iget v15, v11, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-ge v13, v15, :cond_1e

    iget-object v15, v11, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    aget v18, v15, v13
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    move-object/from16 v19, v5

    int-to-float v5, v14

    sub-float v18, v18, v5

    div-float v18, v18, v0

    int-to-float v5, v12

    mul-float v18, v18, v5

    :try_start_f
    aput v18, v15, v13

    add-int/lit8 v18, v13, 0x1

    aget v20, v15, v18

    move/from16 v21, v12

    int-to-float v12, v4

    sub-float v20, v20, v12

    div-float v20, v20, v9

    mul-float v20, v20, v5

    aput v20, v15, v18

    add-int/lit8 v13, v13, 0x2

    move-object/from16 v5, v19

    move/from16 v12, v21

    goto :goto_10

    :cond_1e
    move-object/from16 v19, v5

    invoke-virtual {v3, v11}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeTriangles(Lcom/badlogic/gdx/utils/FloatArray;)Lcom/badlogic/gdx/utils/ShortArray;

    move-result-object v5

    new-instance v12, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

    invoke-virtual {v11}, Lcom/badlogic/gdx/utils/FloatArray;->toArray()[F

    move-result-object v11

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/ShortArray;->toArray()[S

    move-result-object v5

    invoke-direct {v12, v2, v11, v5}, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;[F[S)V

    new-instance v5, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;

    invoke-direct {v5, v12}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;)V

    iget v11, v1, Lcom/prineside/tdi2/managers/ResearchManager;->p:I

    sub-int/2addr v14, v11

    int-to-float v11, v14

    iget v12, v1, Lcom/prineside/tdi2/managers/ResearchManager;->r:I

    sub-int/2addr v4, v12

    int-to-float v4, v4

    invoke-virtual {v5, v11, v4, v0, v9}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setBounds(FFFF)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b

    const/4 v4, 0x1

    :try_start_10
    invoke-virtual {v7, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0x10

    invoke-static {v0, v7}, Lcom/prineside/tdi2/utils/PMath;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v6, v0}, Lcom/badlogic/gdx/graphics/Color;->rgba8888ToColor(Lcom/badlogic/gdx/graphics/Color;I)V

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v0, Lcom/prineside/tdi2/managers/ResearchManager$PolygonConfig;

    invoke-direct {v0}, Lcom/prineside/tdi2/managers/ResearchManager$PolygonConfig;-><init>()V

    iput-object v5, v0, Lcom/prineside/tdi2/managers/ResearchManager$PolygonConfig;->sprite:Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1f

    iget-object v5, v1, Lcom/prineside/tdi2/managers/ResearchManager;->a:Lcom/badlogic/gdx/utils/Array;

    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/Research;

    invoke-static {v8}, Lcom/prineside/tdi2/enums/ResearchType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/ResearchType;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget-object v5, v5, v7

    iput-object v5, v0, Lcom/prineside/tdi2/managers/ResearchManager$PolygonConfig;->visibleWith:Lcom/prineside/tdi2/Research;

    :cond_1f
    iget-object v5, v1, Lcom/prineside/tdi2/managers/ResearchManager;->k:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    goto :goto_14

    :catch_a
    move-exception v0

    goto :goto_13

    :catch_b
    move-exception v0

    goto :goto_12

    :catch_c
    move-exception v0

    goto :goto_11

    :catch_d
    move-exception v0

    move-object/from16 v16, v4

    :goto_11
    move-object/from16 v19, v5

    :goto_12
    const/4 v4, 0x1

    :goto_13
    const-string v5, "failed to load polygon for researches"

    invoke-static {v10, v5, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_14
    move-object/from16 v4, v16

    move-object/from16 v5, v19

    goto/16 :goto_d

    :cond_20
    iget v0, v1, Lcom/prineside/tdi2/managers/ResearchManager;->q:I

    iget v2, v1, Lcom/prineside/tdi2/managers/ResearchManager;->p:I

    sub-int/2addr v0, v2

    iput v0, v1, Lcom/prineside/tdi2/managers/ResearchManager;->t:I

    iget v0, v1, Lcom/prineside/tdi2/managers/ResearchManager;->s:I

    iget v2, v1, Lcom/prineside/tdi2/managers/ResearchManager;->r:I

    sub-int/2addr v0, v2

    iput v0, v1, Lcom/prineside/tdi2/managers/ResearchManager;->u:I

    iget-boolean v0, v1, Lcom/prineside/tdi2/managers/ResearchManager;->v:Z

    if-eqz v0, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/managers/ResearchManager;->j()V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/managers/ResearchManager;->k()V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/managers/ResearchManager;->updateAndValidateStarBranch()V

    :cond_21
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_15
    iget-object v2, v1, Lcom/prineside/tdi2/managers/ResearchManager;->a:Lcom/badlogic/gdx/utils/Array;

    iget v4, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v4, :cond_25

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Research;

    aget-object v2, v2, v3

    iget v4, v2, Lcom/prineside/tdi2/Research;->priceInStars:I

    if-eqz v4, :cond_22

    const/4 v5, 0x0

    goto :goto_17

    :cond_22
    iget-object v4, v2, Lcom/prineside/tdi2/Research;->levels:[Lcom/prineside/tdi2/Research$ResearchLevel;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v6, 0x0

    :goto_16
    iget-object v7, v4, Lcom/prineside/tdi2/Research$ResearchLevel;->price:Lcom/badlogic/gdx/utils/Array;

    iget v8, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v6, v8, :cond_24

    iget-object v7, v7, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/ItemStack;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v7

    invoke-virtual {v7}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v7

    sget-object v8, Lcom/prineside/tdi2/enums/ItemType;->PRESTIGE_TOKEN:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v7, v8, :cond_23

    goto :goto_17

    :cond_23
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_24
    iget-object v2, v2, Lcom/prineside/tdi2/Research;->levels:[Lcom/prineside/tdi2/Research$ResearchLevel;

    array-length v2, v2

    add-int/2addr v0, v2

    :goto_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " regular research levels"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_26
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of upgrade types ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") doesn\'t match the number in JSON file ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_19

    :goto_18
    throw v2

    :goto_19
    goto :goto_18
.end method

.method public removeListener(Lcom/prineside/tdi2/managers/ResearchManager$ResearchManagerListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->E:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public researchForToken(Lcom/prineside/tdi2/Research;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/prineside/tdi2/managers/ResearchManager;->canResearchForToken(Lcom/prineside/tdi2/Research;Z)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    sget-object v2, Lcom/prineside/tdi2/Item$D;->RESEARCH_TOKEN:Lcom/prineside/tdi2/items/ResearchTokenItem;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/prineside/tdi2/managers/ProgressManager;->removeItems(Lcom/prineside/tdi2/Item;I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    const/4 v2, 0x0

    const-string v4, "research_token"

    invoke-interface {v1, v2, v4, v3}, Lcom/prineside/tdi2/ActionResolver;->logCurrencySpent(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ResearchManager;->E:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/managers/ResearchManager;->E:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v4, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v4, :cond_1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/managers/ResearchManager$ResearchManagerListener;

    const-wide/16 v4, 0x0

    invoke-interface {v1, p1, v4, v5}, Lcom/prineside/tdi2/managers/ResearchManager$ResearchManagerListener;->researchStarted(Lcom/prineside/tdi2/Research;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    iget-object v0, p1, Lcom/prineside/tdi2/Research;->type:Lcom/prineside/tdi2/enums/ResearchType;

    iget v1, p1, Lcom/prineside/tdi2/Research;->installedLevel:I

    add-int/2addr v1, v3

    invoke-virtual {p0, v0, v1, v3}, Lcom/prineside/tdi2/managers/ResearchManager;->setInstalledLevel(Lcom/prineside/tdi2/enums/ResearchType;IZ)V

    iget-object v0, p1, Lcom/prineside/tdi2/Research;->installedLevelsForToken:Lcom/badlogic/gdx/utils/IntArray;

    if-nez v0, :cond_2

    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p1, Lcom/prineside/tdi2/Research;->installedLevelsForToken:Lcom/badlogic/gdx/utils/IntArray;

    :cond_2
    iget-object v0, p1, Lcom/prineside/tdi2/Research;->installedLevelsForToken:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, p1, Lcom/prineside/tdi2/Research;->installedLevel:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/ResearchManager;->i(Lcom/prineside/tdi2/Research;)V

    iput-object v2, p0, Lcom/prineside/tdi2/managers/ResearchManager;->x:Lcom/prineside/tdi2/Research;

    iput-boolean v3, p0, Lcom/prineside/tdi2/managers/ResearchManager;->B:Z

    invoke-virtual {p0, v3}, Lcom/prineside/tdi2/managers/ResearchManager;->checkResearchesStatus(Z)V

    return v3

    :cond_3
    return v0
.end method

.method public resetResearchForAccelerators(Lcom/prineside/tdi2/Research;)V
    .locals 6

    invoke-virtual {p1}, Lcom/prineside/tdi2/Research;->resetForAcceleratorsState()I

    move-result v0

    const-string v1, "ResearchManager"

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not be reset now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/prineside/tdi2/Research;->type:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " state "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/prineside/tdi2/Research;->getResetPrice()I

    move-result v0

    if-lez v0, :cond_3

    iget v2, p1, Lcom/prineside/tdi2/Research;->installedLevel:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v2, v4}, Lcom/prineside/tdi2/Research;->getCumulativePrice(IIZ)Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v5, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->removeAccelerators(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iput v3, p1, Lcom/prineside/tdi2/Research;->installedLevel:I

    iget-object v0, p1, Lcom/prineside/tdi2/Research;->levels:[Lcom/prineside/tdi2/Research$ResearchLevel;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/prineside/tdi2/Research$ResearchLevel;->price:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_1

    iput v4, p1, Lcom/prineside/tdi2/Research;->installedLevel:I

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/prineside/tdi2/Research;->installedLevelsForToken:Lcom/badlogic/gdx/utils/IntArray;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/managers/ProgressManager;->addItems(Lcom/badlogic/gdx/utils/Array;)V

    iput-boolean v4, p0, Lcom/prineside/tdi2/managers/ResearchManager;->B:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/prineside/tdi2/Research;->type:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for accelerators"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->j()V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "not_enough_accelerators"

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset price is "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public resetStarResearches()V
    .locals 5

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->c()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ResearchManager;->getResetStarResearchesAcceleratorPrice()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ResearchManager;->getResetStarResearchesAcceleratorPrice()I

    move-result v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->removeAccelerators(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    const-string v2, "reset_star_research"

    const-string v3, "accelerator"

    invoke-interface {v1, v2, v3, v0}, Lcom/prineside/tdi2/ActionResolver;->logCurrencySpent(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/managers/ResearchManager;->a:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_1

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, [Lcom/prineside/tdi2/Research;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/prineside/tdi2/Research;->priceInStars:I

    if-lez v3, :cond_0

    move-object v3, v2

    check-cast v3, [Lcom/prineside/tdi2/Research;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-lez v3, :cond_0

    check-cast v2, [Lcom/prineside/tdi2/Research;

    aget-object v2, v2, v1

    iput v0, v2, Lcom/prineside/tdi2/Research;->installedLevel:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->B:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->j()V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "not_enough_accelerators"

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "icon-times"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lcom/prineside/tdi2/enums/StaticSoundType;->FAIL:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    :cond_3
    :goto_1
    return-void
.end method

.method public save()V
    .locals 8

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->c()V

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->saveIfRequired()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v1, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_PROGRESS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ResearchManager;->x:Lcom/prineside/tdi2/Research;

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lcom/prineside/tdi2/Research;->type:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "currentlyResearching"

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/prineside/tdi2/managers/ResearchManager;->y:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "currentResearchEndTime"

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    sget-object v2, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    iget-object v3, p0, Lcom/prineside/tdi2/managers/ResearchManager;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/Research;

    iget v5, v4, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/prineside/tdi2/Research;->type:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    iget v4, v4, Lcom/prineside/tdi2/Research;->installedLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "installedResearches"

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    sget-object v2, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    iget-object v3, p0, Lcom/prineside/tdi2/managers/ResearchManager;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/Research;

    iget-object v6, v4, Lcom/prineside/tdi2/Research;->installedLevelsForToken:Lcom/badlogic/gdx/utils/IntArray;

    if-eqz v6, :cond_4

    iget-object v6, v4, Lcom/prineside/tdi2/Research;->type:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    :goto_3
    iget-object v6, v4, Lcom/prineside/tdi2/Research;->installedLevelsForToken:Lcom/badlogic/gdx/utils/IntArray;

    iget v7, v6, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v5, v7, :cond_5

    iget-object v6, v6, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v6, v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "installedResearchesForTokens"

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    iput-boolean v5, p0, Lcom/prineside/tdi2/managers/ResearchManager;->B:Z

    return-void
.end method

.method public saveIfRequired()V
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->B:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->save()V

    :cond_0
    return-void
.end method

.method public setInstalledLevel(Lcom/prineside/tdi2/enums/ResearchType;IZ)V
    .locals 3

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->c()V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/ResearchManager;->getResearchInstance(Lcom/prineside/tdi2/enums/ResearchType;)Lcom/prineside/tdi2/Research;

    move-result-object v0

    iget v1, v0, Lcom/prineside/tdi2/Research;->maxEndlessLevel:I

    if-lt v1, p2, :cond_2

    iput p2, v0, Lcom/prineside/tdi2/Research;->installedLevel:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/managers/ResearchManager;->B:Z

    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/managers/ResearchManager;->E:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 p1, 0x0

    iget-object p2, p0, Lcom/prineside/tdi2/managers/ResearchManager;->E:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget p2, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge p1, p2, :cond_0

    iget-object p3, p0, Lcom/prineside/tdi2/managers/ResearchManager;->E:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/prineside/tdi2/managers/ResearchManager$ResearchManagerListener;

    invoke-interface {p3, v0}, Lcom/prineside/tdi2/managers/ResearchManager$ResearchManagerListener;->researchCompleted(Lcom/prineside/tdi2/Research;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/managers/ResearchManager;->E:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    :cond_1
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->j()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->k()V

    return-void

    :cond_2
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Level for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is too high ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "), max research level is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/prineside/tdi2/Research;->maxEndlessLevel:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p3

    :goto_2
    goto :goto_1
.end method

.method public setup()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    new-instance v1, Lcom/prineside/tdi2/managers/ResearchManager$1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/ResearchManager$1;-><init>(Lcom/prineside/tdi2/managers/ResearchManager;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->addListener(Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->reload()V

    new-instance v0, Lcom/prineside/tdi2/managers/ResearchManager$2;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/managers/ResearchManager$2;-><init>(Lcom/prineside/tdi2/managers/ResearchManager;)V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ResearchManager;->addListener(Lcom/prineside/tdi2/managers/ResearchManager$ResearchManagerListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->v:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ResearchManager;->checkResearchesStatus(Z)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->updateAndValidateStarBranch()V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/managers/ResearchManager$3;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/ResearchManager$3;-><init>(Lcom/prineside/tdi2/managers/ResearchManager;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->addLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V

    return-void
.end method

.method public startResearching(Lcom/prineside/tdi2/Research;Z)Z
    .locals 6

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->c()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1, v0}, Lcom/prineside/tdi2/managers/ResearchManager;->tryStartResearching(Lcom/prineside/tdi2/Research;ZLcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;)V
    :try_end_0
    .catch Lcom/prineside/tdi2/managers/ResearchManager$StartResearchingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget p2, p1, Lcom/prineside/tdi2/Research;->installedLevel:I

    iget-object v2, p1, Lcom/prineside/tdi2/Research;->levels:[Lcom/prineside/tdi2/Research$ResearchLevel;

    array-length v3, v2

    if-ge p2, v3, :cond_0

    aget-object p2, v2, p2

    iget-object p2, p2, Lcom/prineside/tdi2/Research$ResearchLevel;->price:Lcom/badlogic/gdx/utils/Array;

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lcom/prineside/tdi2/Research;->endlessLevel:Lcom/prineside/tdi2/Research$EndlessResearchLevel;

    add-int/2addr p2, v0

    invoke-virtual {v2, p2}, Lcom/prineside/tdi2/Research$EndlessResearchLevel;->getPrice(I)Lcom/badlogic/gdx/utils/Array;

    move-result-object p2

    :goto_0
    const/4 v2, 0x0

    :goto_1
    iget v3, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_1

    iget-object v3, p2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/ItemStack;

    aget-object v3, v3, v2

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v5

    invoke-virtual {v3}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v3

    invoke-virtual {v4, v5, v3}, Lcom/prineside/tdi2/managers/ProgressManager;->removeItems(Lcom/prineside/tdi2/Item;I)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iput-object p1, p0, Lcom/prineside/tdi2/managers/ResearchManager;->x:Lcom/prineside/tdi2/Research;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/ResearchManager;->getResearchingDuration(Lcom/prineside/tdi2/Research;)J

    move-result-wide v2

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v4

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/prineside/tdi2/managers/ResearchManager;->y:J

    iget-object p2, p0, Lcom/prineside/tdi2/managers/ResearchManager;->E:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    :goto_2
    iget-object p2, p0, Lcom/prineside/tdi2/managers/ResearchManager;->E:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v4, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v4, :cond_2

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/prineside/tdi2/managers/ResearchManager$ResearchManagerListener;

    invoke-interface {p2, p1, v2, v3}, Lcom/prineside/tdi2/managers/ResearchManager$ResearchManagerListener;->researchStarted(Lcom/prineside/tdi2/Research;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->l()V

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->B:Z

    return v0

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to start researching "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/prineside/tdi2/Research;->type:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ResearchManager"

    invoke-static {v0, p1, p2}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_3
    iget-object v2, p2, Lcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;->reasons:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p1, v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;->reasons:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    return v1
.end method

.method public test()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/managers/ResearchManager;->a:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/Research;

    :try_start_0
    invoke-virtual {v1}, Lcom/prineside/tdi2/Research;->getDescription()Ljava/lang/CharSequence;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Research;->getTitle()Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v2, v1, Lcom/prineside/tdi2/Research;->category:Lcom/prineside/tdi2/ResearchCategory;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ResearchCategory;->getDescription()Ljava/lang/String;

    iget-object v2, v1, Lcom/prineside/tdi2/Research;->category:Lcom/prineside/tdi2/ResearchCategory;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ResearchCategory;->getTitle()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Test: failed for research type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/prineside/tdi2/Research;->type:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResearchManager"

    invoke-static {v2, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public tryStartResearching(Lcom/prineside/tdi2/Research;ZLcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;)V
    .locals 7

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->c()V

    if-nez p3, :cond_0

    new-instance p3, Lcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;

    invoke-direct {p3, p0}, Lcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;-><init>(Lcom/prineside/tdi2/managers/ResearchManager;)V

    :cond_0
    iget-object v0, p3, Lcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;->reasons:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->getCurrentResearching()Lcom/prineside/tdi2/Research;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;->reasons:Lcom/badlogic/gdx/utils/Array;

    sget-object v1, Lcom/prineside/tdi2/managers/ResearchManager$StartResearchFailReason;->OTHER_RESEARCH_IN_PROGRESS:Lcom/prineside/tdi2/managers/ResearchManager$StartResearchFailReason;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyMode()Lcom/prineside/tdi2/enums/DifficultyMode;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/enums/DifficultyMode;->EASY:Lcom/prineside/tdi2/enums/DifficultyMode;

    if-eq v0, v1, :cond_3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyMode()Lcom/prineside/tdi2/enums/DifficultyMode;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/enums/DifficultyMode;->NORMAL:Lcom/prineside/tdi2/enums/DifficultyMode;

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/prineside/tdi2/Research;->isMaxEndlessLevel()Z

    move-result v0

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/prineside/tdi2/Research;->isMaxNormalLevel()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_4

    iget-object v1, p3, Lcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;->reasons:Lcom/badlogic/gdx/utils/Array;

    sget-object v2, Lcom/prineside/tdi2/managers/ResearchManager$StartResearchFailReason;->MAX_LEVEL:Lcom/prineside/tdi2/managers/ResearchManager$StartResearchFailReason;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_4
    iget v1, p1, Lcom/prineside/tdi2/Research;->priceInStars:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_a

    const/4 v1, 0x0

    :goto_2
    iget-object v4, p1, Lcom/prineside/tdi2/Research;->linksToParents:Lcom/badlogic/gdx/utils/Array;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v5, :cond_6

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/Research$ResearchLink;

    iget-object v4, v4, Lcom/prineside/tdi2/Research$ResearchLink;->parent:Lcom/prineside/tdi2/Research;

    iget v4, v4, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-lez v4, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_3
    const/4 v4, 0x0

    :goto_4
    iget-object v5, p1, Lcom/prineside/tdi2/Research;->linksToChildren:Lcom/badlogic/gdx/utils/Array;

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v6, :cond_8

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/Research$ResearchLink;

    iget-object v5, v5, Lcom/prineside/tdi2/Research$ResearchLink;->child:Lcom/prineside/tdi2/Research;

    iget v5, v5, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-lez v5, :cond_7

    const/4 v1, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    if-nez v1, :cond_9

    iget-object v1, p3, Lcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;->reasons:Lcom/badlogic/gdx/utils/Array;

    sget-object v4, Lcom/prineside/tdi2/managers/ResearchManager$StartResearchFailReason;->REQUIRES_PREVIOUS_RESEARCHES:Lcom/prineside/tdi2/managers/ResearchManager$StartResearchFailReason;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_9
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ResearchManager;->getUnusedStarsCount()I

    move-result v1

    iget v4, p1, Lcom/prineside/tdi2/Research;->priceInStars:I

    if-ge v1, v4, :cond_c

    iget-object v1, p3, Lcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;->reasons:Lcom/badlogic/gdx/utils/Array;

    sget-object v4, Lcom/prineside/tdi2/managers/ResearchManager$StartResearchFailReason;->NOT_ENOUGH_STARS:Lcom/prineside/tdi2/managers/ResearchManager$StartResearchFailReason;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_7

    :cond_a
    const/4 v1, 0x0

    :goto_6
    iget-object v4, p1, Lcom/prineside/tdi2/Research;->linksToParents:Lcom/badlogic/gdx/utils/Array;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v5, :cond_c

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/Research$ResearchLink;

    iget v5, v4, Lcom/prineside/tdi2/Research$ResearchLink;->requiredLevels:I

    iget-object v4, v4, Lcom/prineside/tdi2/Research$ResearchLink;->parent:Lcom/prineside/tdi2/Research;

    iget v4, v4, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-le v5, v4, :cond_b

    iget-object v1, p3, Lcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;->reasons:Lcom/badlogic/gdx/utils/Array;

    sget-object v4, Lcom/prineside/tdi2/managers/ResearchManager$StartResearchFailReason;->REQUIRES_PREVIOUS_RESEARCHES:Lcom/prineside/tdi2/managers/ResearchManager$StartResearchFailReason;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_7

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_c
    :goto_7
    if-nez v0, :cond_16

    iget-object v0, p1, Lcom/prineside/tdi2/Research;->levels:[Lcom/prineside/tdi2/Research$ResearchLevel;

    array-length v1, v0

    iget v4, p1, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-le v1, v4, :cond_12

    aget-object p1, v0, v4

    if-nez p2, :cond_10

    const/4 p2, 0x0

    :goto_8
    iget-object v0, p1, Lcom/prineside/tdi2/Research$ResearchLevel;->price:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p2, v1, :cond_10

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/ItemStack;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v1

    sget-object v4, Lcom/prineside/tdi2/enums/ItemType;->GREEN_PAPER:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v1, v4, :cond_d

    invoke-virtual {v0}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getGreenPapers()I

    move-result v1

    if-le v0, v1, :cond_f

    iget-object v0, p3, Lcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;->reasons:Lcom/badlogic/gdx/utils/Array;

    sget-object v1, Lcom/prineside/tdi2/managers/ResearchManager$StartResearchFailReason;->NOT_ENOUGH_MONEY:Lcom/prineside/tdi2/managers/ResearchManager$StartResearchFailReason;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_9

    :cond_d
    invoke-virtual {v0}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v1

    sget-object v4, Lcom/prineside/tdi2/enums/ItemType;->RESOURCE:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v1, v4, :cond_e

    invoke-virtual {v0}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/items/ResourceItem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v0

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v1, v1, Lcom/prineside/tdi2/items/ResourceItem;->resourceType:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v4, v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getResources(Lcom/prineside/tdi2/enums/ResourceType;)I

    move-result v1

    if-le v0, v1, :cond_f

    iget-object v0, p3, Lcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;->reasons:Lcom/badlogic/gdx/utils/Array;

    sget-object v1, Lcom/prineside/tdi2/managers/ResearchManager$StartResearchFailReason;->NOT_ENOUGH_RESOURCES:Lcom/prineside/tdi2/managers/ResearchManager$StartResearchFailReason;

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p3, Lcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;->reasons:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_9

    :cond_e
    invoke-virtual {v0}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v1

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsCount(Lcom/prineside/tdi2/Item;)I

    move-result v0

    if-le v1, v0, :cond_f

    iget-object v0, p3, Lcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;->reasons:Lcom/badlogic/gdx/utils/Array;

    sget-object v1, Lcom/prineside/tdi2/managers/ResearchManager$StartResearchFailReason;->NOT_ENOUGH_ITEMS:Lcom/prineside/tdi2/managers/ResearchManager$StartResearchFailReason;

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p3, Lcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;->reasons:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_f
    :goto_9
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_8

    :cond_10
    iget-object p1, p1, Lcom/prineside/tdi2/Research$ResearchLevel;->requirements:[Lcom/prineside/tdi2/Requirement;

    array-length p2, p1

    :goto_a
    if-ge v2, p2, :cond_16

    aget-object v0, p1, v2

    invoke-virtual {v0}, Lcom/prineside/tdi2/Requirement;->isSatisfied()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object p1, p3, Lcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;->reasons:Lcom/badlogic/gdx/utils/Array;

    sget-object p2, Lcom/prineside/tdi2/managers/ResearchManager$StartResearchFailReason;->REQUIREMENT_NOT_SATISFIED:Lcom/prineside/tdi2/managers/ResearchManager$StartResearchFailReason;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto/16 :goto_d

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_12
    if-nez p2, :cond_16

    iget-object p1, p1, Lcom/prineside/tdi2/Research;->endlessLevel:Lcom/prineside/tdi2/Research$EndlessResearchLevel;

    add-int/2addr v4, v3

    invoke-virtual {p1, v4}, Lcom/prineside/tdi2/Research$EndlessResearchLevel;->getPrice(I)Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    :goto_b
    iget p2, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, p2, :cond_16

    iget-object p2, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast p2, [Lcom/prineside/tdi2/ItemStack;

    aget-object p2, p2, v2

    invoke-virtual {p2}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/enums/ItemType;->GREEN_PAPER:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v0, v1, :cond_13

    invoke-virtual {p2}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result p2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getGreenPapers()I

    move-result v0

    if-le p2, v0, :cond_15

    iget-object p2, p3, Lcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;->reasons:Lcom/badlogic/gdx/utils/Array;

    sget-object v0, Lcom/prineside/tdi2/managers/ResearchManager$StartResearchFailReason;->NOT_ENOUGH_MONEY:Lcom/prineside/tdi2/managers/ResearchManager$StartResearchFailReason;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_c

    :cond_13
    invoke-virtual {p2}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/enums/ItemType;->RESOURCE:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v0, v1, :cond_14

    invoke-virtual {p2}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/items/ResourceItem;

    invoke-virtual {p2}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result p2

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v0, v0, Lcom/prineside/tdi2/items/ResourceItem;->resourceType:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getResources(Lcom/prineside/tdi2/enums/ResourceType;)I

    move-result v0

    if-le p2, v0, :cond_15

    iget-object p2, p3, Lcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;->reasons:Lcom/badlogic/gdx/utils/Array;

    sget-object v0, Lcom/prineside/tdi2/managers/ResearchManager$StartResearchFailReason;->NOT_ENOUGH_RESOURCES:Lcom/prineside/tdi2/managers/ResearchManager$StartResearchFailReason;

    invoke-virtual {p2, v0, v3}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result p2

    if-nez p2, :cond_15

    iget-object p2, p3, Lcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;->reasons:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_c

    :cond_14
    invoke-virtual {p2}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {p2}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsCount(Lcom/prineside/tdi2/Item;)I

    move-result p2

    if-le v0, p2, :cond_15

    iget-object p2, p3, Lcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;->reasons:Lcom/badlogic/gdx/utils/Array;

    sget-object v0, Lcom/prineside/tdi2/managers/ResearchManager$StartResearchFailReason;->NOT_ENOUGH_ITEMS:Lcom/prineside/tdi2/managers/ResearchManager$StartResearchFailReason;

    invoke-virtual {p2, v0, v3}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result p2

    if-nez p2, :cond_15

    iget-object p2, p3, Lcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;->reasons:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_15
    :goto_c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_b

    :cond_16
    :goto_d
    iget-object p1, p3, Lcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;->reasons:Lcom/badlogic/gdx/utils/Array;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez p1, :cond_17

    return-void

    :cond_17
    goto :goto_f

    :goto_e
    throw p3

    :goto_f
    goto :goto_e
.end method

.method public updateAfforableResearchesCount()V
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->c()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/managers/ResearchManager;->z:I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/managers/ResearchManager;->a:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_1

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Research;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2, v0}, Lcom/prineside/tdi2/managers/ResearchManager;->canStartResearching(Lcom/prineside/tdi2/Research;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/prineside/tdi2/managers/ResearchManager;->z:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/prineside/tdi2/managers/ResearchManager;->z:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateAndValidateStarBranch()V
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->c()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->e()Z

    move-result v2

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->j()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->k()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ResearchManager;->save()V

    :cond_3
    return-void
.end method
