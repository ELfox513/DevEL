.class public Lcom/prineside/tdi2/BasicLevelStage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final color:Lcom/badlogic/gdx/graphics/Color;

.field public final levels:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/BasicLevel;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;

.field public regular:Z

.field public final showRequirements:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Requirement;",
            ">;"
        }
    .end annotation
.end field

.field public final titleAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/BasicLevelStage;->regular:Z

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v1, p0, Lcom/prineside/tdi2/BasicLevelStage;->showRequirements:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    const-class v2, Lcom/prineside/tdi2/BasicLevel;

    invoke-direct {v1, v0, v0, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/BasicLevelStage;->levels:Lcom/badlogic/gdx/utils/Array;

    iput-object p1, p0, Lcom/prineside/tdi2/BasicLevelStage;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/prineside/tdi2/BasicLevelStage;->color:Lcom/badlogic/gdx/graphics/Color;

    iput-object p3, p0, Lcom/prineside/tdi2/BasicLevelStage;->titleAlias:Ljava/lang/String;

    return-void
.end method

.method public static fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/BasicLevelStage;
    .locals 6

    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "regular"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    const-string v4, "color"

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/badlogic/gdx/graphics/Color;->rgb888ToColor(Lcom/badlogic/gdx/graphics/Color;I)V

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    new-instance v4, Lcom/prineside/tdi2/BasicLevelStage;

    invoke-direct {v4, v0, v3, v1}, Lcom/prineside/tdi2/BasicLevelStage;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    iput-boolean v2, v4, Lcom/prineside/tdi2/BasicLevelStage;->regular:Z

    const-string v0, "showRequirements"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v1, v4, Lcom/prineside/tdi2/BasicLevelStage;->showRequirements:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0}, Lcom/prineside/tdi2/Requirement;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Requirement;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v4
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    iget-object v1, p0, Lcom/prineside/tdi2/BasicLevelStage;->titleAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sortLevels()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/BasicLevelStage;->levels:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/prineside/tdi2/BasicLevelStage;->levels:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v4, :cond_1

    iget-object v4, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, [Lcom/prineside/tdi2/BasicLevel;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/prineside/tdi2/BasicLevel;->stagePosition:I

    check-cast v4, [Lcom/prineside/tdi2/BasicLevel;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/prineside/tdi2/BasicLevel;->stagePosition:I

    if-le v5, v4, :cond_0

    invoke-virtual {v3, v0, v2}, Lcom/badlogic/gdx/utils/Array;->swap(II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    return-void
.end method
