.class Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/Preferences;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;-><init>(Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences$1;->a:Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public get()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getInteger(Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getInteger(Ljava/lang/String;I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public put(Ljava/util/Map;)Lcom/badlogic/gdx/Preferences;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/badlogic/gdx/Preferences;"
        }
    .end annotation

    return-object p0
.end method

.method public putBoolean(Ljava/lang/String;Z)Lcom/badlogic/gdx/Preferences;
    .locals 0

    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Lcom/badlogic/gdx/Preferences;
    .locals 0

    return-object p0
.end method

.method public putInteger(Ljava/lang/String;I)Lcom/badlogic/gdx/Preferences;
    .locals 0

    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Lcom/badlogic/gdx/Preferences;
    .locals 0

    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;
    .locals 0

    return-object p0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
