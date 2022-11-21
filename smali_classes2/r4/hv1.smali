.class public final enum Lr4/hv1;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr4/hv1;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lr4/hv1;

.field public static final enum b:Lr4/hv1;

.field public static final enum d:Lr4/hv1;

.field public static final enum k:Lr4/hv1;

.field public static final synthetic p:[Lr4/hv1;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lr4/hv1;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr4/hv1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr4/hv1;->a:Lr4/hv1;

    new-instance v1, Lr4/hv1;

    const-string v3, "API"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lr4/hv1;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lr4/hv1;->b:Lr4/hv1;

    new-instance v3, Lr4/hv1;

    const-string v5, "GESTURE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lr4/hv1;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lr4/hv1;->d:Lr4/hv1;

    new-instance v5, Lr4/hv1;

    const-string v7, "DEBUG_MENU"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lr4/hv1;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lr4/hv1;->k:Lr4/hv1;

    const/4 v7, 0x4

    new-array v7, v7, [Lr4/hv1;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lr4/hv1;->p:[Lr4/hv1;

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

.method public static values()[Lr4/hv1;
    .locals 1

    sget-object v0, Lr4/hv1;->p:[Lr4/hv1;

    invoke-virtual {v0}, [Lr4/hv1;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr4/hv1;

    return-object v0
.end method
