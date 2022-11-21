.class public Lcom/prineside/tdi2/configs/HeadlessConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEBUG_TEST_REPLAYS:Z = false

.field public static final DEBUG_TEST_REPLAY_IDS:[Ljava/lang/String;

.field public static final GENERATE_REPORT:Z = true

.field public static final LOOT_ENABLED:Z = true

.field public static final MULTIPLAYER_TEST_SERVER:Z = false

.field public static final REPORT_INTERVAL:I = 0x708

.field public static final VALIDATION_SYNC_COEFF:F = 0.0f

.field public static final VALIDATION_SYNC_TEST:Z = false


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "R-JEMZ-3NAE-JENCNU"

    aput-object v2, v0, v1

    sput-object v0, Lcom/prineside/tdi2/configs/HeadlessConfig;->DEBUG_TEST_REPLAY_IDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
