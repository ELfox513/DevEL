.class public Lcom/badlogic/gdx/assets/loaders/SkinLoader;
.super Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader<",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;",
        "Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    return-object v0
.end method

.method public bridge synthetic getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    check-cast p3, Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/assets/loaders/SkinLoader;->getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    return-object p1
.end method

.method public getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;)Lcom/badlogic/gdx/utils/Array;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation

    const-class p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    if-eqz p3, :cond_1

    iget-object p3, p3, Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;->textureAtlasPath:Ljava/lang/String;

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_2

    new-instance p2, Lcom/badlogic/gdx/assets/AssetDescriptor;

    invoke-direct {p2, p3, p1}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p3, Lcom/badlogic/gdx/assets/AssetDescriptor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/badlogic/gdx/files/FileHandle;->pathWithoutExtension()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".atlas"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public bridge synthetic loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V
    .locals 0

    check-cast p4, Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/assets/loaders/SkinLoader;->loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;)V

    return-void
.end method

.method public loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;)V
    .locals 0

    return-void
.end method

.method public loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;)Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .locals 2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/badlogic/gdx/files/FileHandle;->pathWithoutExtension()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".atlas"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    iget-object v1, p4, Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;->textureAtlasPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object p2, v1

    :cond_0
    iget-object p4, p4, Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    if-eqz p4, :cond_1

    move-object v0, p4

    :cond_1
    const-class p4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-virtual {p1, p2, p4}, Lcom/badlogic/gdx/assets/AssetManager;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/assets/loaders/SkinLoader;->a(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object p1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    iget-object v0, p4, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p4, p4, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->add(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->load(Lcom/badlogic/gdx/files/FileHandle;)V

    return-object p1
.end method

.method public bridge synthetic loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Ljava/lang/Object;
    .locals 0

    check-cast p4, Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/assets/loaders/SkinLoader;->loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;)Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object p1

    return-object p1
.end method
