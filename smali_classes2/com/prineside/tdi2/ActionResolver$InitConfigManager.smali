.class public Lcom/prineside/tdi2/ActionResolver$InitConfigManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ActionResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitConfigManager"
.end annotation


# static fields
.field public static final INIT_CONFIG_FILE:Ljava/lang/String; = "i2-config.json"


# instance fields
.field public a:[I

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()[I
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->a:[I

    if-nez v0, :cond_2

    sget-object v0, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->values:[Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    array-length v1, v0

    new-array v1, v1, [I

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {p0, v4}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->getDefault(Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;)I

    move-result v4

    aput v4, v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/JsonValue;

    :try_start_0
    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    move-result-object v3

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v4, v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown init config key or value is invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActionResolver"

    invoke-static {v3, v2}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iput-object v1, p0, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->a:[I

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->a:[I

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 5

    const-string v0, "{}"

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "i2-config.json"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "ActionResolver"

    const-string v3, "loadConfigsJsonFromFile failed"

    invoke-static {v2, v3, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final c()V
    .locals 9

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->b:Z

    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    sget-object v2, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->a()[I

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->values:[Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    array-length v5, v4

    :goto_0
    if-ge v0, v5, :cond_1

    aget-object v6, v4, v0

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v3, v7

    invoke-virtual {p0, v6}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->getDefault(Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;)I

    move-result v8

    if-eq v7, v8, :cond_0

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->d(Ljava/lang/String;)V

    const-string v0, "ActionResolver"

    const-string v1, "saved init configs"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "i2-config.json"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ActionResolver"

    const-string v1, "failed to save init configs"

    invoke-static {v0, v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public get(Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;)I
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->a()[I

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    return p1
.end method

.method public getDefault(Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isAvailable(Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public saveIfRequired()V
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->c()V

    :cond_0
    return-void
.end method

.method public set(Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->a()[I

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, p2, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->a()[I

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aput p2, v0, p1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->b:Z

    :cond_0
    return-void
.end method
