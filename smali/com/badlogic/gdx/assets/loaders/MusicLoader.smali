.class public Lcom/badlogic/gdx/assets/loaders/MusicLoader;
.super Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/assets/loaders/MusicLoader$MusicParameter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader<",
        "Lcom/badlogic/gdx/audio/Music;",
        "Lcom/badlogic/gdx/assets/loaders/MusicLoader$MusicParameter;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Lcom/badlogic/gdx/audio/Music;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    check-cast p3, Lcom/badlogic/gdx/assets/loaders/MusicLoader$MusicParameter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/assets/loaders/MusicLoader;->getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/MusicLoader$MusicParameter;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    return-object p1
.end method

.method public getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/MusicLoader$MusicParameter;)Lcom/badlogic/gdx/utils/Array;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Lcom/badlogic/gdx/assets/loaders/MusicLoader$MusicParameter;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V
    .locals 0

    check-cast p4, Lcom/badlogic/gdx/assets/loaders/MusicLoader$MusicParameter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/assets/loaders/MusicLoader;->loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/MusicLoader$MusicParameter;)V

    return-void
.end method

.method public loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/MusicLoader$MusicParameter;)V
    .locals 0

    sget-object p1, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    invoke-interface {p1, p3}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/assets/loaders/MusicLoader;->b:Lcom/badlogic/gdx/audio/Music;

    return-void
.end method

.method public loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/MusicLoader$MusicParameter;)Lcom/badlogic/gdx/audio/Music;
    .locals 0

    iget-object p1, p0, Lcom/badlogic/gdx/assets/loaders/MusicLoader;->b:Lcom/badlogic/gdx/audio/Music;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/badlogic/gdx/assets/loaders/MusicLoader;->b:Lcom/badlogic/gdx/audio/Music;

    return-object p1
.end method

.method public bridge synthetic loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Ljava/lang/Object;
    .locals 0

    check-cast p4, Lcom/badlogic/gdx/assets/loaders/MusicLoader$MusicParameter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/assets/loaders/MusicLoader;->loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/MusicLoader$MusicParameter;)Lcom/badlogic/gdx/audio/Music;

    move-result-object p1

    return-object p1
.end method
