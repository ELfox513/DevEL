.class public Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/Item$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/items/CaseItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaseItemFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/Item$Factory<",
        "Lcom/prineside/tdi2/items/CaseItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:[[Lcom/prineside/tdi2/items/CaseItem;

.field public final b:[[Lcom/prineside/tdi2/items/CaseItem;

.field public final c:[[Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 9

    const-class v0, Lcom/prineside/tdi2/items/CaseItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/prineside/tdi2/enums/CaseType;->values:[Lcom/prineside/tdi2/enums/CaseType;

    array-length v2, v1

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x1

    aput v3, v4, v5

    const/4 v6, 0x0

    aput v2, v4, v6

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lcom/prineside/tdi2/items/CaseItem;

    iput-object v2, p0, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->a:[[Lcom/prineside/tdi2/items/CaseItem;

    array-length v2, v1

    new-array v4, v3, [I

    aput v3, v4, v5

    aput v2, v4, v6

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/prineside/tdi2/items/CaseItem;

    iput-object v0, p0, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->b:[[Lcom/prineside/tdi2/items/CaseItem;

    array-length v0, v1

    new-array v2, v3, [I

    aput v3, v2, v5

    aput v0, v2, v6

    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->c:[[Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    iget-object v4, p0, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->a:[[Lcom/prineside/tdi2/items/CaseItem;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget-object v4, v4, v7

    new-instance v7, Lcom/prineside/tdi2/items/CaseItem;

    const/4 v8, 0x0

    invoke-direct {v7, v3, v6, v6, v8}, Lcom/prineside/tdi2/items/CaseItem;-><init>(Lcom/prineside/tdi2/enums/CaseType;ZZLcom/prineside/tdi2/items/CaseItem$1;)V

    aput-object v7, v4, v6

    iget-object v4, p0, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->b:[[Lcom/prineside/tdi2/items/CaseItem;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget-object v4, v4, v7

    new-instance v7, Lcom/prineside/tdi2/items/CaseItem;

    invoke-direct {v7, v3, v5, v6, v8}, Lcom/prineside/tdi2/items/CaseItem;-><init>(Lcom/prineside/tdi2/enums/CaseType;ZZLcom/prineside/tdi2/items/CaseItem$1;)V

    aput-object v7, v4, v6

    iget-object v4, p0, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->a:[[Lcom/prineside/tdi2/items/CaseItem;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget-object v4, v4, v7

    new-instance v7, Lcom/prineside/tdi2/items/CaseItem;

    invoke-direct {v7, v3, v6, v5, v8}, Lcom/prineside/tdi2/items/CaseItem;-><init>(Lcom/prineside/tdi2/enums/CaseType;ZZLcom/prineside/tdi2/items/CaseItem$1;)V

    aput-object v7, v4, v5

    iget-object v4, p0, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->b:[[Lcom/prineside/tdi2/items/CaseItem;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget-object v4, v4, v7

    new-instance v7, Lcom/prineside/tdi2/items/CaseItem;

    invoke-direct {v7, v3, v5, v5, v8}, Lcom/prineside/tdi2/items/CaseItem;-><init>(Lcom/prineside/tdi2/enums/CaseType;ZZLcom/prineside/tdi2/items/CaseItem$1;)V

    aput-object v7, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;)[[Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->c:[[Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object p0
.end method


# virtual methods
.method public create(Lcom/prineside/tdi2/enums/CaseType;ZZ)Lcom/prineside/tdi2/items/CaseItem;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->b:[[Lcom/prineside/tdi2/items/CaseItem;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, p2, p1

    aget-object p1, p1, p3

    return-object p1

    :cond_0
    iget-object p2, p0, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->a:[[Lcom/prineside/tdi2/items/CaseItem;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, p2, p1

    aget-object p1, p1, p3

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CaseType is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic createDefault()Lcom/prineside/tdi2/Item;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->createDefault()Lcom/prineside/tdi2/items/CaseItem;

    move-result-object v0

    return-object v0
.end method

.method public createDefault()Lcom/prineside/tdi2/items/CaseItem;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/enums/CaseType;->values:[Lcom/prineside/tdi2/enums/CaseType;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, v1, v1}, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->create(Lcom/prineside/tdi2/enums/CaseType;ZZ)Lcom/prineside/tdi2/items/CaseItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Item;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/items/CaseItem;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/items/CaseItem;
    .locals 4

    const-string v0, "caseType"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/tdi2/enums/CaseType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/CaseType;

    move-result-object v0

    const-string v1, "encrypted"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "containsPapers"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->create(Lcom/prineside/tdi2/enums/CaseType;ZZ)Lcom/prineside/tdi2/items/CaseItem;

    move-result-object p1

    return-object p1
.end method

.method public setup()V
    .locals 10

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->c:[[Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    sget-object v1, Lcom/prineside/tdi2/enums/CaseType;->GREEN:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v0, v0, v2

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "chest-green"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    iget-object v0, p0, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->c:[[Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    sget-object v2, Lcom/prineside/tdi2/enums/CaseType;->BLUE:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v0, v0, v4

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "chest-blue"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    aput-object v4, v0, v3

    iget-object v0, p0, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->c:[[Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    sget-object v4, Lcom/prineside/tdi2/enums/CaseType;->ORANGE:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v0, v0, v5

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "chest-orange"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    aput-object v5, v0, v3

    iget-object v0, p0, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->c:[[Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    sget-object v5, Lcom/prineside/tdi2/enums/CaseType;->PURPLE:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v0, v0, v6

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v7, "chest-purple"

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    aput-object v6, v0, v3

    iget-object v0, p0, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->c:[[Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    sget-object v6, Lcom/prineside/tdi2/enums/CaseType;->CYAN:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget-object v0, v0, v7

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v8, "chest-cyan"

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    aput-object v7, v0, v3

    iget-object v0, p0, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->c:[[Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    sget-object v7, Lcom/prineside/tdi2/enums/CaseType;->BLUEPRINT:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget-object v0, v0, v8

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "chest-pink"

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v8

    aput-object v8, v0, v3

    iget-object v0, p0, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->c:[[Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "chest-green-encrypted"

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->c:[[Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "chest-blue-encrypted"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->c:[[Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "chest-orange-encrypted"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->c:[[Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "chest-purple-encrypted"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->c:[[Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "chest-cyan-encrypted"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->c:[[Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "chest-pink-encrypted"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    aput-object v1, v0, v3

    :cond_0
    return-void
.end method
