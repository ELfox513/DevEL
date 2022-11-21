.class public final enum Ly4/r0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ly4/r0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ly4/r0;

.field public static final enum b:Ly4/r0;

.field public static final enum d:Ly4/r0;

.field public static final enum k:Ly4/r0;

.field public static final enum p:Ly4/r0;

.field public static final synthetic q:[Ly4/r0;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Ly4/r0;

    const-string v1, "DEBUG_PARAM_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ly4/r0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly4/r0;->a:Ly4/r0;

    new-instance v1, Ly4/r0;

    const-string v3, "ALWAYS_SHOW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ly4/r0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ly4/r0;->b:Ly4/r0;

    new-instance v3, Ly4/r0;

    const-string v5, "GEO_OVERRIDE_EEA"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ly4/r0;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ly4/r0;->d:Ly4/r0;

    new-instance v5, Ly4/r0;

    const-string v7, "GEO_OVERRIDE_NON_EEA"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ly4/r0;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ly4/r0;->k:Ly4/r0;

    new-instance v7, Ly4/r0;

    const-string v9, "PREVIEWING_DEBUG_MESSAGES"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ly4/r0;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ly4/r0;->p:Ly4/r0;

    const/4 v9, 0x5

    new-array v9, v9, [Ly4/r0;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Ly4/r0;->q:[Ly4/r0;

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

.method public static values()[Ly4/r0;
    .locals 1

    sget-object v0, Ly4/r0;->q:[Ly4/r0;

    invoke-virtual {v0}, [Ly4/r0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ly4/r0;

    return-object v0
.end method
