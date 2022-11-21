.class public Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/Item$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/items/BlueprintItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlueprintItemFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/Item$Factory<",
        "Lcom/prineside/tdi2/items/BlueprintItem;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lcom/prineside/tdi2/items/BlueprintItem;

.field public b:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/enums/BlueprintType;->values:[Lcom/prineside/tdi2/enums/BlueprintType;

    array-length v1, v0

    new-array v1, v1, [Lcom/prineside/tdi2/items/BlueprintItem;

    iput-object v1, p0, Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;->a:[Lcom/prineside/tdi2/items/BlueprintItem;

    array-length v1, v0

    new-array v1, v1, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v1, p0, Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;->b:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;->a:[Lcom/prineside/tdi2/items/BlueprintItem;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    new-instance v6, Lcom/prineside/tdi2/items/BlueprintItem;

    const/4 v7, 0x0

    invoke-direct {v6, v3, v7}, Lcom/prineside/tdi2/items/BlueprintItem;-><init>(Lcom/prineside/tdi2/enums/BlueprintType;Lcom/prineside/tdi2/items/BlueprintItem$1;)V

    aput-object v6, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;)[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;->b:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object p0
.end method


# virtual methods
.method public create(Lcom/prineside/tdi2/enums/BlueprintType;)Lcom/prineside/tdi2/items/BlueprintItem;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;->a:[Lcom/prineside/tdi2/items/BlueprintItem;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public bridge synthetic createDefault()Lcom/prineside/tdi2/Item;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;->createDefault()Lcom/prineside/tdi2/items/BlueprintItem;

    move-result-object v0

    return-object v0
.end method

.method public createDefault()Lcom/prineside/tdi2/items/BlueprintItem;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/enums/BlueprintType;->values:[Lcom/prineside/tdi2/enums/BlueprintType;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;->create(Lcom/prineside/tdi2/enums/BlueprintType;)Lcom/prineside/tdi2/items/BlueprintItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Item;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/items/BlueprintItem;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/items/BlueprintItem;
    .locals 1

    const-string v0, "blueprintType"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/tdi2/enums/BlueprintType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/BlueprintType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;->create(Lcom/prineside/tdi2/enums/BlueprintType;)Lcom/prineside/tdi2/items/BlueprintItem;

    move-result-object p1

    return-object p1
.end method

.method public setup()V
    .locals 9

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/enums/BlueprintType;->values:[Lcom/prineside/tdi2/enums/BlueprintType;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;->b:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "blueprint-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v3

    aput-object v3, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
