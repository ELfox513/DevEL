.class public Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/TrophyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TrophyConfig"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Z

.field public final synthetic f:Lcom/prineside/tdi2/managers/TrophyManager;

.field public gameValues:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;",
            ">;"
        }
    .end annotation
.end field

.field public type:Lcom/prineside/tdi2/enums/TrophyType;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/TrophyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;->f:Lcom/prineside/tdi2/managers/TrophyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;->d:Z

    return p1
.end method

.method public static synthetic b(Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;Lcom/prineside/tdi2/enums/TrophyType;Lcom/badlogic/gdx/utils/Array;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;->c(Lcom/prineside/tdi2/enums/TrophyType;Lcom/badlogic/gdx/utils/Array;)V

    return-void
.end method


# virtual methods
.method public final c(Lcom/prineside/tdi2/enums/TrophyType;Lcom/badlogic/gdx/utils/Array;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/enums/TrophyType;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;->type:Lcom/prineside/tdi2/enums/TrophyType;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;->gameValues:Lcom/badlogic/gdx/utils/Array;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "tr_title_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "trophy-"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-white"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;->b:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;->c:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;->e:Z

    return-void
.end method

.method public getIconTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWhiteTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public isReceived()Z
    .locals 5

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;->e:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    sget-object v1, Lcom/prineside/tdi2/enums/ItemType;->TROPHY:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsByType(Lcom/prineside/tdi2/enums/ItemType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v3}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/items/TrophyItem;

    iget-object v3, v3, Lcom/prineside/tdi2/items/TrophyItem;->trophyType:Lcom/prineside/tdi2/enums/TrophyType;

    iget-object v4, p0, Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;->type:Lcom/prineside/tdi2/enums/TrophyType;

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Config is not setup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
