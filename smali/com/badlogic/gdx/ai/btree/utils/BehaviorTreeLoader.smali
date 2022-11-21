.class public Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLoader;
.super Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLoader$BehaviorTreeParameter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader<",
        "Lcom/badlogic/gdx/ai/btree/BehaviorTree;",
        "Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLoader$BehaviorTreeParameter;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Lcom/badlogic/gdx/ai/btree/BehaviorTree;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    return-void
.end method


# virtual methods
.method public getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLoader$BehaviorTreeParameter;)Lcom/badlogic/gdx/utils/Array;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLoader$BehaviorTreeParameter;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    check-cast p3, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLoader$BehaviorTreeParameter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLoader;->getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLoader$BehaviorTreeParameter;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    return-object p1
.end method

.method public loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLoader$BehaviorTreeParameter;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLoader;->b:Lcom/badlogic/gdx/ai/btree/BehaviorTree;

    if-eqz p4, :cond_0

    iget-object p2, p4, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLoader$BehaviorTreeParameter;->blackboard:Ljava/lang/Object;

    iget-object p4, p4, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLoader$BehaviorTreeParameter;->parser:Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser;

    goto :goto_0

    :cond_0
    move-object p2, p1

    move-object p4, p2

    :goto_0
    if-nez p4, :cond_1

    new-instance p4, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser;

    invoke-direct {p4}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser;-><init>()V

    :cond_1
    :try_start_0
    invoke-virtual {p3}, Lcom/badlogic/gdx/files/FileHandle;->reader()Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p4, p1, p2}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser;->parse(Ljava/io/Reader;Ljava/lang/Object;)Lcom/badlogic/gdx/ai/btree/BehaviorTree;

    move-result-object p2

    iput-object p2, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLoader;->b:Lcom/badlogic/gdx/ai/btree/BehaviorTree;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p2
.end method

.method public bridge synthetic loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V
    .locals 0

    check-cast p4, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLoader$BehaviorTreeParameter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLoader;->loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLoader$BehaviorTreeParameter;)V

    return-void
.end method

.method public loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLoader$BehaviorTreeParameter;)Lcom/badlogic/gdx/ai/btree/BehaviorTree;
    .locals 0

    iget-object p1, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLoader;->b:Lcom/badlogic/gdx/ai/btree/BehaviorTree;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLoader;->b:Lcom/badlogic/gdx/ai/btree/BehaviorTree;

    return-object p1
.end method

.method public bridge synthetic loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Ljava/lang/Object;
    .locals 0

    check-cast p4, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLoader$BehaviorTreeParameter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLoader;->loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLoader$BehaviorTreeParameter;)Lcom/badlogic/gdx/ai/btree/BehaviorTree;

    move-result-object p1

    return-object p1
.end method
