.class public final enum Lx5/s;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lx5/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lx5/s;

.field public static final enum d:Lx5/s;

.field public static final enum k:Lx5/s;

.field public static final enum p:Lx5/s;

.field public static final synthetic q:[Lx5/s;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lx5/s;

    const-string v1, "DEVELOPER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lx5/s;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lx5/s;->b:Lx5/s;

    new-instance v1, Lx5/s;

    const-string v4, "USER_SIDELOAD"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lx5/s;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lx5/s;->d:Lx5/s;

    new-instance v4, Lx5/s;

    const-string v6, "TEST_DISTRIBUTION"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lx5/s;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lx5/s;->k:Lx5/s;

    new-instance v6, Lx5/s;

    const-string v8, "APP_STORE"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lx5/s;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lx5/s;->p:Lx5/s;

    new-array v8, v9, [Lx5/s;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Lx5/s;->q:[Lx5/s;

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

    iput p3, p0, Lx5/s;->a:I

    return-void
.end method

.method public static c(Ljava/lang/String;)Lx5/s;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lx5/s;->p:Lx5/s;

    goto :goto_0

    :cond_0
    sget-object p0, Lx5/s;->b:Lx5/s;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lx5/s;
    .locals 1

    const-class v0, Lx5/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lx5/s;

    return-object p0
.end method

.method public static values()[Lx5/s;
    .locals 1

    sget-object v0, Lx5/s;->q:[Lx5/s;

    invoke-virtual {v0}, [Lx5/s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lx5/s;

    return-object v0
.end method


# virtual methods
.method public d()I
    .locals 1

    iget v0, p0, Lx5/s;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lx5/s;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
