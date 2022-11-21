.class public final enum Lr4/qp;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lr4/rm3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr4/qp;",
        ">;",
        "Lr4/rm3;"
    }
.end annotation


# static fields
.field public static final enum b:Lr4/qp;

.field public static final enum d:Lr4/qp;

.field public static final enum k:Lr4/qp;

.field public static final enum p:Lr4/qp;

.field public static final enum q:Lr4/qp;

.field public static final enum r:Lr4/qp;

.field public static final enum s:Lr4/qp;

.field public static final enum t:Lr4/qp;

.field public static final enum u:Lr4/qp;

.field public static final enum v:Lr4/qp;

.field public static final enum w:Lr4/qp;

.field public static final enum x:Lr4/qp;

.field public static final y:Lr4/sm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/sm3<",
            "Lr4/qp;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic z:[Lr4/qp;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lr4/qp;

    const-string v1, "AD_INITIATER_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lr4/qp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lr4/qp;->b:Lr4/qp;

    new-instance v1, Lr4/qp;

    const-string v3, "BANNER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lr4/qp;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lr4/qp;->d:Lr4/qp;

    new-instance v3, Lr4/qp;

    const-string v5, "DFP_BANNER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lr4/qp;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lr4/qp;->k:Lr4/qp;

    new-instance v5, Lr4/qp;

    const-string v7, "INTERSTITIAL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lr4/qp;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lr4/qp;->p:Lr4/qp;

    new-instance v7, Lr4/qp;

    const-string v9, "DFP_INTERSTITIAL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lr4/qp;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lr4/qp;->q:Lr4/qp;

    new-instance v9, Lr4/qp;

    const-string v11, "NATIVE_EXPRESS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lr4/qp;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lr4/qp;->r:Lr4/qp;

    new-instance v11, Lr4/qp;

    const-string v13, "AD_LOADER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lr4/qp;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lr4/qp;->s:Lr4/qp;

    new-instance v13, Lr4/qp;

    const-string v15, "REWARD_BASED_VIDEO_AD"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lr4/qp;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lr4/qp;->t:Lr4/qp;

    new-instance v15, Lr4/qp;

    const-string v14, "BANNER_SEARCH_ADS"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lr4/qp;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lr4/qp;->u:Lr4/qp;

    new-instance v14, Lr4/qp;

    const-string v12, "GOOGLE_MOBILE_ADS_SDK_ADAPTER"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lr4/qp;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lr4/qp;->v:Lr4/qp;

    new-instance v12, Lr4/qp;

    const-string v10, "APP_OPEN"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lr4/qp;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lr4/qp;->w:Lr4/qp;

    new-instance v10, Lr4/qp;

    const-string v8, "REWARDED_INTERSTITIAL"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lr4/qp;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lr4/qp;->x:Lr4/qp;

    const/16 v8, 0xc

    new-array v8, v8, [Lr4/qp;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v12, v8, v0

    aput-object v10, v8, v6

    sput-object v8, Lr4/qp;->z:[Lr4/qp;

    new-instance v0, Lr4/op;

    invoke-direct {v0}, Lr4/op;-><init>()V

    sput-object v0, Lr4/qp;->y:Lr4/sm3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lr4/qp;->a:I

    return-void
.end method

.method public static c(I)Lr4/qp;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lr4/qp;->x:Lr4/qp;

    return-object p0

    :pswitch_1
    sget-object p0, Lr4/qp;->w:Lr4/qp;

    return-object p0

    :pswitch_2
    sget-object p0, Lr4/qp;->v:Lr4/qp;

    return-object p0

    :pswitch_3
    sget-object p0, Lr4/qp;->u:Lr4/qp;

    return-object p0

    :pswitch_4
    sget-object p0, Lr4/qp;->t:Lr4/qp;

    return-object p0

    :pswitch_5
    sget-object p0, Lr4/qp;->s:Lr4/qp;

    return-object p0

    :pswitch_6
    sget-object p0, Lr4/qp;->r:Lr4/qp;

    return-object p0

    :pswitch_7
    sget-object p0, Lr4/qp;->q:Lr4/qp;

    return-object p0

    :pswitch_8
    sget-object p0, Lr4/qp;->p:Lr4/qp;

    return-object p0

    :pswitch_9
    sget-object p0, Lr4/qp;->k:Lr4/qp;

    return-object p0

    :pswitch_a
    sget-object p0, Lr4/qp;->d:Lr4/qp;

    return-object p0

    :pswitch_b
    sget-object p0, Lr4/qp;->b:Lr4/qp;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static d()Lr4/tm3;
    .locals 1

    sget-object v0, Lr4/pp;->a:Lr4/tm3;

    return-object v0
.end method

.method public static values()[Lr4/qp;
    .locals 1

    sget-object v0, Lr4/qp;->z:[Lr4/qp;

    invoke-virtual {v0}, [Lr4/qp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr4/qp;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lr4/qp;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lr4/qp;->a:I

    return v0
.end method
