.class public final enum Lr4/uu1;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr4/uu1;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lr4/uu1;

.field public static final enum b:Lr4/uu1;

.field public static final enum d:Lr4/uu1;

.field public static final synthetic k:[Lr4/uu1;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lr4/uu1;

    const-string v1, "AD_REQUESTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr4/uu1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr4/uu1;->a:Lr4/uu1;

    new-instance v1, Lr4/uu1;

    const-string v3, "AD_LOADED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lr4/uu1;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lr4/uu1;->b:Lr4/uu1;

    new-instance v3, Lr4/uu1;

    const-string v5, "AD_LOAD_FAILED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lr4/uu1;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lr4/uu1;->d:Lr4/uu1;

    const/4 v5, 0x3

    new-array v5, v5, [Lr4/uu1;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lr4/uu1;->k:[Lr4/uu1;

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

.method public static values()[Lr4/uu1;
    .locals 1

    sget-object v0, Lr4/uu1;->k:[Lr4/uu1;

    invoke-virtual {v0}, [Lr4/uu1;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr4/uu1;

    return-object v0
.end method
