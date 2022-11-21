.class public final enum Lw0/s;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lw0/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lw0/s;

.field public static final enum b:Lw0/s;

.field public static final enum d:Lw0/s;

.field public static final enum k:Lw0/s;

.field public static final enum p:Lw0/s;

.field public static final enum q:Lw0/s;

.field public static final synthetic r:[Lw0/s;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lw0/s;

    const-string v1, "ENQUEUED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lw0/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw0/s;->a:Lw0/s;

    new-instance v1, Lw0/s;

    const-string v3, "RUNNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lw0/s;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lw0/s;->b:Lw0/s;

    new-instance v3, Lw0/s;

    const-string v5, "SUCCEEDED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lw0/s;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lw0/s;->d:Lw0/s;

    new-instance v5, Lw0/s;

    const-string v7, "FAILED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lw0/s;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lw0/s;->k:Lw0/s;

    new-instance v7, Lw0/s;

    const-string v9, "BLOCKED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lw0/s;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lw0/s;->p:Lw0/s;

    new-instance v9, Lw0/s;

    const-string v11, "CANCELLED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lw0/s;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lw0/s;->q:Lw0/s;

    const/4 v11, 0x6

    new-array v11, v11, [Lw0/s;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lw0/s;->r:[Lw0/s;

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

.method public static valueOf(Ljava/lang/String;)Lw0/s;
    .locals 1

    const-class v0, Lw0/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lw0/s;

    return-object p0
.end method

.method public static values()[Lw0/s;
    .locals 1

    sget-object v0, Lw0/s;->r:[Lw0/s;

    invoke-virtual {v0}, [Lw0/s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw0/s;

    return-object v0
.end method


# virtual methods
.method public c()Z
    .locals 1

    sget-object v0, Lw0/s;->d:Lw0/s;

    if-eq p0, v0, :cond_1

    sget-object v0, Lw0/s;->k:Lw0/s;

    if-eq p0, v0, :cond_1

    sget-object v0, Lw0/s;->q:Lw0/s;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
