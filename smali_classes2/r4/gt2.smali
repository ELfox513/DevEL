.class public final enum Lr4/gt2;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr4/gt2;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lr4/gt2;

.field public static final enum B:Lr4/gt2;

.field public static final enum C:Lr4/gt2;

.field public static final enum D:Lr4/gt2;

.field public static final enum E:Lr4/gt2;

.field public static final enum F:Lr4/gt2;

.field public static final enum G:Lr4/gt2;

.field public static final enum H:Lr4/gt2;

.field public static final enum I:Lr4/gt2;

.field public static final synthetic J:[Lr4/gt2;

.field public static final enum b:Lr4/gt2;

.field public static final enum d:Lr4/gt2;

.field public static final enum k:Lr4/gt2;

.field public static final enum p:Lr4/gt2;

.field public static final enum q:Lr4/gt2;

.field public static final enum r:Lr4/gt2;

.field public static final enum s:Lr4/gt2;

.field public static final enum t:Lr4/gt2;

.field public static final enum u:Lr4/gt2;

.field public static final enum v:Lr4/gt2;

.field public static final enum w:Lr4/gt2;

.field public static final enum x:Lr4/gt2;

.field public static final enum y:Lr4/gt2;

.field public static final enum z:Lr4/gt2;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 26

    new-instance v0, Lr4/gt2;

    const-string v1, "SIGNALS"

    const/4 v2, 0x0

    const-string v3, "signals"

    invoke-direct {v0, v1, v2, v3}, Lr4/gt2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lr4/gt2;->b:Lr4/gt2;

    new-instance v1, Lr4/gt2;

    const-string v3, "REQUEST_PARCEL"

    const/4 v4, 0x1

    const-string v5, "request-parcel"

    invoke-direct {v1, v3, v4, v5}, Lr4/gt2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lr4/gt2;->d:Lr4/gt2;

    new-instance v3, Lr4/gt2;

    const-string v5, "SERVER_TRANSACTION"

    const/4 v6, 0x2

    const-string v7, "server-transaction"

    invoke-direct {v3, v5, v6, v7}, Lr4/gt2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lr4/gt2;->k:Lr4/gt2;

    new-instance v5, Lr4/gt2;

    const-string v7, "RENDERER"

    const/4 v8, 0x3

    const-string v9, "renderer"

    invoke-direct {v5, v7, v8, v9}, Lr4/gt2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lr4/gt2;->p:Lr4/gt2;

    new-instance v7, Lr4/gt2;

    const-string v9, "GMS_SIGNALS"

    const/4 v10, 0x4

    const-string v11, "gms-signals"

    invoke-direct {v7, v9, v10, v11}, Lr4/gt2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lr4/gt2;->q:Lr4/gt2;

    new-instance v9, Lr4/gt2;

    const-string v11, "AD_REQUEST"

    const/4 v12, 0x5

    const-string v13, "ad_request"

    invoke-direct {v9, v11, v12, v13}, Lr4/gt2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lr4/gt2;->r:Lr4/gt2;

    new-instance v11, Lr4/gt2;

    const-string v13, "BUILD_URL"

    const/4 v14, 0x6

    const-string v15, "build-url"

    invoke-direct {v11, v13, v14, v15}, Lr4/gt2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lr4/gt2;->s:Lr4/gt2;

    new-instance v13, Lr4/gt2;

    const-string v15, "HTTP"

    const/4 v14, 0x7

    const-string v12, "http"

    invoke-direct {v13, v15, v14, v12}, Lr4/gt2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lr4/gt2;->t:Lr4/gt2;

    new-instance v12, Lr4/gt2;

    const-string v15, "PRE_PROCESS"

    const/16 v14, 0x8

    const-string v10, "preprocess"

    invoke-direct {v12, v15, v14, v10}, Lr4/gt2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lr4/gt2;->u:Lr4/gt2;

    new-instance v10, Lr4/gt2;

    const-string v15, "GET_SIGNALS"

    const/16 v14, 0x9

    const-string v8, "get-signals"

    invoke-direct {v10, v15, v14, v8}, Lr4/gt2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lr4/gt2;->v:Lr4/gt2;

    new-instance v8, Lr4/gt2;

    const-string v15, "JS_SIGNALS"

    const/16 v14, 0xa

    const-string v6, "js-signals"

    invoke-direct {v8, v15, v14, v6}, Lr4/gt2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lr4/gt2;->w:Lr4/gt2;

    new-instance v6, Lr4/gt2;

    const-string v15, "RENDER_CONFIG_INIT"

    const/16 v14, 0xb

    const-string v4, "render-config-init"

    invoke-direct {v6, v15, v14, v4}, Lr4/gt2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lr4/gt2;->x:Lr4/gt2;

    new-instance v4, Lr4/gt2;

    const-string v15, "RENDER_CONFIG_WATERFALL"

    const/16 v14, 0xc

    const-string v2, "render-config-waterfall"

    invoke-direct {v4, v15, v14, v2}, Lr4/gt2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lr4/gt2;->y:Lr4/gt2;

    new-instance v2, Lr4/gt2;

    const-string v15, "ADAPTER_LOAD_AD_SYN"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const-string v4, "adapter-load-ad-syn"

    invoke-direct {v2, v15, v14, v4}, Lr4/gt2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lr4/gt2;->z:Lr4/gt2;

    new-instance v4, Lr4/gt2;

    const-string v15, "ADAPTER_LOAD_AD_ACK"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const-string v2, "adapter-load-ad-ack"

    invoke-direct {v4, v15, v14, v2}, Lr4/gt2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lr4/gt2;->A:Lr4/gt2;

    new-instance v2, Lr4/gt2;

    const-string v15, "ADAPTER_WRAP_ADAPTER"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const-string v4, "wrap-adapter"

    invoke-direct {v2, v15, v14, v4}, Lr4/gt2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lr4/gt2;->B:Lr4/gt2;

    new-instance v4, Lr4/gt2;

    const-string v15, "CUSTOM_RENDER_SYN"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const-string v2, "custom-render-syn"

    invoke-direct {v4, v15, v14, v2}, Lr4/gt2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lr4/gt2;->C:Lr4/gt2;

    new-instance v2, Lr4/gt2;

    const-string v15, "CUSTOM_RENDER_ACK"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const-string v4, "custom-render-ack"

    invoke-direct {v2, v15, v14, v4}, Lr4/gt2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lr4/gt2;->D:Lr4/gt2;

    new-instance v4, Lr4/gt2;

    const-string v15, "WEBVIEW_COOKIE"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const-string v2, "webview-cookie"

    invoke-direct {v4, v15, v14, v2}, Lr4/gt2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lr4/gt2;->E:Lr4/gt2;

    new-instance v2, Lr4/gt2;

    const-string v15, "GENERATE_SIGNALS"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const-string v4, "generate-signals"

    invoke-direct {v2, v15, v14, v4}, Lr4/gt2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lr4/gt2;->F:Lr4/gt2;

    new-instance v4, Lr4/gt2;

    const-string v15, "GET_CACHE_KEY"

    const/16 v14, 0x14

    move-object/from16 v23, v2

    const-string v2, "get-cache-key"

    invoke-direct {v4, v15, v14, v2}, Lr4/gt2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lr4/gt2;->G:Lr4/gt2;

    new-instance v2, Lr4/gt2;

    const-string v15, "NOTIFY_CACHE_HIT"

    const/16 v14, 0x15

    move-object/from16 v24, v4

    const-string v4, "notify-cache-hit"

    invoke-direct {v2, v15, v14, v4}, Lr4/gt2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lr4/gt2;->H:Lr4/gt2;

    new-instance v4, Lr4/gt2;

    const-string v15, "GET_URL_AND_CACHE_KEY"

    const/16 v14, 0x16

    move-object/from16 v25, v2

    const-string v2, "get-url-and-cache-key"

    invoke-direct {v4, v15, v14, v2}, Lr4/gt2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lr4/gt2;->I:Lr4/gt2;

    const/16 v2, 0x17

    new-array v2, v2, [Lr4/gt2;

    const/4 v14, 0x0

    aput-object v0, v2, v14

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    const/16 v0, 0x14

    aput-object v24, v2, v0

    const/16 v0, 0x15

    aput-object v25, v2, v0

    const/16 v0, 0x16

    aput-object v4, v2, v0

    sput-object v2, Lr4/gt2;->J:[Lr4/gt2;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lr4/gt2;->a:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lr4/gt2;
    .locals 1

    sget-object v0, Lr4/gt2;->J:[Lr4/gt2;

    invoke-virtual {v0}, [Lr4/gt2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr4/gt2;

    return-object v0
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/gt2;->a:Ljava/lang/String;

    return-object v0
.end method
