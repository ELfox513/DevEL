.class public Lcom/prineside/tdi2/managers/ScriptManager;
.super Lcom/prineside/tdi2/Manager$ManagerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/ScriptManager$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;,
        Lcom/prineside/tdi2/managers/ScriptManager$luaGetMethods;,
        Lcom/prineside/tdi2/managers/ScriptManager$luaGetFields;,
        Lcom/prineside/tdi2/managers/ScriptManager$luaRemoveEventHandler;,
        Lcom/prineside/tdi2/managers/ScriptManager$luaAddEventHandler;,
        Lcom/prineside/tdi2/managers/ScriptManager$luaWarning;,
        Lcom/prineside/tdi2/managers/ScriptManager$luaLog;,
        Lcom/prineside/tdi2/managers/ScriptManager$LuajavaFixedLib;,
        Lcom/prineside/tdi2/managers/ScriptManager$ReadOnlyLuaTable;,
        Lcom/prineside/tdi2/managers/ScriptManager$Serializer;
    }
.end annotation


# static fields
.field public static SCRIPT_PROXIES:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Lcom/prineside/tdi2/utils/ScriptProxyCreator;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:Lcom/badlogic/gdx/utils/StringBuilder;


# instance fields
.field public global:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

.field public globalsInstances:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Lcom/prineside/luaj/Globals;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/managers/ScriptManager;->SCRIPT_PROXIES:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/managers/ScriptManager;->a:Lcom/badlogic/gdx/utils/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/prineside/tdi2/Manager$ManagerAdapter;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ScriptManager;->globalsInstances:Lcom/badlogic/gdx/utils/IntMap;

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/managers/ScriptManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ScriptManager;->reload()V

    return-void
.end method

.method public static synthetic b()Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/managers/ScriptManager;->a:Lcom/badlogic/gdx/utils/StringBuilder;

    return-object v0
.end method


# virtual methods
.method public getFreeInstanceId()I
    .locals 4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    mul-double v0, v0, v2

    double-to-int v0, v0

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ScriptManager;->globalsInstances:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/IntMap;->containsKey(I)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ScriptManager;->getFreeInstanceId()I

    move-result v0

    return v0
.end method

.method public registerInstance(ILcom/prineside/luaj/Globals;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ScriptManager;->globalsInstances:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntMap;->containsKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ScriptManager;->globalsInstances:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "instance "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is already registered"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final reload()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ScriptManager;->global:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->a(Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;)Lcom/prineside/luaj/Globals;

    move-result-object v0

    iget v0, v0, Lcom/prineside/luaj/Globals;->instanceId:I

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ScriptManager;->unregisterInstance(I)V

    :cond_0
    new-instance v0, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;-><init>(Z)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ScriptManager;->global:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v2, "scripts/utils/global_commands.lua"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->loadScript(Lcom/badlogic/gdx/files/FileHandle;)Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment$LuaExecutionResult;

    return-void
.end method

.method public setup()V
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ScriptManager;->reload()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    new-instance v1, Lcom/prineside/tdi2/managers/ScriptManager$1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/ScriptManager$1;-><init>(Lcom/prineside/tdi2/managers/ScriptManager;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->addListener(Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener;)V

    return-void
.end method

.method public unregisterInstance(I)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ScriptManager;->globalsInstances:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntMap;->remove(I)Ljava/lang/Object;

    return-void
.end method
