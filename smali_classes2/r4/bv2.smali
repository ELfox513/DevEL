.class public final enum Lr4/bv2;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr4/bv2;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lr4/bv2;

.field public static final enum d:Lr4/bv2;

.field public static final enum k:Lr4/bv2;

.field public static final synthetic p:[Lr4/bv2;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lr4/bv2;

    const-string v1, "HTML"

    const/4 v2, 0x0

    const-string v3, "html"

    invoke-direct {v0, v1, v2, v3}, Lr4/bv2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lr4/bv2;->b:Lr4/bv2;

    new-instance v1, Lr4/bv2;

    const-string v3, "NATIVE"

    const/4 v4, 0x1

    const-string v5, "native"

    invoke-direct {v1, v3, v4, v5}, Lr4/bv2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lr4/bv2;->d:Lr4/bv2;

    new-instance v3, Lr4/bv2;

    const-string v5, "JAVASCRIPT"

    const/4 v6, 0x2

    const-string v7, "javascript"

    invoke-direct {v3, v5, v6, v7}, Lr4/bv2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lr4/bv2;->k:Lr4/bv2;

    const/4 v5, 0x3

    new-array v5, v5, [Lr4/bv2;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lr4/bv2;->p:[Lr4/bv2;

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

    iput-object p3, p0, Lr4/bv2;->a:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lr4/bv2;
    .locals 1

    sget-object v0, Lr4/bv2;->p:[Lr4/bv2;

    invoke-virtual {v0}, [Lr4/bv2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr4/bv2;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/bv2;->a:Ljava/lang/String;

    return-object v0
.end method
