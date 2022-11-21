.class public Lcom/prineside/tdi2/managers/NetworkManager;
.super Lcom/prineside/tdi2/Manager$ManagerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/NetworkManager$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/NetworkManager$NetBundle;,
        Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;,
        Lcom/prineside/tdi2/managers/NetworkManager$NetReqConnect;,
        Lcom/prineside/tdi2/managers/NetworkManager$NetRespConnect;,
        Lcom/prineside/tdi2/managers/NetworkManager$Serializer;
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/esotericsoftware/kryonet/Client;

.field public b:Ljava/lang/Thread;

.field public fullKryo:Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;

.field public registeredClasses:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/esotericsoftware/kryo/Registration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/prineside/tdi2/managers/NetworkManager$1;

    invoke-direct {v0}, Lcom/prineside/tdi2/managers/NetworkManager$1;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/managers/NetworkManager;->d:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/prineside/tdi2/Manager$ManagerAdapter;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/esotericsoftware/kryo/Registration;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/NetworkManager;->registeredClasses:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/managers/NetworkManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/prineside/tdi2/managers/NetworkManager;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/managers/NetworkManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/NetworkManager;->f()V

    return-void
.end method

.method public static synthetic c(Lcom/prineside/tdi2/managers/NetworkManager;)Lcom/esotericsoftware/kryonet/Client;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/managers/NetworkManager;->a:Lcom/esotericsoftware/kryonet/Client;

    return-object p0
.end method

