.class public Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Json$Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveData"
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/badlogic/gdx/utils/IntArray;

.field public d:I

.field public k:Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->b:Lcom/badlogic/gdx/utils/IntArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->d:I

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->b:Lcom/badlogic/gdx/utils/IntArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->d:I

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->k:Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    return-void
.end method


# virtual methods
.method public load(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public loadAsset()Lcom/badlogic/gdx/assets/AssetDescriptor;
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->d:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->b:Lcom/badlogic/gdx/utils/IntArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->k:Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->d:Lcom/badlogic/gdx/utils/Array;

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->d:I

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;

    new-instance v1, Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;->filename:Ljava/lang/String;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;->type:Ljava/lang/Class;

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v1
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 3

    const-class v0, Lcom/badlogic/gdx/utils/ObjectMap;

    const-string v1, "data"

    invoke-virtual {p1, v1, v0, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->b:Lcom/badlogic/gdx/utils/IntArray;

    const-class v1, [I

    const-string v2, "indices"

    invoke-virtual {p1, v2, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntArray;->addAll([I)V

    return-void
.end method

.method public save(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public saveAsset(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TK;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->k:Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->a(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->k:Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->d:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;

    invoke-direct {v1, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$AssetData;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->k:Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->d:Lcom/badlogic/gdx/utils/Array;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, p1, -0x1

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->b:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    const-class v1, Lcom/badlogic/gdx/utils/ObjectMap;

    const-string v2, "data"

    invoke-virtual {p1, v2, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->b:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->toArray()[I

    move-result-object v0

    const-class v1, [I

    const-string v2, "indices"

    invoke-virtual {p1, v2, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
