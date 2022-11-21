.class public Lcom/prineside/tdi2/managers/PreferencesManager;
.super Lcom/prineside/tdi2/Manager$ManagerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/PreferencesManager$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;,
        Lcom/prineside/tdi2/managers/PreferencesManager$TemporarySafePreferences;,
        Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener;,
        Lcom/prineside/tdi2/managers/PreferencesManager$Serializer;
    }
.end annotation


# static fields
.field public static final r:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final s:Lcom/prineside/kryo/FixedOutput;

.field public static final t:Lcom/prineside/kryo/FixedInput;


# instance fields
.field public final a:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;",
            ">;"
        }
    .end annotation
.end field

.field public final b:[B

.field public d:Z

.field public final k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener;",
            ">;"
        }
    .end annotation
.end field

.field public p:Z

.field public final q:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/managers/PreferencesManager;->r:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v0, Lcom/prineside/kryo/FixedOutput;

    const/16 v1, 0x400

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/kryo/FixedOutput;-><init>(II)V

    sput-object v0, Lcom/prineside/tdi2/managers/PreferencesManager;->s:Lcom/prineside/kryo/FixedOutput;

    new-instance v0, Lcom/prineside/kryo/FixedInput;

    invoke-direct {v0}, Lcom/prineside/kryo/FixedInput;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/managers/PreferencesManager;->t:Lcom/prineside/kryo/FixedInput;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/prineside/tdi2/Manager$ManagerAdapter;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->d:Z

    new-instance v1, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZI)V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    new-instance v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->q:Lcom/badlogic/gdx/utils/ObjectMap;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    if-le v1, v2, :cond_0

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v1, p1

    new-array v1, v1, [B

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-char v2, p1, v0

    add-int/lit8 v2, v2, -0x6e

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->b:[B

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    new-array p1, p1, [B

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->b:[B

    :goto_1
    return-void

    :array_0
    .array-data 1
        0xet
        0x1t
        0x5dt
        -0x7t
        -0x47t
        -0x1dt
        0x62t
        0x27t
    .end array-data
.end method

.method public static synthetic a(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 0

    invoke-static {p0}, Lcom/prineside/tdi2/managers/PreferencesManager;->c(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/managers/PreferencesManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->p:Z

    return p0
.end method

.method public static synthetic c(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clearTemporaryPreferences()V
    .locals 3

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->q:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->p:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/PreferencesManager;->reapplyAllPreferences()V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener;

    invoke-interface {v2}, Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener;->temporaryModeUpdated()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    :cond_1
    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;
    .locals 2

    invoke-static {}, Lcom/prineside/tdi2/Config;->isModdingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".mod-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/prineside/tdi2/Config;->getModId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->p:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->q:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->q:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    return-object p1

    :cond_1
    new-instance v0, Lcom/prineside/tdi2/managers/PreferencesManager$TemporarySafePreferences;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$TemporarySafePreferences;-><init>(Lcom/prineside/tdi2/managers/PreferencesManager;Ljava/lang/String;Lcom/prineside/tdi2/managers/PreferencesManager$1;)V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->q:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    return-object p1

    :cond_3
    new-instance v0, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->b:[B

    invoke-direct {v0, p1, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;-><init>(Ljava/lang/String;[B)V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public isTemporarySettingsApplied()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->p:Z

    return v0
.end method

.method public loadFromBytes([BZ)V
    .locals 6

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->p:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->q:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    iput-boolean v1, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->p:Z

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener;

    invoke-interface {v3}, Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener;->temporaryModeUpdated()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    :cond_1
    if-eqz p2, :cond_2

    sget-object p2, Lcom/prineside/tdi2/Config;->PREFERENCES_NAMES:[Ljava/lang/String;

    array-length v0, p2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    invoke-virtual {p0, v3}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    array-length p2, p1

    invoke-static {p1, v1, p2}, Lcom/prineside/tdi2/utils/StringFormatter;->fromCompactBytes([BII)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    sget-object p2, Lcom/prineside/tdi2/managers/PreferencesManager;->t:Lcom/prineside/kryo/FixedInput;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/prineside/kryo/FixedInput;->setBuffer([B)V

    invoke-virtual {p2}, Lcom/prineside/kryo/FixedInput;->readInt()I

    move-result p1

    const/4 p2, 0x0

    :goto_2
    if-ge p2, p1, :cond_4

    sget-object v0, Lcom/prineside/tdi2/managers/PreferencesManager;->t:Lcom/prineside/kryo/FixedInput;

    invoke-virtual {v0}, Lcom/prineside/kryo/FixedInput;->readString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load from server, pref name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PreferencesManager"

    invoke-static {v4, v3}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v2

    invoke-virtual {v0}, Lcom/prineside/kryo/FixedInput;->readInt()I

    move-result v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v0, :cond_3

    sget-object v4, Lcom/prineside/tdi2/managers/PreferencesManager;->t:Lcom/prineside/kryo/FixedInput;

    invoke-virtual {v4}, Lcom/prineside/kryo/FixedInput;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/prineside/kryo/FixedInput;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public loadFromCompactBase64(Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p1}, Lcom/prineside/tdi2/utils/StringFormatter;->fromBase64(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/managers/PreferencesManager;->loadFromBytes([BZ)V

    return-void
.end method

.method public loadFromJson(Lcom/badlogic/gdx/utils/JsonValue;Z)V
    .locals 6

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->p:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->q:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    iput-boolean v1, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->p:Z

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener;

    invoke-interface {v3}, Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener;->temporaryModeUpdated()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    :cond_1
    if-eqz p2, :cond_2

    sget-object p2, Lcom/prineside/tdi2/Config;->PREFERENCES_NAMES:[Ljava/lang/String;

    array-length v0, p2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    invoke-virtual {p0, v3}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/utils/JsonValue;

    sget-object v0, Lcom/prineside/tdi2/Config;->PREFERENCES_NAMES:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    iget-object v5, p2, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skipped loading preferences name \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' from json because it is not valid"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PreferencesManager"

    invoke-static {v0, p2}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method public loadFromUrl(Ljava/lang/String;ZLcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loading backup from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreferencesManager"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v2, "POST"

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    new-instance v2, Lcom/prineside/tdi2/managers/PreferencesManager$1;

    invoke-direct {v2, p0, p3, p2}, Lcom/prineside/tdi2/managers/PreferencesManager$1;-><init>(Lcom/prineside/tdi2/managers/PreferencesManager;Lcom/prineside/tdi2/utils/ObjectRetriever;Z)V

    invoke-interface {p1, v0, v2}, Lcom/badlogic/gdx/Net;->sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "failed to send backup request"

    invoke-static {v1, p2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p3, :cond_0

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance p2, Lcom/prineside/tdi2/managers/q;

    invoke-direct {p2, p3}, Lcom/prineside/tdi2/managers/q;-><init>(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public reapplyAllPreferences()V
    .locals 4

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->d:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->d:Z

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener;

    invoke-interface {v3}, Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener;->reloaded()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->d:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->d:Z

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling reapplyAllPreferences from PreferencesManagerListener.reloaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public removeListener(Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resetEverything()V
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/Config;->PREFERENCES_NAMES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "PreferencesManager"

    const-string v1, "all preferences removed"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/PreferencesManager;->reapplyAllPreferences()V

    return-void
.end method

.method public saveSnapshot(Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/ByteArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/badlogic/gdx/utils/ByteArray;"
        }
    .end annotation

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->saveIfRequired()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ResearchManager;->saveIfRequired()V

    sget-object v0, Lcom/prineside/tdi2/managers/PreferencesManager;->s:Lcom/prineside/kryo/FixedOutput;

    invoke-virtual {v0}, Lcom/prineside/kryo/FixedOutput;->clear()V

    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, v1}, Lcom/prineside/kryo/FixedOutput;->writeInt(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/managers/PreferencesManager;->r:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->getAll(Lcom/badlogic/gdx/utils/ObjectMap;)V

    sget-object v3, Lcom/prineside/tdi2/managers/PreferencesManager;->s:Lcom/prineside/kryo/FixedOutput;

    invoke-virtual {v3, v2}, Lcom/prineside/kryo/FixedOutput;->writeString(Ljava/lang/String;)V

    iget v2, v4, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    invoke-virtual {v3, v2}, Lcom/prineside/kryo/FixedOutput;->writeInt(I)V

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/ObjectMap;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    sget-object v4, Lcom/prineside/tdi2/managers/PreferencesManager;->s:Lcom/prineside/kryo/FixedOutput;

    iget-object v5, v3, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/prineside/kryo/FixedOutput;->writeString(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/prineside/kryo/FixedOutput;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/prineside/tdi2/managers/PreferencesManager;->s:Lcom/prineside/kryo/FixedOutput;

    invoke-virtual {p1}, Lcom/prineside/kryo/FixedOutput;->getBuffer()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/prineside/kryo/FixedOutput;->position()I

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/prineside/tdi2/utils/StringFormatter;->compactBytes([BII)Lcom/badlogic/gdx/utils/ByteArray;

    move-result-object p1

    return-object p1
.end method

.method public saveSnapshotAsString(Lcom/badlogic/gdx/utils/Array;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/PreferencesManager;->saveSnapshot(Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/ByteArray;

    move-result-object p1

    iget-object v0, p1, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    iget p1, p1, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/prineside/tdi2/utils/StringFormatter;->toBase64([BII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setTemporaryPreferences([B)V
    .locals 7

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->q:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->p:Z

    sget-object v0, Lcom/prineside/tdi2/managers/PreferencesManager;->t:Lcom/prineside/kryo/FixedInput;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Lcom/prineside/tdi2/utils/StringFormatter;->fromCompactBytes([BII)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prineside/kryo/FixedInput;->setBuffer([B)V

    invoke-virtual {v0}, Lcom/prineside/kryo/FixedInput;->readInt()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    sget-object v1, Lcom/prineside/tdi2/managers/PreferencesManager;->t:Lcom/prineside/kryo/FixedInput;

    invoke-virtual {v1}, Lcom/prineside/kryo/FixedInput;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v3

    invoke-virtual {v1}, Lcom/prineside/kryo/FixedInput;->readInt()I

    move-result v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_0

    sget-object v5, Lcom/prineside/tdi2/managers/PreferencesManager;->t:Lcom/prineside/kryo/FixedInput;

    invoke-virtual {v5}, Lcom/prineside/kryo/FixedInput;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/prineside/kryo/FixedInput;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/PreferencesManager;->reapplyAllPreferences()V

    iget-object p1, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object p1, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_2
    if-ge v2, p1, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener;

    invoke-interface {v0}, Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener;->temporaryModeUpdated()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/managers/PreferencesManager;->k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    return-void
.end method
