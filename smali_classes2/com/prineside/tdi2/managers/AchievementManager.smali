.class public Lcom/prineside/tdi2/managers/AchievementManager;
.super Lcom/prineside/tdi2/Manager$ManagerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/AchievementManager$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/AchievementManager$AchievementConfig;,
        Lcom/prineside/tdi2/managers/AchievementManager$Serializer;
    }
.end annotation


# static fields
.field public static final k:[Ljava/lang/String;

.field public static final p:[Ljava/lang/String;

.field public static final q:[Ljava/lang/String;

.field public static final r:[Ljava/lang/String;

.field public static final s:[Ljava/lang/String;

.field public static final t:[Ljava/lang/String;


# instance fields
.field public a:[I

.field public b:Z

.field public configs:[Lcom/prineside/tdi2/managers/AchievementManager$AchievementConfig;

.field public d:F

.field public redeemed:[Z


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "0.1"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "0.2"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "0.3"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "0.4"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sput-object v1, Lcom/prineside/tdi2/managers/AchievementManager;->k:[Ljava/lang/String;

    const/16 v1, 0x8

    new-array v2, v1, [Ljava/lang/String;

    const-string v7, "1.1"

    aput-object v7, v2, v3

    const-string v7, "1.2"

    aput-object v7, v2, v4

    const-string v7, "1.3"

    aput-object v7, v2, v5

    const-string v7, "1.4"

    aput-object v7, v2, v6

    const-string v7, "1.5"

    aput-object v7, v2, v0

    const-string v7, "1.6"

    const/4 v8, 0x5

    aput-object v7, v2, v8

    const-string v7, "1.7"

    const/4 v9, 0x6

    aput-object v7, v2, v9

    const-string v7, "1.8"

    const/4 v10, 0x7

    aput-object v7, v2, v10

    sput-object v2, Lcom/prineside/tdi2/managers/AchievementManager;->p:[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    const-string v7, "2.1"

    aput-object v7, v2, v3

    const-string v7, "2.2"

    aput-object v7, v2, v4

    const-string v7, "2.3"

    aput-object v7, v2, v5

    const-string v7, "2.4"

    aput-object v7, v2, v6

    const-string v7, "2.5"

    aput-object v7, v2, v0

    const-string v7, "2.6"

    aput-object v7, v2, v8

    const-string v7, "2.7"

    aput-object v7, v2, v9

    const-string v7, "2.8"

    aput-object v7, v2, v10

    sput-object v2, Lcom/prineside/tdi2/managers/AchievementManager;->q:[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    const-string v7, "3.1"

    aput-object v7, v2, v3

    const-string v7, "3.2"

    aput-object v7, v2, v4

    const-string v7, "3.3"

    aput-object v7, v2, v5

    const-string v7, "3.4"

    aput-object v7, v2, v6

    const-string v7, "3.5"

    aput-object v7, v2, v0

    const-string v7, "3.6"

    aput-object v7, v2, v8

    const-string v7, "3.7"

    aput-object v7, v2, v9

    const-string v7, "3.8"

    aput-object v7, v2, v10

    sput-object v2, Lcom/prineside/tdi2/managers/AchievementManager;->r:[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    const-string v7, "4.1"

    aput-object v7, v2, v3

    const-string v7, "4.2"

    aput-object v7, v2, v4

    const-string v7, "4.3"

    aput-object v7, v2, v5

    const-string v7, "4.4"

    aput-object v7, v2, v6

    const-string v7, "4.5"

    aput-object v7, v2, v0

    const-string v7, "4.6"

    aput-object v7, v2, v8

    const-string v7, "4.7"

    aput-object v7, v2, v9

    const-string v7, "4.8"

    aput-object v7, v2, v10

    sput-object v2, Lcom/prineside/tdi2/managers/AchievementManager;->s:[Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "5.1"

    aput-object v2, v1, v3

    const-string v2, "5.2"

    aput-object v2, v1, v4

    const-string v2, "5.3"

    aput-object v2, v1, v5

    const-string v2, "5.4"

    aput-object v2, v1, v6

    const-string v2, "5.5"

    aput-object v2, v1, v0

    const-string v0, "5.6"

    aput-object v0, v1, v8

    const-string v0, "5.7"

    aput-object v0, v1, v9

    const-string v0, "5.8"

    aput-object v0, v1, v10

    sput-object v1, Lcom/prineside/tdi2/managers/AchievementManager;->t:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/prineside/tdi2/Manager$ManagerAdapter;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/enums/AchievementType;->values:[Lcom/prineside/tdi2/enums/AchievementType;

    array-length v1, v0

    new-array v1, v1, [Lcom/prineside/tdi2/managers/AchievementManager$AchievementConfig;

    iput-object v1, p0, Lcom/prineside/tdi2/managers/AchievementManager;->configs:[Lcom/prineside/tdi2/managers/AchievementManager$AchievementConfig;

    array-length v1, v0

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/prineside/tdi2/managers/AchievementManager;->a:[I

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/prineside/tdi2/managers/AchievementManager;->redeemed:[Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/AchievementManager;->b:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/managers/AchievementManager;->d:F

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/managers/AchievementManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AchievementManager;->reload()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/prineside/tdi2/enums/AchievementType;[Ljava/lang/String;)V
    .locals 5

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v3, p2, v1

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v4, v3}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v4

    if-eqz v4, :cond_1

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getGainedStars(Lcom/prineside/tdi2/BasicLevel;)I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleCompletedLevels - level "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not found"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/prineside/tdi2/managers/AchievementManager;->setProgress(Lcom/prineside/tdi2/enums/AchievementType;I)V

    return-void
.end method

.method public countAchievementsToRedeem()I
    .locals 6

    sget-object v0, Lcom/prineside/tdi2/enums/AchievementType;->values:[Lcom/prineside/tdi2/enums/AchievementType;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    invoke-virtual {v5, v4}, Lcom/prineside/tdi2/managers/AchievementManager;->isRequirementMet(Lcom/prineside/tdi2/enums/AchievementType;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/AchievementManager;->redeemed:[Z

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-boolean v4, v5, v4

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public getCurrentProgress(Lcom/prineside/tdi2/enums/AchievementType;)I
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AchievementManager;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    return p1
.end method

.method public getDescription(Lcom/prineside/tdi2/enums/AchievementType;)Ljava/lang/CharSequence;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "achievement_description_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AchievementManager;->configs:[Lcom/prineside/tdi2/managers/AchievementManager$AchievementConfig;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v1, p1

    iget p1, p1, Lcom/prineside/tdi2/managers/AchievementManager$AchievementConfig;->required:I

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getName(Lcom/prineside/tdi2/enums/AchievementType;)Ljava/lang/CharSequence;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "achievement_name_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isRequirementMet(Lcom/prineside/tdi2/enums/AchievementType;)Z
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AchievementManager;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AchievementManager;->configs:[Lcom/prineside/tdi2/managers/AchievementManager$AchievementConfig;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v1, p1

    iget p1, p1, Lcom/prineside/tdi2/managers/AchievementManager$AchievementConfig;->required:I

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public postRender(F)V
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/managers/AchievementManager;->d:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/managers/AchievementManager;->d:F

    const/high16 p1, 0x41c80000    # 25.0f

    cmpl-float p1, v0, p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/prineside/tdi2/managers/AchievementManager;->d:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AchievementManager;->saveIfRequired()V

    :cond_0
    return-void
.end method

.method public redeem(Lcom/prineside/tdi2/enums/AchievementType;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/AchievementManager;->isRequirementMet(Lcom/prineside/tdi2/enums/AchievementType;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AchievementManager;->redeemed:[Z

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/prineside/tdi2/IssuedItems;

    sget-object v1, Lcom/prineside/tdi2/IssuedItems$IssueReason;->ACHIEVEMENT:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/IssuedItems;-><init>(Lcom/prineside/tdi2/IssuedItems$IssueReason;I)V

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    const-class v2, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/prineside/tdi2/managers/AchievementManager;->configs:[Lcom/prineside/tdi2/managers/AchievementManager$AchievementConfig;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/prineside/tdi2/managers/AchievementManager$AchievementConfig;->rewards:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    iget-object v2, v0, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    iput-object p1, v0, Lcom/prineside/tdi2/IssuedItems;->achievementType:Lcom/prineside/tdi2/enums/AchievementType;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/prineside/tdi2/managers/ProgressManager;->addIssuedPrizes(Lcom/prineside/tdi2/IssuedItems;Z)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v0, v0, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->addItems(Lcom/badlogic/gdx/utils/Array;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->showNewlyIssuedPrizesPopup()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AchievementManager;->redeemed:[Z

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aput-boolean v2, v0, p1

    iput-boolean v2, p0, Lcom/prineside/tdi2/managers/AchievementManager;->b:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final reload()V
    .locals 10

    const-string v0, "AchievementManager"

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AchievementManager;->a:[I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AchievementManager;->redeemed:[Z

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([ZZ)V

    new-instance v1, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v4, "res/achievements.json"

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v5, v3, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-static {v5}, Lcom/prineside/tdi2/enums/AchievementType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/AchievementType;

    move-result-object v5

    new-instance v6, Lcom/prineside/tdi2/managers/AchievementManager$AchievementConfig;

    invoke-direct {v6}, Lcom/prineside/tdi2/managers/AchievementManager$AchievementConfig;-><init>()V

    const-string v7, "required"

    invoke-virtual {v3, v7, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v6, Lcom/prineside/tdi2/managers/AchievementManager$AchievementConfig;->required:I

    const-string v4, "hidden"

    invoke-virtual {v3, v4, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v6, Lcom/prineside/tdi2/managers/AchievementManager$AchievementConfig;->hidden:Z

    const-string v4, "rewards"

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v7, v6, Lcom/prineside/tdi2/managers/AchievementManager$AchievementConfig;->rewards:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v4}, Lcom/prineside/tdi2/ItemStack;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/prineside/tdi2/managers/AchievementManager;->configs:[Lcom/prineside/tdi2/managers/AchievementManager$AchievementConfig;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput-object v6, v3, v4

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v3, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_PROGRESS:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v1

    const/4 v3, 0x0

    const-string v5, "achievements"

    invoke-virtual {v1, v5, v3}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    :try_start_0
    new-instance v5, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v5}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/prineside/tdi2/enums/AchievementType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/AchievementType;

    move-result-object v6

    iget-object v7, p0, Lcom/prineside/tdi2/managers/AchievementManager;->a:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(I)I

    move-result v9

    aput v9, v7, v8

    iget-object v7, p0, Lcom/prineside/tdi2/managers/AchievementManager;->redeemed:[Z

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(I)I

    move-result v5

    if-ne v5, v4, :cond_2

    const/4 v5, 0x1

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    :goto_3
    aput-boolean v5, v7, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    :try_start_2
    const-string v6, "failed to load achievement progress"

    invoke-static {v0, v6, v5}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to parse json: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public save()V
    .locals 10

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v1, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_PROGRESS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    sget-object v2, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart()V

    sget-object v3, Lcom/prineside/tdi2/enums/AchievementType;->values:[Lcom/prineside/tdi2/enums/AchievementType;

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v3, v6

    iget-object v8, p0, Lcom/prineside/tdi2/managers/AchievementManager;->a:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9

    if-eqz v8, :cond_0

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart()V

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/prineside/tdi2/managers/AchievementManager;->a:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/prineside/tdi2/managers/AchievementManager;->redeemed:[Z

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget-boolean v7, v8, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "achievements"

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    iput-boolean v5, p0, Lcom/prineside/tdi2/managers/AchievementManager;->b:Z

    return-void
.end method

.method public saveIfRequired()V
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/AchievementManager;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AchievementManager;->save()V

    :cond_0
    return-void
.end method

.method public setProgress(Lcom/prineside/tdi2/enums/AchievementType;I)V
    .locals 7

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/prineside/tdi2/Config;->isModdingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AchievementManager;->a:[I

    aget v1, v1, v0

    if-ge v1, p2, :cond_3

    iget-object v2, p0, Lcom/prineside/tdi2/managers/AchievementManager;->configs:[Lcom/prineside/tdi2/managers/AchievementManager$AchievementConfig;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/prineside/tdi2/managers/AchievementManager$AchievementConfig;->required:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    if-lt p2, v2, :cond_2

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/AchievementManager;->getName(Lcom/prineside/tdi2/enums/AchievementType;)Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const-string v1, "achievement_complete"

    invoke-virtual {v2, v1, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "icon-trophy"

    invoke-virtual {v2, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lcom/prineside/tdi2/enums/StaticSoundType;->SUCCESS:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v4, v1, v2, v5, v6}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-interface {v1, p1}, Lcom/prineside/tdi2/ActionResolver;->unlockAchievement(Lcom/prineside/tdi2/enums/AchievementType;)V

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/managers/AchievementManager;->a:[I

    aput p2, p1, v0

    iput-boolean v3, p0, Lcom/prineside/tdi2/managers/AchievementManager;->b:Z

    :cond_3
    return-void
.end method

.method public setup()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    new-instance v1, Lcom/prineside/tdi2/managers/AchievementManager$1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/AchievementManager$1;-><init>(Lcom/prineside/tdi2/managers/AchievementManager;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->addListener(Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/managers/AchievementManager$2;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/AchievementManager$2;-><init>(Lcom/prineside/tdi2/managers/AchievementManager;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->addLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    new-instance v1, Lcom/prineside/tdi2/managers/AchievementManager$3;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/AchievementManager$3;-><init>(Lcom/prineside/tdi2/managers/AchievementManager;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ProgressManager;->addListener(Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AchievementManager;->reload()V

    return-void
.end method

.method public syncAchievementsWithPlatform()V
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/enums/AchievementType;->values:[Lcom/prineside/tdi2/enums/AchievementType;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Lcom/prineside/tdi2/managers/AchievementManager;->isRequirementMet(Lcom/prineside/tdi2/enums/AchievementType;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-interface {v4, v3}, Lcom/prineside/tdi2/ActionResolver;->unlockAchievement(Lcom/prineside/tdi2/enums/AchievementType;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateGlobal()V
    .locals 5

    invoke-static {}, Lcom/prineside/tdi2/Config;->isModdingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/enums/AchievementType;->TUTORIALS_COMPLETE:Lcom/prineside/tdi2/enums/AchievementType;

    sget-object v1, Lcom/prineside/tdi2/managers/AchievementManager;->k:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/prineside/tdi2/managers/AchievementManager;->b(Lcom/prineside/tdi2/enums/AchievementType;[Ljava/lang/String;)V

    sget-object v0, Lcom/prineside/tdi2/enums/AchievementType;->STAGE_1_COMPLETE:Lcom/prineside/tdi2/enums/AchievementType;

    sget-object v1, Lcom/prineside/tdi2/managers/AchievementManager;->p:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/prineside/tdi2/managers/AchievementManager;->b(Lcom/prineside/tdi2/enums/AchievementType;[Ljava/lang/String;)V

    sget-object v0, Lcom/prineside/tdi2/enums/AchievementType;->STAGE_2_COMPLETE:Lcom/prineside/tdi2/enums/AchievementType;

    sget-object v1, Lcom/prineside/tdi2/managers/AchievementManager;->q:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/prineside/tdi2/managers/AchievementManager;->b(Lcom/prineside/tdi2/enums/AchievementType;[Ljava/lang/String;)V

    sget-object v0, Lcom/prineside/tdi2/enums/AchievementType;->STAGE_3_COMPLETE:Lcom/prineside/tdi2/enums/AchievementType;

    sget-object v1, Lcom/prineside/tdi2/managers/AchievementManager;->r:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/prineside/tdi2/managers/AchievementManager;->b(Lcom/prineside/tdi2/enums/AchievementType;[Ljava/lang/String;)V

    sget-object v0, Lcom/prineside/tdi2/enums/AchievementType;->STAGE_4_COMPLETE:Lcom/prineside/tdi2/enums/AchievementType;

    sget-object v1, Lcom/prineside/tdi2/managers/AchievementManager;->s:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/prineside/tdi2/managers/AchievementManager;->b(Lcom/prineside/tdi2/enums/AchievementType;[Ljava/lang/String;)V

    sget-object v0, Lcom/prineside/tdi2/enums/AchievementType;->STAGE_5_COMPLETE:Lcom/prineside/tdi2/enums/AchievementType;

    sget-object v1, Lcom/prineside/tdi2/managers/AchievementManager;->t:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/prineside/tdi2/managers/AchievementManager;->b(Lcom/prineside/tdi2/enums/AchievementType;[Ljava/lang/String;)V

    sget-object v0, Lcom/prineside/tdi2/enums/AchievementType;->UNLOCK_ALL_TROPHIES:Lcom/prineside/tdi2/enums/AchievementType;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    sget-object v2, Lcom/prineside/tdi2/enums/ItemType;->TROPHY:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsByType(Lcom/prineside/tdi2/enums/ItemType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {p0, v0, v1}, Lcom/prineside/tdi2/managers/AchievementManager;->setProgress(Lcom/prineside/tdi2/enums/AchievementType;I)V

    sget-object v0, Lcom/prineside/tdi2/enums/AchievementType;->MILLION_PAPERS:Lcom/prineside/tdi2/enums/AchievementType;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v2, Lcom/prineside/tdi2/enums/StatisticsType;->GPG:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/prineside/tdi2/managers/AchievementManager;->setProgress(Lcom/prineside/tdi2/enums/AchievementType;I)V

    sget-object v0, Lcom/prineside/tdi2/enums/AchievementType;->KILL_MILLION_ENEMIES:Lcom/prineside/tdi2/enums/AchievementType;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v2, Lcom/prineside/tdi2/enums/StatisticsType;->EK:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v3

    double-to-int v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/prineside/tdi2/managers/AchievementManager;->setProgress(Lcom/prineside/tdi2/enums/AchievementType;I)V

    sget-object v0, Lcom/prineside/tdi2/enums/AchievementType;->KILL_TEN_MILLION_ENEMIES:Lcom/prineside/tdi2/enums/AchievementType;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/prineside/tdi2/managers/AchievementManager;->setProgress(Lcom/prineside/tdi2/enums/AchievementType;I)V

    return-void
.end method
