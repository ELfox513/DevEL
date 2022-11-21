.class Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid$1;
.super Lcom/prineside/tdi2/ActionResolver$InitConfigManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->getInitConfigManager()Lcom/prineside/tdi2/ActionResolver$InitConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid$1;->c:Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;

    invoke-direct {p0}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 5

    const-string v0, "{}"

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid$1;->c:Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;

    iget-object v2, v2, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "i2-config.json"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

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

    :catch_0
    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid$1;->c:Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;

    iget-object v1, v1, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "i2-config.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "AndroidLauncher"

    const-string v1, "failed to save init config"

    invoke-static {v0, v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getDefault(Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;)I
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/AndroidLauncher$9;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 p1, 0x0

    return p1
.end method

.method public isAvailable(Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;)Z
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_AA_LEVELS:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
