.class public final enum Lr4/wr;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lr4/rm3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr4/wr;",
        ">;",
        "Lr4/rm3;"
    }
.end annotation


# static fields
.field public static final enum b:Lr4/wr;

.field public static final enum d:Lr4/wr;

.field public static final enum k:Lr4/wr;

.field public static final enum p:Lr4/wr;

.field public static final enum q:Lr4/wr;

.field public static final enum r:Lr4/wr;

.field public static final s:Lr4/sm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/sm3<",
            "Lr4/wr;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic t:[Lr4/wr;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lr4/wr;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lr4/wr;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lr4/wr;->b:Lr4/wr;

    new-instance v1, Lr4/wr;

    const-string v3, "CONNECTING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lr4/wr;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lr4/wr;->d:Lr4/wr;

    new-instance v3, Lr4/wr;

    const-string v5, "CONNECTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lr4/wr;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lr4/wr;->k:Lr4/wr;

    new-instance v5, Lr4/wr;

    const-string v7, "DISCONNECTING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lr4/wr;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lr4/wr;->p:Lr4/wr;

    new-instance v7, Lr4/wr;

    const-string v9, "DISCONNECTED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lr4/wr;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lr4/wr;->q:Lr4/wr;

    new-instance v9, Lr4/wr;

    const-string v11, "SUSPENDED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lr4/wr;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lr4/wr;->r:Lr4/wr;

    const/4 v11, 0x6

    new-array v11, v11, [Lr4/wr;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lr4/wr;->t:[Lr4/wr;

    new-instance v0, Lr4/ur;

    invoke-direct {v0}, Lr4/ur;-><init>()V

    sput-object v0, Lr4/wr;->s:Lr4/sm3;

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

    iput p3, p0, Lr4/wr;->a:I

    return-void
.end method

.method public static c(I)Lr4/wr;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lr4/wr;->r:Lr4/wr;

    return-object p0

    :cond_1
    sget-object p0, Lr4/wr;->q:Lr4/wr;

    return-object p0

    :cond_2
    sget-object p0, Lr4/wr;->p:Lr4/wr;

    return-object p0

    :cond_3
    sget-object p0, Lr4/wr;->k:Lr4/wr;

    return-object p0

    :cond_4
    sget-object p0, Lr4/wr;->d:Lr4/wr;

    return-object p0

    :cond_5
    sget-object p0, Lr4/wr;->b:Lr4/wr;

    return-object p0
.end method

.method public static d()Lr4/tm3;
    .locals 1

    sget-object v0, Lr4/vr;->a:Lr4/tm3;

    return-object v0
.end method

.method public static values()[Lr4/wr;
    .locals 1

    sget-object v0, Lr4/wr;->t:[Lr4/wr;

    invoke-virtual {v0}, [Lr4/wr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr4/wr;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lr4/wr;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lr4/wr;->a:I

    return v0
.end method