.method private synthetic d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, "ms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trying to start net connection for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkManager"

    invoke-static {v2, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "skipping multiplayer test endpoint - incorrect IP config: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v1, v3

    const/4 v5, -0x1

    const/4 v6, 0x1

    aget-object v6, v1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    array-length v7, v1

    const/4 v8, 0x3

    if-lt v7, v8, :cond_1

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :cond_1
    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v7

    new-instance v1, Lcom/esotericsoftware/kryonet/Client;

    invoke-direct {v1}, Lcom/esotericsoftware/kryonet/Client;-><init>()V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/NetworkManager;->a:Lcom/esotericsoftware/kryonet/Client;

    invoke-virtual {v1}, Lcom/esotericsoftware/kryonet/Client;->getKryo()Lcom/esotericsoftware/kryo/Kryo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/managers/NetworkManager;->prepareMultiplayerKryo(Lcom/esotericsoftware/kryo/Kryo;)V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/NetworkManager;->a:Lcom/esotericsoftware/kryonet/Client;

    invoke-virtual {v1}, Lcom/esotericsoftware/kryonet/Client;->start()V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/NetworkManager;->a:Lcom/esotericsoftware/kryonet/Client;

    const/16 v4, 0x1388

    invoke-virtual {v1, v4, v3, v6, v5}, Lcom/esotericsoftware/kryonet/Client;->connect(ILjava/lang/String;II)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "net client created successfully in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v3

    sub-long/2addr v3, v7

    long-to-float v3, v3

    const v4, 0x3a83126f    # 0.001f

    mul-float v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    iget-object p1, p0, Lcom/prineside/tdi2/managers/NetworkManager;->a:Lcom/esotericsoftware/kryonet/Client;

    new-instance v1, Lcom/prineside/tdi2/managers/NetworkManager$4;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/NetworkManager$4;-><init>(Lcom/prineside/tdi2/managers/NetworkManager;)V

    invoke-virtual {p1, v1}, Lcom/esotericsoftware/kryonet/Client;->addListener(Lcom/esotericsoftware/kryonet/Listener;)V

    :try_start_1
    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v5

    new-instance p1, Lcom/prineside/tdi2/managers/NetworkManager$NetReqConnect;

    invoke-direct {p1}, Lcom/prineside/tdi2/managers/NetworkManager$NetReqConnect;-><init>()V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v1

    iput-object v1, p1, Lcom/prineside/tdi2/managers/NetworkManager$NetReqConnect;->applicationType:Lcom/badlogic/gdx/Application$ApplicationType;

    iput-object p2, p1, Lcom/prineside/tdi2/managers/NetworkManager$NetReqConnect;->userId:Ljava/lang/String;

    iput-object p3, p1, Lcom/prineside/tdi2/managers/NetworkManager$NetReqConnect;->locale:Ljava/lang/String;

    iget-object p2, p0, Lcom/prineside/tdi2/managers/NetworkManager;->a:Lcom/esotericsoftware/kryonet/Client;

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryonet/Connection;->sendTCP(Ljava/lang/Object;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sent connection request in "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide p2

    sub-long/2addr p2, v5

    long-to-float p2, p2

    mul-float p2, p2, v4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "failed to send connection request to the server"

    invoke-static {v2, p2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :catch_1
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed to create net client for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p2}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static prepareNetworkKryo(Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;)V
    .locals 7

    const-class v0, Lcom/esotericsoftware/kryonet/FrameworkMessage$RegisterTCP;

    const-class v1, Lcom/esotericsoftware/kryonet/FrameworkMessage$Ping;

    const-class v2, Lcom/esotericsoftware/kryonet/FrameworkMessage$KeepAlive;

    const-class v3, Lcom/esotericsoftware/kryonet/FrameworkMessage$DiscoverHost;

    const-class v4, Lcom/esotericsoftware/kryonet/FrameworkMessage$RegisterUDP;

    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/kryo/Kryo;->setMaxDepth(I)V

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/kryo/Kryo;->setRegistrationRequired(Z)V

    const-class v5, Lcom/badlogic/gdx/utils/IntIntMap;

    new-instance v6, Lcom/prineside/tdi2/serializers/IntIntMapSerializer;

    invoke-direct {v6}, Lcom/prineside/tdi2/serializers/IntIntMapSerializer;-><init>()V

    invoke-virtual {p0, v5, v6}, Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    const-class v5, Lcom/badlogic/gdx/utils/Array;

    new-instance v6, Lcom/prineside/tdi2/serializers/ArraySerializer;

    invoke-direct {v6}, Lcom/prineside/tdi2/serializers/ArraySerializer;-><init>()V

    invoke-virtual {p0, v5, v6}, Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    const-class v5, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    const-class v5, Lcom/prineside/tdi2/enums/AbilityType;

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    const-class v5, Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    const-class v5, Lcom/prineside/tdi2/Tower$AimStrategy;

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    const-class v5, Lcom/prineside/tdi2/enums/ModifierType;

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    const-class v5, Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    const-class v5, Lcom/prineside/tdi2/systems/StateSystem$ActionUpdatePair;

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    const-class v5, Lcom/prineside/tdi2/actions/BuildMinerAction;

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    const-class v5, Lcom/prineside/tdi2/actions/BuildModifierAction;

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    const-class v5, Lcom/prineside/tdi2/actions/BuildTowerAction;

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    const-class v5, Lcom/prineside/tdi2/actions/CallWaveAction;

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    const-class v5, Lcom/prineside/tdi2/actions/RewardingAdAction;

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    const-class v5, Lcom/prineside/tdi2/actions/ChangeTowerAimStrategyAction;

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    const-class v5, Lcom/prineside/tdi2/actions/CustomTowerButtonAction;

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    const-class v5, Lcom/prineside/tdi2/actions/GlobalUpgradeMinerAction;

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    const-class v5, Lcom/prineside/tdi2/actions/GlobalUpgradeTowerAction;

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    const-class v5, Lcom/prineside/tdi2/actions/SelectGlobalTowerAbilityAction;

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    const-class v5, Lcom/prineside/tdi2/actions/SelectTowerAbilityAction;

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    const-class v5, Lcom/prineside/tdi2/actions/SellMinerAction;

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    const-class v5, Lcom/prineside/tdi2/actions/SellModifierAction;

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    const-class v5, Lcom/prineside/tdi2/actions/SellTowerAction;

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    const-class v5, Lcom/prineside/tdi2/actions/UpgradeMinerAction;

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    const-class v5, Lcom/prineside/tdi2/actions/UpgradeTowerAction;

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    const-class v5, Lcom/prineside/tdi2/actions/UseAbilityAction;

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    new-instance v5, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    invoke-direct {v5, p0, v4}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;-><init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)V

    invoke-virtual {p0, v4, v5}, Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    new-instance v4, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    invoke-direct {v4, p0, v3}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;-><init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)V

    invoke-virtual {p0, v3, v4}, Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    new-instance v3, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    invoke-direct {v3, p0, v2}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;-><init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)V

    invoke-virtual {p0, v2, v3}, Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    new-instance v2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    invoke-direct {v2, p0, v1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;-><init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)V

    invoke-virtual {p0, v1, v2}, Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    new-instance v1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    invoke-direct {v1, p0, v0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;-><init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v1}, Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void
