.class public final enum Lb5/xb;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb5/xb;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lb5/xb;

.field public static final enum B:Lb5/xb;

.field public static final enum C:Lb5/xb;

.field public static final enum D:Lb5/xb;

.field public static final synthetic E:[Lb5/xb;

.field public static final enum b:Lb5/xb;

.field public static final enum d:Lb5/xb;

.field public static final enum k:Lb5/xb;

.field public static final enum p:Lb5/xb;

.field public static final enum q:Lb5/xb;

.field public static final enum r:Lb5/xb;

.field public static final enum s:Lb5/xb;

.field public static final enum t:Lb5/xb;

.field public static final enum u:Lb5/xb;

.field public static final enum v:Lb5/xb;

.field public static final enum w:Lb5/xb;

.field public static final enum x:Lb5/xb;

.field public static final enum y:Lb5/xb;

.field public static final enum z:Lb5/xb;


# instance fields
.field public final a:Lb5/yb;


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    new-instance v0, Lb5/xb;

    sget-object v1, Lb5/yb;->p:Lb5/yb;

    const-string v2, "DOUBLE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lb5/xb;-><init>(Ljava/lang/String;ILb5/yb;I)V

    sput-object v0, Lb5/xb;->b:Lb5/xb;

    new-instance v1, Lb5/xb;

    sget-object v2, Lb5/yb;->k:Lb5/yb;

    const-string v5, "FLOAT"

    const/4 v6, 0x5

    invoke-direct {v1, v5, v4, v2, v6}, Lb5/xb;-><init>(Ljava/lang/String;ILb5/yb;I)V

    sput-object v1, Lb5/xb;->d:Lb5/xb;

    new-instance v2, Lb5/xb;

    sget-object v5, Lb5/yb;->d:Lb5/yb;

    const-string v7, "INT64"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v5, v3}, Lb5/xb;-><init>(Ljava/lang/String;ILb5/yb;I)V

    sput-object v2, Lb5/xb;->k:Lb5/xb;

    new-instance v7, Lb5/xb;

    const-string v9, "UINT64"

    const/4 v10, 0x3

    invoke-direct {v7, v9, v10, v5, v3}, Lb5/xb;-><init>(Ljava/lang/String;ILb5/yb;I)V

    sput-object v7, Lb5/xb;->p:Lb5/xb;

    new-instance v9, Lb5/xb;

    sget-object v11, Lb5/yb;->b:Lb5/yb;

    const-string v12, "INT32"

    const/4 v13, 0x4

    invoke-direct {v9, v12, v13, v11, v3}, Lb5/xb;-><init>(Ljava/lang/String;ILb5/yb;I)V

    sput-object v9, Lb5/xb;->q:Lb5/xb;

    new-instance v12, Lb5/xb;

    const-string v14, "FIXED64"

    invoke-direct {v12, v14, v6, v5, v4}, Lb5/xb;-><init>(Ljava/lang/String;ILb5/yb;I)V

    sput-object v12, Lb5/xb;->r:Lb5/xb;

    new-instance v14, Lb5/xb;

    const-string v15, "FIXED32"

    const/4 v13, 0x6

    invoke-direct {v14, v15, v13, v11, v6}, Lb5/xb;-><init>(Ljava/lang/String;ILb5/yb;I)V

    sput-object v14, Lb5/xb;->s:Lb5/xb;

    new-instance v15, Lb5/xb;

    sget-object v13, Lb5/yb;->q:Lb5/yb;

    const-string v4, "BOOL"

    const/4 v6, 0x7

    invoke-direct {v15, v4, v6, v13, v3}, Lb5/xb;-><init>(Ljava/lang/String;ILb5/yb;I)V

    sput-object v15, Lb5/xb;->t:Lb5/xb;

    new-instance v4, Lb5/xb;

    sget-object v13, Lb5/yb;->r:Lb5/yb;

    const-string v6, "STRING"

    const/16 v3, 0x8

    invoke-direct {v4, v6, v3, v13, v8}, Lb5/xb;-><init>(Ljava/lang/String;ILb5/yb;I)V

    sput-object v4, Lb5/xb;->u:Lb5/xb;

    new-instance v6, Lb5/xb;

    sget-object v13, Lb5/yb;->u:Lb5/yb;

    const-string v3, "GROUP"

    const/16 v8, 0x9

    invoke-direct {v6, v3, v8, v13, v10}, Lb5/xb;-><init>(Ljava/lang/String;ILb5/yb;I)V

    sput-object v6, Lb5/xb;->v:Lb5/xb;

    new-instance v3, Lb5/xb;

    const-string v8, "MESSAGE"

    const/16 v10, 0xa

    move-object/from16 v16, v6

    const/4 v6, 0x2

    invoke-direct {v3, v8, v10, v13, v6}, Lb5/xb;-><init>(Ljava/lang/String;ILb5/yb;I)V

    sput-object v3, Lb5/xb;->w:Lb5/xb;

    new-instance v8, Lb5/xb;

    sget-object v13, Lb5/yb;->s:Lb5/yb;

    const-string v10, "BYTES"

    move-object/from16 v17, v3

    const/16 v3, 0xb

    invoke-direct {v8, v10, v3, v13, v6}, Lb5/xb;-><init>(Ljava/lang/String;ILb5/yb;I)V

    sput-object v8, Lb5/xb;->x:Lb5/xb;

    new-instance v6, Lb5/xb;

    const-string v10, "UINT32"

    const/16 v13, 0xc

    const/4 v3, 0x0

    invoke-direct {v6, v10, v13, v11, v3}, Lb5/xb;-><init>(Ljava/lang/String;ILb5/yb;I)V

    sput-object v6, Lb5/xb;->y:Lb5/xb;

    new-instance v10, Lb5/xb;

    sget-object v13, Lb5/yb;->t:Lb5/yb;

    move-object/from16 v18, v6

    const-string v6, "ENUM"

    move-object/from16 v19, v8

    const/16 v8, 0xd

    invoke-direct {v10, v6, v8, v13, v3}, Lb5/xb;-><init>(Ljava/lang/String;ILb5/yb;I)V

    sput-object v10, Lb5/xb;->z:Lb5/xb;

    new-instance v3, Lb5/xb;

    const-string v6, "SFIXED32"

    const/16 v13, 0xe

    const/4 v8, 0x5

    invoke-direct {v3, v6, v13, v11, v8}, Lb5/xb;-><init>(Ljava/lang/String;ILb5/yb;I)V

    sput-object v3, Lb5/xb;->A:Lb5/xb;

    new-instance v6, Lb5/xb;

    const-string v8, "SFIXED64"

    const/16 v13, 0xf

    move-object/from16 v20, v3

    const/4 v3, 0x1

    invoke-direct {v6, v8, v13, v5, v3}, Lb5/xb;-><init>(Ljava/lang/String;ILb5/yb;I)V

    sput-object v6, Lb5/xb;->B:Lb5/xb;

    new-instance v3, Lb5/xb;

    const-string v8, "SINT32"

    const/16 v13, 0x10

    move-object/from16 v21, v6

    const/4 v6, 0x0

    invoke-direct {v3, v8, v13, v11, v6}, Lb5/xb;-><init>(Ljava/lang/String;ILb5/yb;I)V

    sput-object v3, Lb5/xb;->C:Lb5/xb;

    new-instance v8, Lb5/xb;

    const-string v11, "SINT64"

    const/16 v13, 0x11

    invoke-direct {v8, v11, v13, v5, v6}, Lb5/xb;-><init>(Ljava/lang/String;ILb5/yb;I)V

    sput-object v8, Lb5/xb;->D:Lb5/xb;

    const/16 v5, 0x12

    new-array v5, v5, [Lb5/xb;

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v7, v5, v0

    const/4 v0, 0x4

    aput-object v9, v5, v0

    const/4 v0, 0x5

    aput-object v12, v5, v0

    const/4 v0, 0x6

    aput-object v14, v5, v0

    const/4 v0, 0x7

    aput-object v15, v5, v0

    const/16 v0, 0x8

    aput-object v4, v5, v0

    const/16 v0, 0x9

    aput-object v16, v5, v0

    const/16 v0, 0xa

    aput-object v17, v5, v0

    const/16 v0, 0xb

    aput-object v19, v5, v0

    const/16 v0, 0xc

    aput-object v18, v5, v0

    const/16 v0, 0xd

    aput-object v10, v5, v0

    const/16 v0, 0xe

    aput-object v20, v5, v0

    const/16 v0, 0xf

    aput-object v21, v5, v0

    const/16 v0, 0x10

    aput-object v3, v5, v0

    aput-object v8, v5, v13

    sput-object v5, Lb5/xb;->E:[Lb5/xb;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILb5/yb;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb5/yb;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lb5/xb;->a:Lb5/yb;

    return-void
.end method

.method public static values()[Lb5/xb;
    .locals 1

    sget-object v0, Lb5/xb;->E:[Lb5/xb;

    invoke-virtual {v0}, [Lb5/xb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb5/xb;

    return-object v0
.end method


# virtual methods
.method public final c()Lb5/yb;
    .locals 1

    iget-object v0, p0, Lb5/xb;->a:Lb5/yb;

    return-object v0
.end method
