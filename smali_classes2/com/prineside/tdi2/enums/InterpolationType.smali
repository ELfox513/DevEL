.class public final enum Lcom/prineside/tdi2/enums/InterpolationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/enums/InterpolationType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:[Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final enum bounce:Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final enum bounceIn:Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final enum bounceOut:Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final enum circle:Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final enum circleIn:Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final enum circleOut:Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final enum elastic:Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final enum elasticIn:Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final enum elasticOut:Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final enum exp10:Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final enum exp10In:Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final enum exp10Out:Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final enum exp5:Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final enum exp5In:Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final enum exp5Out:Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final enum fade:Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final enum fastSlow:Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final enum linear:Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final objects:[Lcom/badlogic/gdx/math/Interpolation;

.field public static final enum pow2:Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final enum pow2InInverse:Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final enum pow2OutInverse:Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final enum pow3:Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final enum pow3In:Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final enum pow3InInverse:Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final enum pow3Out:Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final enum pow3OutInverse:Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final enum pow4:Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final enum pow4In:Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final enum pow4Out:Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final enum pow5:Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final enum pow5In:Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final enum pow5Out:Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final enum sine:Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final enum sineIn:Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final enum sineOut:Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final enum slowFast:Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final enum smooth:Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final enum smooth2:Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final enum smoother:Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final enum swing:Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final enum swingIn:Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final enum swingOut:Lcom/prineside/tdi2/enums/InterpolationType;

.field public static final values:[Lcom/prineside/tdi2/enums/InterpolationType;


# direct methods
.method public static constructor <clinit>()V
    .locals 44

    new-instance v0, Lcom/prineside/tdi2/enums/InterpolationType;

    const-string v1, "linear"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/InterpolationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/InterpolationType;->linear:Lcom/prineside/tdi2/enums/InterpolationType;

    new-instance v1, Lcom/prineside/tdi2/enums/InterpolationType;

    const-string v2, "smooth"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/prineside/tdi2/enums/InterpolationType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->smooth:Lcom/prineside/tdi2/enums/InterpolationType;

    new-instance v2, Lcom/prineside/tdi2/enums/InterpolationType;

    const-string v3, "smooth2"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/prineside/tdi2/enums/InterpolationType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/prineside/tdi2/enums/InterpolationType;->smooth2:Lcom/prineside/tdi2/enums/InterpolationType;

    new-instance v3, Lcom/prineside/tdi2/enums/InterpolationType;

    const-string v4, "smoother"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/prineside/tdi2/enums/InterpolationType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/prineside/tdi2/enums/InterpolationType;->smoother:Lcom/prineside/tdi2/enums/InterpolationType;

    new-instance v4, Lcom/prineside/tdi2/enums/InterpolationType;

    const-string v5, "fade"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/prineside/tdi2/enums/InterpolationType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/prineside/tdi2/enums/InterpolationType;->fade:Lcom/prineside/tdi2/enums/InterpolationType;

    new-instance v5, Lcom/prineside/tdi2/enums/InterpolationType;

    const-string v6, "pow2"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/prineside/tdi2/enums/InterpolationType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/prineside/tdi2/enums/InterpolationType;->pow2:Lcom/prineside/tdi2/enums/InterpolationType;

    new-instance v6, Lcom/prineside/tdi2/enums/InterpolationType;

    const-string v7, "slowFast"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/prineside/tdi2/enums/InterpolationType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/prineside/tdi2/enums/InterpolationType;->slowFast:Lcom/prineside/tdi2/enums/InterpolationType;

    new-instance v7, Lcom/prineside/tdi2/enums/InterpolationType;

    const-string v8, "fastSlow"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/prineside/tdi2/enums/InterpolationType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/prineside/tdi2/enums/InterpolationType;->fastSlow:Lcom/prineside/tdi2/enums/InterpolationType;

    new-instance v8, Lcom/prineside/tdi2/enums/InterpolationType;

    const-string v9, "pow2InInverse"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/prineside/tdi2/enums/InterpolationType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/prineside/tdi2/enums/InterpolationType;->pow2InInverse:Lcom/prineside/tdi2/enums/InterpolationType;

    new-instance v9, Lcom/prineside/tdi2/enums/InterpolationType;

    const-string v10, "pow2OutInverse"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/prineside/tdi2/enums/InterpolationType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/prineside/tdi2/enums/InterpolationType;->pow2OutInverse:Lcom/prineside/tdi2/enums/InterpolationType;

    new-instance v10, Lcom/prineside/tdi2/enums/InterpolationType;

    const-string v11, "pow3"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/prineside/tdi2/enums/InterpolationType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/prineside/tdi2/enums/InterpolationType;->pow3:Lcom/prineside/tdi2/enums/InterpolationType;

    new-instance v11, Lcom/prineside/tdi2/enums/InterpolationType;

    const-string v12, "pow3In"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/prineside/tdi2/enums/InterpolationType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/prineside/tdi2/enums/InterpolationType;->pow3In:Lcom/prineside/tdi2/enums/InterpolationType;

    new-instance v12, Lcom/prineside/tdi2/enums/InterpolationType;

    const-string v13, "pow3Out"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lcom/prineside/tdi2/enums/InterpolationType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/prineside/tdi2/enums/InterpolationType;->pow3Out:Lcom/prineside/tdi2/enums/InterpolationType;

    new-instance v13, Lcom/prineside/tdi2/enums/InterpolationType;

    const-string v14, "pow3InInverse"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Lcom/prineside/tdi2/enums/InterpolationType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/prineside/tdi2/enums/InterpolationType;->pow3InInverse:Lcom/prineside/tdi2/enums/InterpolationType;

    new-instance v14, Lcom/prineside/tdi2/enums/InterpolationType;

    const-string v15, "pow3OutInverse"

    move-object/from16 v16, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13}, Lcom/prineside/tdi2/enums/InterpolationType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/prineside/tdi2/enums/InterpolationType;->pow3OutInverse:Lcom/prineside/tdi2/enums/InterpolationType;

    new-instance v13, Lcom/prineside/tdi2/enums/InterpolationType;

    const-string v15, "pow4"

    move-object/from16 v17, v14

    const/16 v14, 0xf

    invoke-direct {v13, v15, v14}, Lcom/prineside/tdi2/enums/InterpolationType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/prineside/tdi2/enums/InterpolationType;->pow4:Lcom/prineside/tdi2/enums/InterpolationType;

    new-instance v14, Lcom/prineside/tdi2/enums/InterpolationType;

    const-string v15, "pow4In"

    move-object/from16 v18, v13

    const/16 v13, 0x10

    invoke-direct {v14, v15, v13}, Lcom/prineside/tdi2/enums/InterpolationType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/prineside/tdi2/enums/InterpolationType;->pow4In:Lcom/prineside/tdi2/enums/InterpolationType;

    new-instance v13, Lcom/prineside/tdi2/enums/InterpolationType;

    const-string v15, "pow4Out"

    move-object/from16 v19, v14

    const/16 v14, 0x11

    invoke-direct {v13, v15, v14}, Lcom/prineside/tdi2/enums/InterpolationType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/prineside/tdi2/enums/InterpolationType;->pow4Out:Lcom/prineside/tdi2/enums/InterpolationType;

    new-instance v14, Lcom/prineside/tdi2/enums/InterpolationType;

    const-string v15, "pow5"

    move-object/from16 v20, v13

    const/16 v13, 0x12

    invoke-direct {v14, v15, v13}, Lcom/prineside/tdi2/enums/InterpolationType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/prineside/tdi2/enums/InterpolationType;->pow5:Lcom/prineside/tdi2/enums/InterpolationType;

    new-instance v13, Lcom/prineside/tdi2/enums/InterpolationType;

    const-string v15, "pow5In"

    move-object/from16 v21, v14

    const/16 v14, 0x13

    invoke-direct {v13, v15, v14}, Lcom/prineside/tdi2/enums/InterpolationType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/prineside/tdi2/enums/InterpolationType;->pow5In:Lcom/prineside/tdi2/enums/InterpolationType;

    new-instance v14, Lcom/prineside/tdi2/enums/InterpolationType;

    const-string v15, "pow5Out"

    move-object/from16 v22, v13

    const/16 v13, 0x14

    invoke-direct {v14, v15, v13}, Lcom/prineside/tdi2/enums/InterpolationType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/prineside/tdi2/enums/InterpolationType;->pow5Out:Lcom/prineside/tdi2/enums/InterpolationType;

    new-instance v13, Lcom/prineside/tdi2/enums/InterpolationType;

    const-string v15, "sine"

    move-object/from16 v23, v14

    const/16 v14, 0x15

    invoke-direct {v13, v15, v14}, Lcom/prineside/tdi2/enums/InterpolationType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/prineside/tdi2/enums/InterpolationType;->sine:Lcom/prineside/tdi2/enums/InterpolationType;

    new-instance v14, Lcom/prineside/tdi2/enums/InterpolationType;

    const-string v15, "sineIn"

    move-object/from16 v24, v13

    const/16 v13, 0x16

    invoke-direct {v14, v15, v13}, Lcom/prineside/tdi2/enums/InterpolationType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/prineside/tdi2/enums/InterpolationType;->sineIn:Lcom/prineside/tdi2/enums/InterpolationType;

    new-instance v13, Lcom/prineside/tdi2/enums/InterpolationType;

    const-string v15, "sineOut"

    move-object/from16 v25, v14

    const/16 v14, 0x17

    invoke-direct {v13, v15, v14}, Lcom/prineside/tdi2/enums/InterpolationType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/prineside/tdi2/enums/InterpolationType;->sineOut:Lcom/prineside/tdi2/enums/InterpolationType;

    new-instance v14, Lcom/prineside/tdi2/enums/InterpolationType;

    const-string v15, "exp10"

    move-object/from16 v26, v13

    const/16 v13, 0x18

    invoke-direct {v14, v15, v13}, Lcom/prineside/tdi2/enums/InterpolationType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/prineside/tdi2/enums/InterpolationType;->exp10:Lcom/prineside/tdi2/enums/InterpolationType;

    new-instance v13, Lcom/prineside/tdi2/enums/InterpolationType;

    const-string v15, "exp10In"

    move-object/from16 v27, v14

    const/16 v14, 0x19

    invoke-direct {v13, v15, v14}, Lcom/prineside/tdi2/enums/InterpolationType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/prineside/tdi2/enums/InterpolationType;->exp10In:Lcom/prineside/tdi2/enums/InterpolationType;

    new-instance v14, Lcom/prineside/tdi2/enums/InterpolationType;

    const-string v15, "exp10Out"

    move-object/from16 v28, v13

    const/16 v13, 0x1a

    invoke-direct {v14, v15, v13}, Lcom/prineside/tdi2/enums/InterpolationType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/prineside/tdi2/enums/InterpolationType;->exp10Out:Lcom/prineside/tdi2/enums/InterpolationType;

    new-instance v13, Lcom/prineside/tdi2/enums/InterpolationType;

    const-string v15, "exp5"

    move-object/from16 v29, v14

    const/16 v14, 0x1b

    invoke-direct {v13, v15, v14}, Lcom/prineside/tdi2/enums/InterpolationType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/prineside/tdi2/enums/InterpolationType;->exp5:Lcom/prineside/tdi2/enums/InterpolationType;

    new-instance v14, Lcom/prineside/tdi2/enums/InterpolationType;

    const-string v15, "exp5In"

    move-object/from16 v30, v13

    const/16 v13, 0x1c

    invoke-direct {v14, v15, v13}, Lcom/prineside/tdi2/enums/InterpolationType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/prineside/tdi2/enums/InterpolationType;->exp5In:Lcom/prineside/tdi2/enums/InterpolationType;

    new-instance v13, Lcom/prineside/tdi2/enums/InterpolationType;

    const-string v15, "exp5Out"

    move-object/from16 v31, v14

    const/16 v14, 0x1d

    invoke-direct {v13, v15, v14}, Lcom/prineside/tdi2/enums/InterpolationType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/prineside/tdi2/enums/InterpolationType;->exp5Out:Lcom/prineside/tdi2/enums/InterpolationType;

    new-instance v14, Lcom/prineside/tdi2/enums/InterpolationType;

    const-string v15, "circle"

    move-object/from16 v32, v13

    const/16 v13, 0x1e

    invoke-direct {v14, v15, v13}, Lcom/prineside/tdi2/enums/InterpolationType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/prineside/tdi2/enums/InterpolationType;->circle:Lcom/prineside/tdi2/enums/InterpolationType;

    new-instance v13, Lcom/prineside/tdi2/enums/InterpolationType;

    const-string v15, "circleIn"

    move-object/from16 v33, v14

    const/16 v14, 0x1f

    invoke-direct {v13, v15, v14}, Lcom/prineside/tdi2/enums/InterpolationType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/prineside/tdi2/enums/InterpolationType;->circleIn:Lcom/prineside/tdi2/enums/InterpolationType;

    new-instance v14, Lcom/prineside/tdi2/enums/InterpolationType;

    const-string v15, "circleOut"

    move-object/from16 v34, v13

    const/16 v13, 0x20

    invoke-direct {v14, v15, v13}, Lcom/prineside/tdi2/enums/InterpolationType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/prineside/tdi2/enums/InterpolationType;->circleOut:Lcom/prineside/tdi2/enums/InterpolationType;

    new-instance v13, Lcom/prineside/tdi2/enums/InterpolationType;

    const-string v15, "elastic"

    move-object/from16 v35, v14

    const/16 v14, 0x21

    invoke-direct {v13, v15, v14}, Lcom/prineside/tdi2/enums/InterpolationType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/prineside/tdi2/enums/InterpolationType;->elastic:Lcom/prineside/tdi2/enums/InterpolationType;

    new-instance v14, Lcom/prineside/tdi2/enums/InterpolationType;

    const-string v15, "elasticIn"

    move-object/from16 v36, v13

    const/16 v13, 0x22

    invoke-direct {v14, v15, v13}, Lcom/prineside/tdi2/enums/InterpolationType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/prineside/tdi2/enums/InterpolationType;->elasticIn:Lcom/prineside/tdi2/enums/InterpolationType;

    new-instance v13, Lcom/prineside/tdi2/enums/InterpolationType;

    const-string v15, "elasticOut"

    move-object/from16 v37, v14

    const/16 v14, 0x23

    invoke-direct {v13, v15, v14}, Lcom/prineside/tdi2/enums/InterpolationType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/prineside/tdi2/enums/InterpolationType;->elasticOut:Lcom/prineside/tdi2/enums/InterpolationType;

    new-instance v14, Lcom/prineside/tdi2/enums/InterpolationType;

    const-string v15, "swing"

    move-object/from16 v38, v13

    const/16 v13, 0x24

    invoke-direct {v14, v15, v13}, Lcom/prineside/tdi2/enums/InterpolationType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/prineside/tdi2/enums/InterpolationType;->swing:Lcom/prineside/tdi2/enums/InterpolationType;

    new-instance v13, Lcom/prineside/tdi2/enums/InterpolationType;

    const-string v15, "swingIn"

    move-object/from16 v39, v14

    const/16 v14, 0x25

    invoke-direct {v13, v15, v14}, Lcom/prineside/tdi2/enums/InterpolationType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/prineside/tdi2/enums/InterpolationType;->swingIn:Lcom/prineside/tdi2/enums/InterpolationType;

    new-instance v14, Lcom/prineside/tdi2/enums/InterpolationType;

    const-string v15, "swingOut"

    move-object/from16 v40, v13

    const/16 v13, 0x26

    invoke-direct {v14, v15, v13}, Lcom/prineside/tdi2/enums/InterpolationType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/prineside/tdi2/enums/InterpolationType;->swingOut:Lcom/prineside/tdi2/enums/InterpolationType;

    new-instance v13, Lcom/prineside/tdi2/enums/InterpolationType;

    const-string v15, "bounce"

    move-object/from16 v41, v14

    const/16 v14, 0x27

    invoke-direct {v13, v15, v14}, Lcom/prineside/tdi2/enums/InterpolationType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/prineside/tdi2/enums/InterpolationType;->bounce:Lcom/prineside/tdi2/enums/InterpolationType;

    new-instance v14, Lcom/prineside/tdi2/enums/InterpolationType;

    const-string v15, "bounceIn"

    move-object/from16 v42, v13

    const/16 v13, 0x28

    invoke-direct {v14, v15, v13}, Lcom/prineside/tdi2/enums/InterpolationType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/prineside/tdi2/enums/InterpolationType;->bounceIn:Lcom/prineside/tdi2/enums/InterpolationType;

    new-instance v13, Lcom/prineside/tdi2/enums/InterpolationType;

    const-string v15, "bounceOut"

    move-object/from16 v43, v14

    const/16 v14, 0x29

    invoke-direct {v13, v15, v14}, Lcom/prineside/tdi2/enums/InterpolationType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/prineside/tdi2/enums/InterpolationType;->bounceOut:Lcom/prineside/tdi2/enums/InterpolationType;

    invoke-static {}, Lcom/prineside/tdi2/enums/InterpolationType;->c()[Lcom/prineside/tdi2/enums/InterpolationType;

    move-result-object v14

    sput-object v14, Lcom/prineside/tdi2/enums/InterpolationType;->a:[Lcom/prineside/tdi2/enums/InterpolationType;

    invoke-static {}, Lcom/prineside/tdi2/enums/InterpolationType;->values()[Lcom/prineside/tdi2/enums/InterpolationType;

    move-result-object v14

    sput-object v14, Lcom/prineside/tdi2/enums/InterpolationType;->values:[Lcom/prineside/tdi2/enums/InterpolationType;

    array-length v14, v14

    new-array v14, v14, [Lcom/badlogic/gdx/math/Interpolation;

    sput-object v14, Lcom/prineside/tdi2/enums/InterpolationType;->objects:[Lcom/badlogic/gdx/math/Interpolation;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v15, Lcom/badlogic/gdx/math/Interpolation;->linear:Lcom/badlogic/gdx/math/Interpolation;

    aput-object v15, v14, v0

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->smooth:Lcom/badlogic/gdx/math/Interpolation;

    aput-object v1, v14, v0

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->smooth2:Lcom/badlogic/gdx/math/Interpolation;

    aput-object v1, v14, v0

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->smoother:Lcom/badlogic/gdx/math/Interpolation;

    aput-object v1, v14, v0

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->fade:Lcom/badlogic/gdx/math/Interpolation;

    aput-object v1, v14, v0

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->pow2:Lcom/badlogic/gdx/math/Interpolation$Pow;

    aput-object v1, v14, v0

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->slowFast:Lcom/badlogic/gdx/math/Interpolation$PowIn;

    aput-object v1, v14, v0

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->fastSlow:Lcom/badlogic/gdx/math/Interpolation$PowOut;

    aput-object v1, v14, v0

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->pow2InInverse:Lcom/badlogic/gdx/math/Interpolation;

    aput-object v1, v14, v0

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->pow2OutInverse:Lcom/badlogic/gdx/math/Interpolation;

    aput-object v1, v14, v0

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->pow3:Lcom/badlogic/gdx/math/Interpolation$Pow;

    aput-object v1, v14, v0

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->pow3In:Lcom/badlogic/gdx/math/Interpolation$PowIn;

    aput-object v1, v14, v0

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->pow3Out:Lcom/badlogic/gdx/math/Interpolation$PowOut;

    aput-object v1, v14, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->pow3InInverse:Lcom/badlogic/gdx/math/Interpolation;

    aput-object v1, v14, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->pow3OutInverse:Lcom/badlogic/gdx/math/Interpolation;

    aput-object v1, v14, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->pow4:Lcom/badlogic/gdx/math/Interpolation$Pow;

    aput-object v1, v14, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->pow4In:Lcom/badlogic/gdx/math/Interpolation$PowIn;

    aput-object v1, v14, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->pow4Out:Lcom/badlogic/gdx/math/Interpolation$PowOut;

    aput-object v1, v14, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->pow5:Lcom/badlogic/gdx/math/Interpolation$Pow;

    aput-object v1, v14, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->pow5In:Lcom/badlogic/gdx/math/Interpolation$PowIn;

    aput-object v1, v14, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->pow5Out:Lcom/badlogic/gdx/math/Interpolation$PowOut;

    aput-object v1, v14, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->sine:Lcom/badlogic/gdx/math/Interpolation;

    aput-object v1, v14, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->sineIn:Lcom/badlogic/gdx/math/Interpolation;

    aput-object v1, v14, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->sineOut:Lcom/badlogic/gdx/math/Interpolation;

    aput-object v1, v14, v0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->exp10:Lcom/badlogic/gdx/math/Interpolation$Exp;

    aput-object v1, v14, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->exp10In:Lcom/badlogic/gdx/math/Interpolation$ExpIn;

    aput-object v1, v14, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->exp10Out:Lcom/badlogic/gdx/math/Interpolation$ExpOut;

    aput-object v1, v14, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->exp5:Lcom/badlogic/gdx/math/Interpolation$Exp;

    aput-object v1, v14, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->exp5In:Lcom/badlogic/gdx/math/Interpolation$ExpIn;

    aput-object v1, v14, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->exp5Out:Lcom/badlogic/gdx/math/Interpolation$ExpOut;

    aput-object v1, v14, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->circle:Lcom/badlogic/gdx/math/Interpolation;

    aput-object v1, v14, v0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->circleIn:Lcom/badlogic/gdx/math/Interpolation;

    aput-object v1, v14, v0

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->circleOut:Lcom/badlogic/gdx/math/Interpolation;

    aput-object v1, v14, v0

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->elastic:Lcom/badlogic/gdx/math/Interpolation$Elastic;

    aput-object v1, v14, v0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->elasticIn:Lcom/badlogic/gdx/math/Interpolation$ElasticIn;

    aput-object v1, v14, v0

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->elasticOut:Lcom/badlogic/gdx/math/Interpolation$ElasticOut;

    aput-object v1, v14, v0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->swing:Lcom/badlogic/gdx/math/Interpolation$Swing;

    aput-object v1, v14, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->swingIn:Lcom/badlogic/gdx/math/Interpolation$SwingIn;

    aput-object v1, v14, v0

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->swingOut:Lcom/badlogic/gdx/math/Interpolation$SwingOut;

    aput-object v1, v14, v0

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->bounce:Lcom/badlogic/gdx/math/Interpolation$Bounce;

    aput-object v1, v14, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->bounceIn:Lcom/badlogic/gdx/math/Interpolation$BounceIn;

    aput-object v1, v14, v0

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->bounceOut:Lcom/badlogic/gdx/math/Interpolation$BounceOut;

    aput-object v1, v14, v0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic c()[Lcom/prineside/tdi2/enums/InterpolationType;
    .locals 3

    const/16 v0, 0x2a

    new-array v0, v0, [Lcom/prineside/tdi2/enums/InterpolationType;

    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->linear:Lcom/prineside/tdi2/enums/InterpolationType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->smooth:Lcom/prineside/tdi2/enums/InterpolationType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->smooth2:Lcom/prineside/tdi2/enums/InterpolationType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->smoother:Lcom/prineside/tdi2/enums/InterpolationType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->fade:Lcom/prineside/tdi2/enums/InterpolationType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->pow2:Lcom/prineside/tdi2/enums/InterpolationType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->slowFast:Lcom/prineside/tdi2/enums/InterpolationType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->fastSlow:Lcom/prineside/tdi2/enums/InterpolationType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->pow2InInverse:Lcom/prineside/tdi2/enums/InterpolationType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->pow2OutInverse:Lcom/prineside/tdi2/enums/InterpolationType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->pow3:Lcom/prineside/tdi2/enums/InterpolationType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->pow3In:Lcom/prineside/tdi2/enums/InterpolationType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->pow3Out:Lcom/prineside/tdi2/enums/InterpolationType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->pow3InInverse:Lcom/prineside/tdi2/enums/InterpolationType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->pow3OutInverse:Lcom/prineside/tdi2/enums/InterpolationType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->pow4:Lcom/prineside/tdi2/enums/InterpolationType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->pow4In:Lcom/prineside/tdi2/enums/InterpolationType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->pow4Out:Lcom/prineside/tdi2/enums/InterpolationType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->pow5:Lcom/prineside/tdi2/enums/InterpolationType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->pow5In:Lcom/prineside/tdi2/enums/InterpolationType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->pow5Out:Lcom/prineside/tdi2/enums/InterpolationType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->sine:Lcom/prineside/tdi2/enums/InterpolationType;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->sineIn:Lcom/prineside/tdi2/enums/InterpolationType;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->sineOut:Lcom/prineside/tdi2/enums/InterpolationType;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->exp10:Lcom/prineside/tdi2/enums/InterpolationType;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->exp10In:Lcom/prineside/tdi2/enums/InterpolationType;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->exp10Out:Lcom/prineside/tdi2/enums/InterpolationType;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->exp5:Lcom/prineside/tdi2/enums/InterpolationType;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->exp5In:Lcom/prineside/tdi2/enums/InterpolationType;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->exp5Out:Lcom/prineside/tdi2/enums/InterpolationType;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->circle:Lcom/prineside/tdi2/enums/InterpolationType;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->circleIn:Lcom/prineside/tdi2/enums/InterpolationType;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->circleOut:Lcom/prineside/tdi2/enums/InterpolationType;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->elastic:Lcom/prineside/tdi2/enums/InterpolationType;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->elasticIn:Lcom/prineside/tdi2/enums/InterpolationType;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->elasticOut:Lcom/prineside/tdi2/enums/InterpolationType;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->swing:Lcom/prineside/tdi2/enums/InterpolationType;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->swingIn:Lcom/prineside/tdi2/enums/InterpolationType;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->swingOut:Lcom/prineside/tdi2/enums/InterpolationType;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->bounce:Lcom/prineside/tdi2/enums/InterpolationType;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->bounceIn:Lcom/prineside/tdi2/enums/InterpolationType;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->bounceOut:Lcom/prineside/tdi2/enums/InterpolationType;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static getObject(Lcom/prineside/tdi2/enums/InterpolationType;)Lcom/badlogic/gdx/math/Interpolation;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/InterpolationType;->objects:[Lcom/badlogic/gdx/math/Interpolation;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static getType(Lcom/badlogic/gdx/math/Interpolation;)Lcom/prineside/tdi2/enums/InterpolationType;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/prineside/tdi2/enums/InterpolationType;->objects:[Lcom/badlogic/gdx/math/Interpolation;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    if-ne v1, p0, :cond_0

    sget-object p0, Lcom/prineside/tdi2/enums/InterpolationType;->values:[Lcom/prineside/tdi2/enums/InterpolationType;

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/InterpolationType;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/enums/InterpolationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/enums/InterpolationType;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/enums/InterpolationType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/InterpolationType;->a:[Lcom/prineside/tdi2/enums/InterpolationType;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/enums/InterpolationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/enums/InterpolationType;

    return-object v0
.end method
