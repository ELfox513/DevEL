.class public final enum Lr4/eq;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lr4/rm3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr4/eq;",
        ">;",
        "Lr4/rm3;"
    }
.end annotation


# static fields
.field public static final enum b:Lr4/eq;

.field public static final enum d:Lr4/eq;

.field public static final enum k:Lr4/eq;

.field public static final enum p:Lr4/eq;

.field public static final enum q:Lr4/eq;

.field public static final enum r:Lr4/eq;

.field public static final enum s:Lr4/eq;

.field public static final enum t:Lr4/eq;

.field public static final enum u:Lr4/eq;

.field public static final enum v:Lr4/eq;

.field public static final enum w:Lr4/eq;

.field public static final x:Lr4/sm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/sm3<",
            "Lr4/eq;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic y:[Lr4/eq;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lr4/eq;

    const-string v1, "AD_FORMAT_TYPE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lr4/eq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lr4/eq;->b:Lr4/eq;

    new-instance v1, Lr4/eq;

    const-string v3, "BANNER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lr4/eq;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lr4/eq;->d:Lr4/eq;

    new-instance v3, Lr4/eq;

    const-string v5, "INTERSTITIAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lr4/eq;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lr4/eq;->k:Lr4/eq;

    new-instance v5, Lr4/eq;

    const-string v7, "NATIVE_EXPRESS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lr4/eq;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lr4/eq;->p:Lr4/eq;

    new-instance v7, Lr4/eq;

    const-string v9, "NATIVE_CONTENT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lr4/eq;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lr4/eq;->q:Lr4/eq;

    new-instance v9, Lr4/eq;

    const-string v11, "NATIVE_APP_INSTALL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lr4/eq;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lr4/eq;->r:Lr4/eq;

    new-instance v11, Lr4/eq;

    const-string v13, "NATIVE_CUSTOM_TEMPLATE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lr4/eq;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lr4/eq;->s:Lr4/eq;

    new-instance v13, Lr4/eq;

    const-string v15, "DFP_BANNER"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lr4/eq;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lr4/eq;->t:Lr4/eq;

    new-instance v15, Lr4/eq;

    const-string v14, "DFP_INTERSTITIAL"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lr4/eq;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lr4/eq;->u:Lr4/eq;

    new-instance v14, Lr4/eq;

    const-string v12, "REWARD_BASED_VIDEO_AD"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lr4/eq;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lr4/eq;->v:Lr4/eq;

    new-instance v12, Lr4/eq;

    const-string v10, "BANNER_SEARCH_ADS"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lr4/eq;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lr4/eq;->w:Lr4/eq;

    const/16 v10, 0xb

    new-array v10, v10, [Lr4/eq;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    sput-object v10, Lr4/eq;->y:[Lr4/eq;

    new-instance v0, Lr4/cq;

    invoke-direct {v0}, Lr4/cq;-><init>()V

    sput-object v0, Lr4/eq;->x:Lr4/sm3;

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

    iput p3, p0, Lr4/eq;->a:I

    return-void
.end method

.method public static c(I)Lr4/eq;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lr4/eq;->w:Lr4/eq;

    return-object p0

    :pswitch_1
    sget-object p0, Lr4/eq;->v:Lr4/eq;

    return-object p0

    :pswitch_2
    sget-object p0, Lr4/eq;->u:Lr4/eq;

    return-object p0

    :pswitch_3
    sget-object p0, Lr4/eq;->t:Lr4/eq;

    return-object p0

    :pswitch_4
    sget-object p0, Lr4/eq;->s:Lr4/eq;

    return-object p0

    :pswitch_5
    sget-object p0, Lr4/eq;->r:Lr4/eq;

    return-object p0

    :pswitch_6
    sget-object p0, Lr4/eq;->q:Lr4/eq;

    return-object p0

    :pswitch_7
    sget-object p0, Lr4/eq;->p:Lr4/eq;

    return-object p0

    :pswitch_8
    sget-object p0, Lr4/eq;->k:Lr4/eq;

    return-object p0

    :pswitch_9
    sget-object p0, Lr4/eq;->d:Lr4/eq;

    return-object p0

    :pswitch_a
    sget-object p0, Lr4/eq;->b:Lr4/eq;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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

    sget-object v0, Lr4/dq;->a:Lr4/tm3;

    return-object v0
.end method

.method public static values()[Lr4/eq;
    .locals 1

    sget-object v0, Lr4/eq;->y:[Lr4/eq;

    invoke-virtual {v0}, [Lr4/eq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr4/eq;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lr4/eq;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lr4/eq;->a:I

    return v0
.end method