.end method

.method public final e(Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-class v3, Ljava/lang/Object;

    const-class v4, Lcom/prineside/tdi2/serializers/GameStateSerializer;

    const-class v5, Lcom/esotericsoftware/kryo/KryoSerializable;

    invoke-virtual {v2, v4}, Lcom/esotericsoftware/kryo/Kryo;->setDefaultSerializer(Ljava/lang/Class;)V

    const/16 v0, 0x800

    invoke-virtual {v2, v0}, Lcom/esotericsoftware/kryo/Kryo;->setMaxDepth(I)V

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/esotericsoftware/kryo/Kryo;->setReferences(Z)Z

    invoke-virtual {v2, v6}, Lcom/esotericsoftware/kryo/Kryo;->setRegistrationRequired(Z)V

    const-class v0, [F

    invoke-virtual {v2, v0}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    const-class v0, [D

    invoke-virtual {v2, v0}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    const-class v0, [I

    invoke-virtual {v2, v0}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    const-class v0, [Z

    invoke-virtual {v2, v0}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    const-class v0, [B

    invoke-virtual {v2, v0}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    const-class v0, [J

    invoke-virtual {v2, v0}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    const-class v0, [[F

    invoke-virtual {v2, v0}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    const-class v0, [[Z

    invoke-virtual {v2, v0}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    sget-object v0, Lcom/prineside/tdi2/serializers/GameStateSerializer;->CLASS_ONLY_SERIALIZER:Lcom/esotericsoftware/kryo/Serializer;

    invoke-virtual {v2, v3, v0}, Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    const-class v0, [Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    const-class v0, Ljava/lang/Class;

    invoke-virtual {v2, v0}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    const-class v0, [Ljava/lang/Class;

    invoke-virtual {v2, v0}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    new-instance v7, Lcom/prineside/tdi2/serializers/ArraySerializer;

    invoke-direct {v7}, Lcom/prineside/tdi2/serializers/ArraySerializer;-><init>()V

    invoke-virtual {v2, v0, v7}, Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    const-class v0, Lcom/badlogic/gdx/utils/IntArray;

    new-instance v7, Lcom/prineside/tdi2/serializers/IntArraySerializer;

    invoke-direct {v7}, Lcom/prineside/tdi2/serializers/IntArraySerializer;-><init>()V

    invoke-virtual {v2, v0, v7}, Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    const-class v0, Lcom/badlogic/gdx/utils/FloatArray;

    new-instance v7, Lcom/prineside/tdi2/serializers/FloatArraySerializer;

    invoke-direct {v7}, Lcom/prineside/tdi2/serializers/FloatArraySerializer;-><init>()V

    invoke-virtual {v2, v0, v7}, Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    const-class v0, Lcom/badlogic/gdx/math/Vector2;

    new-instance v7, Lcom/prineside/tdi2/serializers/Vector2Serializer;

    invoke-direct {v7}, Lcom/prineside/tdi2/serializers/Vector2Serializer;-><init>()V

    invoke-virtual {v2, v0, v7}, Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    const-class v0, Lcom/badlogic/gdx/math/Rectangle;

    new-instance v7, Lcom/prineside/tdi2/serializers/RectangleSerializer;

    invoke-direct {v7}, Lcom/prineside/tdi2/serializers/RectangleSerializer;-><init>()V

    invoke-virtual {v2, v0, v7}, Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    const-class v0, Lcom/badlogic/gdx/utils/IntIntMap;

    new-instance v7, Lcom/prineside/tdi2/serializers/IntIntMapSerializer;

    invoke-direct {v7}, Lcom/prineside/tdi2/serializers/IntIntMapSerializer;-><init>()V

    invoke-virtual {v2, v0, v7}, Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    const-class v0, Lcom/badlogic/gdx/utils/IntFloatMap;

    new-instance v7, Lcom/prineside/tdi2/serializers/IntFloatMapSerializer;

    invoke-direct {v7}, Lcom/prineside/tdi2/serializers/IntFloatMapSerializer;-><init>()V

    invoke-virtual {v2, v0, v7}, Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    const-class v0, Lcom/badlogic/gdx/utils/IntSet;

    new-instance v7, Lcom/prineside/tdi2/serializers/IntSetSerializer;

    invoke-direct {v7}, Lcom/prineside/tdi2/serializers/IntSetSerializer;-><init>()V

    invoke-virtual {v2, v0, v7}, Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    const-class v0, Lcom/badlogic/gdx/utils/ObjectSet;

    new-instance v7, Lcom/prineside/tdi2/serializers/ObjectSetSerializer;

    invoke-direct {v7}, Lcom/prineside/tdi2/serializers/ObjectSetSerializer;-><init>()V

    invoke-virtual {v2, v0, v7}, Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    const-class v0, Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v7, Lcom/prineside/tdi2/serializers/ObjectMapSerializer;

    invoke-direct {v7}, Lcom/prineside/tdi2/serializers/ObjectMapSerializer;-><init>()V

    invoke-virtual {v2, v0, v7}, Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    const-class v0, Lcom/badlogic/gdx/utils/IntMap;

    new-instance v7, Lcom/prineside/tdi2/serializers/IntMapSerializer;

    invoke-direct {v7}, Lcom/prineside/tdi2/serializers/IntMapSerializer;-><init>()V

    invoke-virtual {v2, v0, v7}, Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    const-class v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    new-instance v7, Lcom/prineside/tdi2/serializers/ArraySerializer;

    invoke-direct {v7}, Lcom/prineside/tdi2/serializers/ArraySerializer;-><init>()V

    invoke-virtual {v2, v0, v7}, Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    const-class v0, Lcom/prineside/tdi2/utils/StrictArray;

    new-instance v7, Lcom/prineside/tdi2/serializers/ArraySerializer;

    invoke-direct {v7}, Lcom/prineside/tdi2/serializers/ArraySerializer;-><init>()V

    invoke-virtual {v2, v0, v7}, Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    const-class v0, Lcom/badlogic/gdx/math/RandomXS128;

    new-instance v7, Lcom/prineside/tdi2/serializers/RandomXS128Serializer;

    invoke-direct {v7}, Lcom/prineside/tdi2/serializers/RandomXS128Serializer;-><init>()V

    invoke-virtual {v2, v0, v7}, Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    const-class v0, [Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    new-instance v7, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$ObjectArraySerializer;

    const-class v8, [Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-direct {v7, v2, v8}, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$ObjectArraySerializer;-><init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)V

    invoke-virtual {v2, v0, v7}, Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    const-class v0, [Lcom/badlogic/gdx/utils/Array;

    new-instance v7, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$ObjectArraySerializer;

    const-class v8, [Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v7, v2, v8}, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$ObjectArraySerializer;-><init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)V

    invoke-virtual {v2, v0, v7}, Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    const-class v0, Ljava/lang/reflect/InvocationHandler;

    new-instance v7, Lcom/prineside/tdi2/serializers/ProxySerializer;

    invoke-direct {v7}, Lcom/prineside/tdi2/serializers/ProxySerializer;-><init>()V

    invoke-virtual {v2, v0, v7}, Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    const-class v0, Ljava/lang/ref/WeakReference;

    new-instance v7, Lcom/prineside/tdi2/serializers/WeakReferenceSerializer;

    invoke-direct {v7}, Lcom/prineside/tdi2/serializers/WeakReferenceSerializer;-><init>()V

    invoke-virtual {v2, v0, v7}, Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    const-class v0, Lcom/badlogic/gdx/graphics/Color;

    new-instance v7, Lcom/prineside/tdi2/serializers/ColorSerializer;

    invoke-direct {v7}, Lcom/prineside/tdi2/serializers/ColorSerializer;-><init>()V

    invoke-virtual {v2, v0, v7}, Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v7, Ljava/lang/Class;

    invoke-direct {v0, v7}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    sget-object v7, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v8, "res/kryo-registry.txt"

    invoke-interface {v7, v8}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/files/FileHandle;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_1

    aget-object v11, v7, v10

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_0

    :try_start_0
    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load class from kryo-registry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v8, "NetworkManager"

    if-eqz v0, :cond_14

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/Class;

    const-class v0, Lcom/prineside/tdi2/utils/REGS;

    invoke-virtual {v10, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/prineside/tdi2/utils/REGS;

    if-nez v11, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "REGS not found for "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v10}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    invoke-virtual {v10}, Ljava/lang/Class;->isMemberClass()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v10}, Ljava/lang/Class;->getModifiers()I

    move-result v12

    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v12

    if-nez v12, :cond_3

    const/4 v12, 0x1

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    :goto_3
    if-eqz v0, :cond_4

    invoke-interface {v11}, Lcom/prineside/tdi2/utils/REGS;->arrayLevels()I

    move-result v13

    if-nez v13, :cond_4

    invoke-interface {v11}, Lcom/prineside/tdi2/utils/REGS;->classOnly()Z

    move-result v13

    if-nez v13, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "REGS should not be used on abstract class "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    if-eqz v12, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "REGS should not be used on non-static inner class "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v10}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v12

    array-length v13, v12

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v13, :cond_7

    aget-object v15, v12, v14

    if-ne v15, v5, :cond_6

    const/4 v12, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_7
    const/4 v12, 0x0

    :goto_5
    :try_start_1
    new-array v13, v9, [Ljava/lang/Class;

    invoke-virtual {v10, v13}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v13, 0x1

    goto :goto_6

    :catch_1
    const/4 v13, 0x0

    :goto_6
    invoke-virtual {v10}, Ljava/lang/Class;->isEnum()Z

    move-result v14

    invoke-virtual {v10}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v15

    array-length v6, v15

    :goto_7
    if-ge v9, v6, :cond_9

    move/from16 v16, v6

    aget-object v6, v15, v9

    if-ne v6, v5, :cond_8

    const/4 v6, 0x1

    goto :goto_8

    :cond_8
    add-int/lit8 v9, v9, 0x1

    move/from16 v6, v16

    goto :goto_7

    :cond_9
    const/4 v6, 0x0

    :goto_8
    invoke-virtual {v10}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v9

    :goto_9
    if-eqz v9, :cond_c

    if-eq v9, v3, :cond_c

    invoke-virtual {v9}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v15

    move-object/from16 v16, v3

    array-length v3, v15

    move/from16 v17, v6

    const/4 v6, 0x0

    :goto_a
    if-ge v6, v3, :cond_b

    move/from16 v18, v3

    aget-object v3, v15, v6

    if-ne v3, v5, :cond_a

    const/4 v6, 0x1

    goto :goto_b

    :cond_a
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v18

    goto :goto_a

    :cond_b
    invoke-virtual {v9}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v9

    move-object/from16 v3, v16

    move/from16 v6, v17

    goto :goto_9

    :cond_c
    move-object/from16 v16, v3

    move/from16 v17, v6

    move/from16 v6, v17

    :goto_b
    const-string v3, "failed to register class: "

    if-eqz v0, :cond_d

    invoke-interface {v11}, Lcom/prineside/tdi2/utils/REGS;->classOnly()Z

    move-result v9

    if-eqz v9, :cond_11

    :cond_d
    invoke-interface {v11}, Lcom/prineside/tdi2/utils/REGS;->serializer()Ljava/lang/Class;

    move-result-object v9

    if-nez v0, :cond_e

    if-eqz v6, :cond_e

    :try_start_2
    invoke-interface {v11}, Lcom/prineside/tdi2/utils/REGS;->classOnly()Z

    move-result v6

    if-eqz v6, :cond_e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " uses class only serializer while extending the serializable class with fields"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    invoke-interface {v11}, Lcom/prineside/tdi2/utils/REGS;->classOnly()Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const-string v15, " ^^^ "

    if-eqz v6, :cond_f

    :try_start_3
    sget-object v6, Lcom/prineside/tdi2/serializers/GameStateSerializer;->CLASS_ONLY_SERIALIZER:Lcom/esotericsoftware/kryo/Serializer;

    invoke-virtual {v2, v10, v6}, Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    if-eqz v12, :cond_11

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " implements KryoSerializable - incorrect REGS configuration?"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_f
    if-ne v9, v4, :cond_10

    invoke-virtual {v2, v10}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    if-nez v13, :cond_11

    if-nez v14, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has no declared constructor"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_10
    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/kryo/Serializer;

    invoke-virtual {v2, v10, v0}, Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_c

    :catch_2
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " with serializer: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11
    :goto_c
    invoke-interface {v11}, Lcom/prineside/tdi2/utils/REGS;->arrayLevels()I

    move-result v6

    const/4 v9, 0x1

    :goto_d
    if-gt v9, v6, :cond_13

    new-instance v11, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v11}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_e
    if-ge v0, v9, :cond_12

    const-string v12, "["

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_12
    const-string v0, "L"

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    const-string v12, ";"

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :try_start_4
    invoke-virtual {v11}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_f

    :catch_3
    move-exception v0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    :cond_13
    move-object/from16 v3, v16

    const/4 v6, 0x1

    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_14
    const/4 v9, 0x0

    :goto_10
    :try_start_5
    iget-object v0, v1, Lcom/prineside/tdi2/managers/NetworkManager;->registeredClasses:Lcom/badlogic/gdx/utils/Array;

    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v9, v2, :cond_16

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/esotericsoftware/kryo/Registration;

    aget-object v2, v0, v9

    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/Registration;->getSerializer()Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v0

    instance-of v0, v0, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$KryoSerializableSerializer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, v1, Lcom/prineside/tdi2/managers/NetworkManager;->fullKryo:Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;

    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/Registration;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/esotericsoftware/kryo/Kryo;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_11

    :catch_4
    move-exception v0

    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to create instance of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/Registration;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :cond_15
    :goto_11
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    :catch_5
    move-exception v0

    const-string v2, "failed to print registered classes"

    invoke-static {v8, v2, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_16
    return-void
.end method

.method public final f()V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/managers/NetworkManager;->a:Lcom/esotericsoftware/kryonet/Client;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/esotericsoftware/kryonet/Client;->stop()V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/NetworkManager;->a:Lcom/esotericsoftware/kryonet/Client;

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/NetworkManager;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/NetworkManager;->b:Ljava/lang/Thread;

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;->MULTIPLAYER_TEST_ENDPOINT:Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getDynamicSetting(Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/AuthManager;->getPlayerId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/LocaleManager;->getLocale()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/prineside/tdi2/managers/p;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/prineside/tdi2/managers/p;-><init>(Lcom/prineside/tdi2/managers/NetworkManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Net client test"

    invoke-direct {v3, v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/prineside/tdi2/managers/NetworkManager;->b:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_2
    const-string v0, "NetworkManager"

    const-string v1, "network test canceled - host not specified"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public prepareMultiplayerKryo(Lcom/esotericsoftware/kryo/Kryo;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->setMaxDepth(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->setRegistrationRequired(Z)V

    const-class v0, Lcom/prineside/tdi2/managers/NetworkManager$NetReqConnect;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    const-class v0, Lcom/prineside/tdi2/managers/NetworkManager$NetRespConnect;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    const-class v0, Lcom/prineside/tdi2/managers/NetworkManager$NetBundle;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    const-class v0, Lcom/badlogic/gdx/Application$ApplicationType;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    return-void
.end method

.method public setup()V
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;-><init>(Lcom/prineside/tdi2/managers/NetworkManager;)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/NetworkManager;->fullKryo:Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;

    new-instance v1, Lcom/prineside/tdi2/managers/NetworkManager$2;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/NetworkManager$2;-><init>(Lcom/prineside/tdi2/managers/NetworkManager;)V

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->setReferenceResolver(Lcom/esotericsoftware/kryo/ReferenceResolver;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/NetworkManager;->fullKryo:Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/NetworkManager;->e(Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;)V

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/prineside/tdi2/managers/NetworkManager$3;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/managers/NetworkManager$3;-><init>(Lcom/prineside/tdi2/managers/NetworkManager;)V

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;F)Lcom/badlogic/gdx/utils/Timer$Task;

    :cond_0
    return-void
.end method
