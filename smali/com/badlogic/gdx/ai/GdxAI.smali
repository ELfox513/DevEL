.class public final Lcom/badlogic/gdx/ai/GdxAI;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/badlogic/gdx/ai/Timepiece;

.field public static b:Lcom/badlogic/gdx/ai/Logger;

.field public static c:Lcom/badlogic/gdx/ai/FileSystem;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/ai/DefaultTimepiece;

    invoke-direct {v0}, Lcom/badlogic/gdx/ai/DefaultTimepiece;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/ai/GdxAI;->a:Lcom/badlogic/gdx/ai/Timepiece;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/ai/NullLogger;

    invoke-direct {v0}, Lcom/badlogic/gdx/ai/NullLogger;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/ai/GdxLogger;

    invoke-direct {v0}, Lcom/badlogic/gdx/ai/GdxLogger;-><init>()V

    :goto_0
    sput-object v0, Lcom/badlogic/gdx/ai/GdxAI;->b:Lcom/badlogic/gdx/ai/Logger;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    if-nez v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/ai/StandaloneFileSystem;

    invoke-direct {v0}, Lcom/badlogic/gdx/ai/StandaloneFileSystem;-><init>()V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/badlogic/gdx/ai/GdxFileSystem;

    invoke-direct {v0}, Lcom/badlogic/gdx/ai/GdxFileSystem;-><init>()V

    :goto_1
    sput-object v0, Lcom/badlogic/gdx/ai/GdxAI;->c:Lcom/badlogic/gdx/ai/FileSystem;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileSystem()Lcom/badlogic/gdx/ai/FileSystem;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/ai/GdxAI;->c:Lcom/badlogic/gdx/ai/FileSystem;

    return-object v0
.end method

.method public static getLogger()Lcom/badlogic/gdx/ai/Logger;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/ai/GdxAI;->b:Lcom/badlogic/gdx/ai/Logger;

    return-object v0
.end method

.method public static getTimepiece()Lcom/badlogic/gdx/ai/Timepiece;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/ai/GdxAI;->a:Lcom/badlogic/gdx/ai/Timepiece;

    return-object v0
.end method

.method public static setFileSystem(Lcom/badlogic/gdx/ai/FileSystem;)V
    .locals 0

    sput-object p0, Lcom/badlogic/gdx/ai/GdxAI;->c:Lcom/badlogic/gdx/ai/FileSystem;

    return-void
.end method

.method public static setLogger(Lcom/badlogic/gdx/ai/Logger;)V
    .locals 0

    sput-object p0, Lcom/badlogic/gdx/ai/GdxAI;->b:Lcom/badlogic/gdx/ai/Logger;

    return-void
.end method

.method public static setTimepiece(Lcom/badlogic/gdx/ai/Timepiece;)V
    .locals 0

    sput-object p0, Lcom/badlogic/gdx/ai/GdxAI;->a:Lcom/badlogic/gdx/ai/Timepiece;

    return-void
.end method
